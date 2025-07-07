namespace Extractor {
    /* ************************************ */
    class BlockProperties {
        string type;

        string name;
        string description;
        string collection;
        string author;

        nat3 size;

        array<string> pillar_placedPillarBlockInfo_Name;
        array<string> pillar_placedPillarBlockInfo_Author;
        array<nat3> pillar_placedPillarBlockInfo_Size;

        string waypointType;
        string direction;
        string iconQuarterRotationY;
        string catalogPosition;
        string pageName;
    }
    array<BlockProperties> indexedBlocksProperties;
    array<CGameCtnBlockInfo@> indexedBlocks;

    // ----------- //

    class ItemProperties {
        string type;

        string name;
        string description;
        string collection;
        string author;

        array<vec3> pivotPositions;
        array<quat> pivotRotations;

        nat3 size; // OOPS: Size does not exist for Items...
        string cardinalDir; // Items do not have a cardinal directions

        string waypointType;

        nat3   size;
        string iconQuarterRotationY;
        string catalogPosition;
        string pageName;
    }

    array<CGameItemModel@> indexedItems;
    array<ItemProperties>  indexedItemsProperties;

    /* ************************************ */


    void Extract() {
        if (GetApp().Editor is null) {
            log("The editor is null, meaning the 'inventory' is not avalible, please open the editor before running this script.");
            NotifyWarn("Please open the editor before running this script.");
            return;
        }

        startnew(InventoryPerparation);
    }


    void InventoryPerparation() {
        log("starting inventory preparation...");

        CGameCtnApp@                 app       = GetApp();
        CGameCtnEditorCommon@        editor    = cast<CGameCtnEditorCommon@>(app.Editor);
        CGameEditorPluginMapMapType@ pmt       = editor.PluginMapType;
        CGameEditorGenericInventory@ inventory = pmt.Inventory;

        /* BLOCKS : RootNodes[1] */
        if (inventory.RootNodes.Length > 1) {
            auto blocksNode = cast<CGameCtnArticleNodeDirectory@>(inventory.RootNodes[1]);
            if (blocksNode !is null) {
                ExploreBlockNode(blocksNode);
            } else {
                log("RootNodes[1] did not contain a directory (blocks).");
            }
        } else {
            log("Inventory has fewer than 2 root nodes; blocks folder missing?");
        }

        /* ITEMS : RootNodes[3] */
        if (inventory.RootNodes.Length > 3) {
            auto itemsNode = cast<CGameCtnArticleNodeDirectory@>(inventory.RootNodes[3]);
            if (itemsNode !is null) {
                ExploreItemNode(itemsNode);
            } else {
                log("RootNodes[2] did not contain a directory (items).");
            }
        } else {
            log("Inventory has fewer than 3 root nodes; items folder missing?");
        }

        ProcessIndexedBlocks();
        ProcessIndexedItems();
        SaveToJsonFile();
        log("Finished processing blocks and items.");


        // All ROOT NODES:

        // RootNodes[0] - "Blocks"
        // RootNodes[1] - "Blocks" (from what I can tell, [0] and [1] are the same)
        // RootNodes[2] - "Stadium Grass Block"
        // RootNodes[3] - "Items"
        // RootNodes[4] - "Macroblocks
        // RootNodes[5] - "" (Empty Node)
        // RootNodes[6] - "" (Empty Node)
        // RootNodes[7] - "" (Empty Node)
        // RootNodes[8] - "" (Empty Node)
        // RootNodes[9] - "Scripts"
    }


    void ExploreBlockNode(CGameCtnArticleNodeDirectory@ parentNode, string _folder = "") {
        for (uint i = 0; i < parentNode.ChildNodes.Length; i++) {
            auto node = parentNode.ChildNodes[i];
            if (node.IsDirectory) {
                ExploreBlockNode(cast<CGameCtnArticleNodeDirectory@>(node), _folder + node.Name + "/");
            } else {
                auto ana = cast<CGameCtnArticleNodeArticle@>(node);
                if (ana.Article is null || ana.Article.IdName.ToLower().EndsWith("customblock")) { continue; }

                auto block = cast<CGameCtnBlockInfo@>(ana.Article.LoadedNod);

                if (block is null) { continue; }
                indexedBlocks.InsertLast(block);
            }
        }
    }

    void ExploreItemNode(CGameCtnArticleNodeDirectory@ parentNode, string _folder = "") {
        for (uint i = 0; i < parentNode.ChildNodes.Length; i++) {
            auto node = parentNode.ChildNodes[i];
            if (node.IsDirectory) { ExploreItemNode(cast<CGameCtnArticleNodeDirectory@>(node), _folder + node.Name + "/"); continue; }

            auto ana = cast<CGameCtnArticleNodeArticle@>(node);
            if (ana.Article is null) continue;

            auto item = cast<CGameItemModel@>(ana.Article.LoadedNod);
            if (item is null) continue;
            indexedItems.InsertLast(item);
        }
    }

    void ProcessIndexedBlocks() {
        log("Processing indexed blocks...");
    
        for (uint i = 0; i < indexedBlocks.Length; i++) {
            auto block = indexedBlocks[i];
            if (block is null) { continue; }
    
            BlockProperties blockProperties;

            blockProperties.type = "Block";
    
            blockProperties.name = block.Name;
            blockProperties.description = block.Description;
            blockProperties.collection = block.CollectionId_Text;
            blockProperties.author = block.Author.GetName();
    
            if (block.VariantBaseAir !is null) {
                blockProperties.size = block.VariantBaseAir.Size;
            } else if (block.VariantBaseGround !is null) {
                blockProperties.size = block.VariantBaseGround.Size;
            } else {
                // blockProperties.size = nat3(0, 0, 0);
            }

            if (block.VariantBaseAir !is null) {
                switch (block.VariantBaseAir.CardinalDir) {
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::North:
                        blockProperties.direction = "North";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::East:
                        blockProperties.direction = "East";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::South:
                        blockProperties.direction = "South";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::West:
                        blockProperties.direction = "West";
                        break;
                    default:
                        blockProperties.direction = "Unknown";
                        break;
                }
            } else if (block.VariantBaseGround !is null) {
                switch (block.VariantBaseGround.CardinalDir) {
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::North:
                        blockProperties.direction = "North";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::East:
                        blockProperties.direction = "East";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::South:
                        blockProperties.direction = "South";
                        break;
                    case CGameCtnBlockInfoVariant::ECardinalDirEnum::West:
                        blockProperties.direction = "West";
                        break;
                    default:
                        blockProperties.direction = "Unknown";
                        break;
                }
            } else {
                blockProperties.direction = "Unknown";
            }



            blockProperties.pillar_placedPillarBlockInfo_Author = array<string>();
            blockProperties.pillar_placedPillarBlockInfo_Name = array<string>();
            blockProperties.pillar_placedPillarBlockInfo_Size = array<nat3>();



            switch (block.EdWaypointType) {
                case CGameCtnBlockInfo::EWayPointType::Start:
                    blockProperties.waypointType = "Start";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Finish:
                    blockProperties.waypointType = "Finish";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Checkpoint:
                    blockProperties.waypointType = "Checkpoint";
                    break;
                case CGameCtnBlockInfo::EWayPointType::None:
                    blockProperties.waypointType = "None";
                    break;
                case CGameCtnBlockInfo::EWayPointType::StartFinish:
                    blockProperties.waypointType = "StartFinish";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Dispenser:
                    blockProperties.waypointType = "Dispenser";
                    break;
                default:
                    blockProperties.waypointType = "Unknown";
                    break;
            }

            blockProperties.iconQuarterRotationY = tostring(block.IconQuarterRotationY);
            blockProperties.catalogPosition = tostring(block.CatalogPosition);
            blockProperties.pageName = block.PageName;
    
            indexedBlocksProperties.InsertLast(blockProperties);
        }
    }

    void ProcessIndexedItems() {
        log("Processing indexed items...");

        for (uint i = 0; i < indexedItems.Length; i++) {
            auto item = indexedItems[i];
            if (item is null) continue;

            ItemProperties props;

            props.type        = "Item"; // This is a type flag to distinguish between blocks and items

            props.name        = item.Name;
            props.description = item.Description;
            props.collection  = item.CollectionId_Text;
            props.author      = item.Author.GetName();

            MwFastBuffer<vec3> pivotpos = item.DefaultPlacementParam_Head.PivotPositions;
            array<vec3> pivot;
            for (uint j = 0; j < pivotpos.Length; j++) {
                vec3 p = vec3(int(pivotpos[j].x), int(pivotpos[j].y), int(pivotpos[j].z));
                pivot.InsertLast(p);
            }
            props.pivotPositions = pivot;

            MwFastBuffer<quat> pivotrot = item.DefaultPlacementParam_Head.PivotRotations;
            array<quat> pivotRot;
            for (uint j = 0; j < pivotrot.Length; j++) {
                quat r = quat(int(pivotrot[j].x), int(pivotrot[j].y), int(pivotrot[j].z), int(pivotrot[j].w));
                pivotRot.InsertLast(r);
            }
            props.pivotRotations = pivotRot;

            props.size                 = item.Size; // OOPS: Size does not exist for Items...
            props.cardinalDir          = "Unknown"; // Items do not have a cardinal directions

            props.cardinalDir = item.DefaultPlacementParam_Head.PlacementClass.WorldDir; // find out what this <----- is xdd

            switch (item.WaypointType) {
                case CGameItemModel::EWayPointType::Start:
                    props.waypointType = "Start";
                    break;
                case CGameItemModel::EWayPointType::Finish:
                    props.waypointType = "Finish";
                    break;
                case CGameItemModel::EWayPointType::Checkpoint:
                    props.waypointType = "Checkpoint";
                    break;
                case CGameItemModel::EWayPointType::None:
                    props.waypointType = "None";
                    break;
                case CGameItemModel::EWayPointType::StartFinish:
                    props.waypointType = "StartFinish";
                    break;
                case CGameItemModel::EWayPointType::Dispenser:
                    props.waypointType = "Dispenser";
                    break;
                default:
                    props.waypointType = "Unknown";
                    break;
            }

            props.iconQuarterRotationY = tostring(item.IconQuarterRotationY);
            props.catalogPosition      = tostring(item.CatalogPosition);
            props.pageName             = item.PageName;

            indexedItemsProperties.InsertLast(props);
        }
    }


    string saveLocation = IO::FromStorageFolder("Extractor/BlocksProperties.json");
    void SaveToJsonFile() {
        Json::Value root = Json::Object();

        Json::Value blocksArr = Json::Array();
        for (uint i = 0; i < indexedBlocksProperties.Length; i++) {
            auto bp = indexedBlocksProperties[i];
            Json::Value j = Json::Object();

            j["type"]        = "Block";
            j["name"]        = bp.name;
            j["description"] = bp.description;
            j["collection"]  = bp.collection;
            j["author"]      = bp.author;

            Json::Value sz = Json::Object();
                sz["x"] = bp.size.x;
                sz["y"] = bp.size.y;
                sz["z"] = bp.size.z;
            j["size"] = sz;

            Json::Value normalized_size = Json::Object();
            normalized_size["x"] = bp.size.x;
            normalized_size["y"] = bp.size.y;
            normalized_size["z"] = bp.size.z;
            j["size"] = normalized_size;

            Json::Value pillar = Json::Array();
            for (uint i = 0; i < bp.pillar_placedPillarBlockInfo_Name.Length; i++) {
                Json::Value pillarEntry = Json::Object();
                pillarEntry["name"]   = bp.pillar_placedPillarBlockInfo_Name[i];
                pillarEntry["author"] = bp.pillar_placedPillarBlockInfo_Author[i];
                
                Json::Value pillarSize = Json::Object();
                pillarSize["x"]     = bp.pillar_placedPillarBlockInfo_Size[i].x;
                pillarSize["y"]     = bp.pillar_placedPillarBlockInfo_Size[i].y;
                pillarSize["z"]     = bp.pillar_placedPillarBlockInfo_Size[i].z;
                pillarEntry["size"] = pillarSize;
                
                pillar.Add(pillarEntry);
            }
            j["pillar"] = pillar;

            j["edWaypointType"]       = bp.waypointType;
            j["direction"]            = bp.direction;
            j["iconQuarterRotationY"] = bp.iconQuarterRotationY;
            j["catalogPosition"]      = bp.catalogPosition;
            j["pageName"]             = bp.pageName;

            blocksArr.Add(j);
        }
        root["Blocks"] = blocksArr;

        /*  ITEMS  */
        Json::Value itemsArr = Json::Array();
        for (uint i = 0; i < indexedItemsProperties.Length; i++) {
            auto ip = indexedItemsProperties[i];
            Json::Value j = Json::Object();

            j["type"]        = "Item";
            j["name"]        = ip.name;
            j["description"] = ip.description;
            j["collection"]  = ip.collection;
            j["author"]      = ip.author;

            Json::Value sz = Json::Object();
                sz["x"] = ip.size.x;
                sz["y"] = ip.size.y;
                sz["z"] = ip.size.z;
            j["size"] = sz;

            j["iconQuarterRotationY"] = ip.iconQuarterRotationY;
            j["catalogPosition"]      = ip.catalogPosition;
            j["pageName"]             = ip.pageName;

            itemsArr.Add(j);
        }
        root["Items"] = itemsArr;

        string folder = IO::FromStorageFolder("Extractor");
        if (!IO::FolderExists(folder)) IO::CreateFolder(folder);

        string filePath = folder + "/BlocksAndItemsProperties.json";
        Json::ToFile(filePath, root, true);
        log("Saved blocks + items (with type flag) to " + filePath);
    }

}