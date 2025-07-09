void RenderInterface() {
    if (UI::Begin("Extractor", UI::WindowFlags::AlwaysAutoResize)) {
        UI::Text("""
Extract the different block properties to a file.
OOPS: There are a ton of blocks that crash the
game  when accessing some parts of their properties.
Everything in the 'blocklist.as' file crash when 
accessing one of those specific pillar properties.
        """);
        UI::Separator();
        if (UI::Button("Extract", vec2(300, 70))) {
            Extractor::Extract();
        }
        UI::Text("Current Block: " + currentBlockName);
    }
    UI::End();
}


void Main() {
    
}