import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    init() {
        let cfurl = Bundle.main.url(forResource: "SingleDay-Regular", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(cfurl as CFURL, CTFontManagerScope.process, nil)
        
        let cfurlTwo = Bundle.main.url(forResource: "Silom", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(cfurlTwo as CFURL, CTFontManagerScope.process, nil)
    }
    
    var body: some Scene {
        WindowGroup {
                if isOnboarding {
                    PresentationView()
                } else {
                    Carousel()
             }
        }
    }
}
