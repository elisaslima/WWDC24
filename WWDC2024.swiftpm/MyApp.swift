import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    init() {
        let cfurl = Bundle.main.url(forResource: "SingleDay-Regular", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(cfurl as CFURL, CTFontManagerScope.process, nil)
        
        let cfurlTwo = Bundle.main.url(forResource: "Silom", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(cfurlTwo as CFURL, CTFontManagerScope.process, nil)
        
        let appear = UINavigationBarAppearance()

        let atters: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Silom", size: 26)!
        ]
        appear.largeTitleTextAttributes = atters
        appear.titleTextAttributes = atters
        UINavigationBar.appearance().standardAppearance = appear
        UINavigationBar.appearance().compactAppearance = appear
        UINavigationBar.appearance().scrollEdgeAppearance = appear
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
