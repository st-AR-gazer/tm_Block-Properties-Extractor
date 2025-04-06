void RenderInterface() {
    if (UI::Begin("Extractor", UI::WindowFlags::AlwaysAutoResize)) {
        UI::Text("""
Extract the different block properties to a file.
        """);
        UI::Separator();
        if (UI::Button("Extract")) {
            Extractor::Extract();
        }
    }
    UI::End();
}


void Main() {
    
}