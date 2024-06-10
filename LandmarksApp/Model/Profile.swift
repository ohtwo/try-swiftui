//
//  Profile.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 6/11/24.
//

import Foundation

struct Profile {
  var username: String
  var prefersNotifications = true
  var seasonalPhoto = Season.winter
  var goalDate = Date()

  static let `default` = Profile(username: "ohtwo")

  enum Season: String, CaseIterable, Identifiable {
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "☃️"

    var id: String { rawValue }
  }
}
