//
//  PageViewController.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 6/12/24.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {

  var pages: [Page]

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIViewController(context: Context) -> UIPageViewController {
    let pageVC = UIPageViewController(
      transitionStyle: .scroll,
      navigationOrientation: .horizontal)

    return pageVC
  }

  func updateUIViewController(_ pageVC: UIPageViewController, context: Context) {
    pageVC.setViewControllers(
      [context.coordinator.controllers[0]],
      direction: .forward,
      animated: true)
  }

  class Coordinator: NSObject {
    var parent: PageViewController
    var controllers: [UIViewController] = []

    init(_ pageVC: PageViewController) {
      self.parent = pageVC
      self.controllers = parent.pages.map { UIHostingController(rootView: $0) }
    }
  }
}
