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
  @Binding var currentPage: Int

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIViewController(context: Context) -> UIPageViewController {
    let pageVC = UIPageViewController(
      transitionStyle: .scroll,
      navigationOrientation: .horizontal)
    pageVC.dataSource = context.coordinator
    pageVC.delegate = context.coordinator

    return pageVC
  }

  func updateUIViewController(_ pageVC: UIPageViewController, context: Context) {
    pageVC.setViewControllers(
      [context.coordinator.controllers[currentPage]],
      direction: .forward,
      animated: true)
  }

  class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    var parent: PageViewController
    var controllers: [UIViewController] = []
    var pageCount: Int { controllers.count }

    init(_ pageVC: PageViewController) {
      self.parent = pageVC
      self.controllers = parent.pages.map { UIHostingController(rootView: $0) }
    }

    func pageViewController(
      _ pageViewController: UIPageViewController,
      viewControllerBefore viewController: UIViewController
    ) -> UIViewController? {
      guard pageCount > 1,
            let index = controllers.firstIndex(of: viewController)
      else { return nil }

      if index == 0 {
        return controllers.last
      }
      return controllers[index-1]
    }

    func pageViewController(
      _ pageViewController: UIPageViewController,
      viewControllerAfter viewController: UIViewController
    ) -> UIViewController? {
      guard pageCount > 1,
            let index = controllers.firstIndex(of: viewController)
      else { return nil }

      if index + 1 == controllers.endIndex {
        return controllers.first
      }
      return controllers[index+1]
    }

    func pageViewController(
      _ pageViewController: UIPageViewController,
      didFinishAnimating finished: Bool,
      previousViewControllers: [UIViewController],
      transitionCompleted completed: Bool
    ) {
      guard completed,
            let visibleVC = pageViewController.viewControllers?.first,
            let index = controllers.firstIndex(of: visibleVC)
      else { return }

      parent.currentPage = index
    }
  }
}
