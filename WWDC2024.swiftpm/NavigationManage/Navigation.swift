//
//  Navigation.swift
//
//
//  Created by Ana Elisa Lima on 22/02/24.
//

import SwiftUI

enum screens {
    case presentationView
    case carouselView
    case finalView
}

@available(iOS 17.0, *)
@Observable
class NavigationCoordinator {
  var paths = NavigationPath()
  @ViewBuilder
   func navigate(to Screens: screens) -> some View {
    switch Screens {
    case .presentationView:
      PresentationView()
    case .finalView:
      FinalView()
    case .carouselView:
        Carousel()
    }
  }
 
  func push(_ Screens: screens) {
    paths.append(Screens)
  }

  func pop() {
    paths.removeLast()
  }

  func popToRoot() {
    paths.removeLast(paths.count)
  }
}
