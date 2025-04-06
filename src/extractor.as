namespace Extractor {
    /** 
     * The main extration logic to get the actual block properties. Full block data is returned f rom inv_explorer.
     */

    class BlockProperties {
        string name;
        string description;
        string collection;
        string author;

        nat3 size;

        array<string> pillar_placedPillarBlockInfo_Name;
        array<string> pillar_placedPillarBlockInfo_Author;
        array<nat3> pillar_placedPillarBlockInfo_Size;

        string edWaypointType;
        string direction;
        string iconQuarterRotationY;
        string catalogPosition;
        string pageName;
    }
    array<BlockProperties> indexedBlocksProperties;


    

    void Extract() {
        if (GetApp().Editor is null) {
            log("The editor is null, meaning the 'inventory' is not avalible, please open the editor before running this script.");
            NotifyWarn("Please open the editor before running this script.");
            return;
        }

        startnew(InventoryPerparation);
    }

    array<CGameCtnBlockInfo@> indexedBlocks;

    void InventoryPerparation() {
        log("starting inventory preparation...");

        CGameCtnApp@ app = GetApp();
        CGameCtnEditorCommon@ editor = cast<CGameCtnEditorCommon@>(app.Editor);
        CGameEditorPluginMapMapType@ pmt = editor.PluginMapType;
        CGameEditorGenericInventory@ inventory = pmt.Inventory;

        CGameCtnArticleNodeDirectory@ blocksNode = cast<CGameCtnArticleNodeDirectory@>(inventory.RootNodes[1]);

        ExploreNode(blocksNode);
        ProcessIndexedBlocks();
        SaveToJsonFile();
        log("Finished processing blocks.");
    }

    void ExploreNode(CGameCtnArticleNodeDirectory@ parentNode, string _folder = "") {
        for (uint i = 0; i < parentNode.ChildNodes.Length; i++) {
            auto node = parentNode.ChildNodes[i];
            if (node.IsDirectory) {
                ExploreNode(cast<CGameCtnArticleNodeDirectory@>(node), _folder + node.Name + "/");
            } else {
                auto ana = cast<CGameCtnArticleNodeArticle@>(node);
                if (ana.Article is null || ana.Article.IdName.ToLower().EndsWith("customblock")) {
                    continue;
                }

                auto block = cast<CGameCtnBlockInfo@>(ana.Article.LoadedNod);
                if (block is null) { continue; }

                
                if (block.Name == "RoadWaterStraight") print(block.VariantBaseAir.Size.ToString());

                indexedBlocks.InsertLast(block);
            }
        }
    }

    void ProcessIndexedBlocks() {
        log("Processing indexed blocks...");
    
        for (uint i = 0; i < indexedBlocks.Length; i++) {
            auto block = indexedBlocks[i];
            if (block is null) { continue; }
    
            BlockProperties blockProperties;
    
            blockProperties.name = block.Name;
            blockProperties.description = block.Description;
            blockProperties.collection = block.CollectionId_Text;
            blockProperties.author = block.Author.GetName();
    
            if (block.Name == "RoadWaterStraight") print("aaaaa");
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
                    blockProperties.edWaypointType = "Start";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Finish:
                    blockProperties.edWaypointType = "Finish";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Checkpoint:
                    blockProperties.edWaypointType = "Checkpoint";
                    break;
                case CGameCtnBlockInfo::EWayPointType::None:
                    blockProperties.edWaypointType = "None";
                    break;
                case CGameCtnBlockInfo::EWayPointType::StartFinish:
                    blockProperties.edWaypointType = "StartFinish";
                    break;
                case CGameCtnBlockInfo::EWayPointType::Dispenser:
                    blockProperties.edWaypointType = "Dispenser";
                    break;
                default:
                    blockProperties.edWaypointType = "Unknown";
                    break;
            }

            blockProperties.iconQuarterRotationY = tostring(block.IconQuarterRotationY);
            blockProperties.catalogPosition = tostring(block.CatalogPosition);
            blockProperties.pageName = block.PageName;
    
            indexedBlocksProperties.InsertLast(blockProperties);
        }
    }

    string saveLocation = IO::FromStorageFolder("Extractor/BlocksProperties.json");
    void SaveToJsonFile() {
        Json::Value jsonData = Json::Array();

        for (uint i = 0; i < indexedBlocksProperties.Length; i++) {
            auto blockProperties = indexedBlocksProperties[i];
            Json::Value@ blockJson = Json::Object();
            blockJson["name"] = blockProperties.name;
            
            blockJson["description"] = blockProperties.description;
            blockJson["collection"] = blockProperties.collection;
            blockJson["author"] = blockProperties.author;

            Json::Value normalized_size = Json::Object();
            normalized_size["x"] = blockProperties.size.x;
            normalized_size["y"] = blockProperties.size.y;
            normalized_size["z"] = blockProperties.size.z;
            blockJson["size"] = normalized_size;

            Json::Value pillar = Json::Array();
            for (uint i = 0; i < blockProperties.pillar_placedPillarBlockInfo_Name.Length; i++) {
                Json::Value pillarEntry = Json::Object();
                pillarEntry["name"] = blockProperties.pillar_placedPillarBlockInfo_Name[i];
                pillarEntry["author"] = blockProperties.pillar_placedPillarBlockInfo_Author[i];
                
                Json::Value pillarSize = Json::Object();
                pillarSize["x"] = blockProperties.pillar_placedPillarBlockInfo_Size[i].x;
                pillarSize["y"] = blockProperties.pillar_placedPillarBlockInfo_Size[i].y;
                pillarSize["z"] = blockProperties.pillar_placedPillarBlockInfo_Size[i].z;
                pillarEntry["size"] = pillarSize;
                
                pillar.Add(pillarEntry);
            }
            blockJson["pillar"] = pillar;

            blockJson["edWaypointType"] = blockProperties.edWaypointType;
            blockJson["direction"] = blockProperties.direction;
            blockJson["iconQuarterRotationY"] = blockProperties.iconQuarterRotationY;
            blockJson["catalogPosition"] = blockProperties.catalogPosition;
            blockJson["pageName"] = blockProperties.pageName;

            
            jsonData.Add(blockJson);
        }

        if (!IO::FolderExists(IO::FromStorageFolder("Extractor"))) {
            IO::CreateFolder(IO::FromStorageFolder("Extractor"));
        }
        if (!IO::FileExists(saveLocation)) {
            _IO::File::WriteFile(saveLocation, "");
        }
        Json::ToFile(saveLocation, jsonData, true);
        log("Saved to " + saveLocation);

    }
}