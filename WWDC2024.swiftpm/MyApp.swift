import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
//            ContentView2()
            if isOnboarding {
                PresentationView()
            } else {
                Carousel()
            }  
//                        BiographyView(call: Call(id: 7, navigationTitle: "Kalpana Chawla", scientistImage: "KalpanaChawla", education: "B.E in Aeronautical Engineering (Punjab Engineering College, India), 1982; M.S in Aerospace Engineering (University of Texas at Arlington), 1984; M.S in Mechanical Engineering (1986) and PhD in Aerospace Engineering (1988) from University of Colorado Boulder.", biography: "Kalpana Chawla was born on March 17, 1962 in Karnal (Haryana, India) but her parents later changed her birth date to July 1, 1961 so she could join school. As a little girl, she used to attend air flying clubs with her father and brother. Until she started school, she hadn't been formally named. Her parents called her Montu, but she picked her own name Kalpana meaning 'idea' or 'imagination'. Her passion for aviation led her to study engineering, an uncommon career for women at the time. At 20, after graduating from Punjab Engineering College in Aeronautical Engineering, Kalpana moved to the US to pursue graduate studies.\nIn 1988, after completing her PhD in Aerospace Engineering, she began her career at NASA Ames Research Center, where she did computational research about aircraft take-off and landing concepts (V/STOL). In 1993, she joined Overset Methods, Inc. as vice president and Research Scientist specializing in simulation of moving multiple body problems. In 1994, she was selected for NASA's Astronaut Group 15 and graduated a year later, in 1995, as a Mission Specialist.\nOn November 19, 1997, she flew into space for the first time, as Mission Specialist 1, on STS-87 and became the first woman of Indian descent to go to space.\nUpon 1998, NASA invited Kalpana's secondary school to take part in their Summer Space Experience Program. Each year, the school sent two girls to the Foundation for International Space Education's United Space School in Houston, Texas (USA) and Kalpana would invite them into her home for an Indian dinner. She knew about the necessity of providing science education opportunities for young girls in India and used her position as astronaut to fight for this cause.\nIn 2000, she was selected for STS-107, as Mission Specialist 2, which flew on February 16, 2003. The 16-day mission would end with a fateful accident: during re-entry, the shuttle exploded. All seven astronauts died.\nToday, even twenty one years after the accident, Kalpana still remains as an inspiration to people around the globe: a woman who broke barriers and changed the world with her perseverance and courage.", endingImage: "KalpanaChawla2", subtitle: "Kalpana Chawla and the crew of STS-107"))
        }
    }
}



