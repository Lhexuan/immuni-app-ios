// AnimationView+Utils.swift
// Copyright (C) 2020 Presidenza del Consiglio dei Ministri.
// Please refer to the AUTHORS file for more information.
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Affero General Public License for more details.
// You should have received a copy of the GNU Affero General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.

import Lottie

extension AnimationView {
  /// Play animation if possible accessibility wise.
  /// - note: this won't automatically be checked when the app returns from background.
  func playIfPossible() {
    guard !UIAccessibility.isReduceMotionEnabled else {
      self.stop()
      self.currentProgress = 1
      return
    }
    if !self.isAnimationPlaying {
      self.play()
    }
  }
}

/// Enum containing all the animations name of the app.
enum AnimationAsset: String, CaseIterable, Equatable {
  case appsetupLoader
  case cardDoctor
  case cardPerson
  case confirmationCheck
  case contactExtended
  case hiw1 = "hiw_1"
  case hiw2 = "hiw_2"
  case hiw3 = "hiw_3"
  case hiw4 = "hiw_4"
  case hiw5 = "hiw_5"
  case loader
  case shieldBackground
  case shieldCheckmark
  case shieldDisabled
}

extension AnimationAsset {
  /// An helper to get the Animation object related to the `AnimationAsset` statically computed.
  /// Check  `PreloadAssets` action for better documentation.
  var animation: Animation? {
    switch self {
    case .appsetupLoader:
      return AnimationAsset.appsetupLoaderAnimation
    case .cardDoctor:
      return AnimationAsset.cardDoctorAnimation
    case .cardPerson:
      return AnimationAsset.cardPersonAnimation
    case .confirmationCheck:
      return AnimationAsset.confirmationCheckAnimation
    case .contactExtended:
      return AnimationAsset.contactExtendedAnimation
    case .hiw1:
      return AnimationAsset.hiw1Animation
    case .hiw2:
      return AnimationAsset.hiw2Animation
    case .hiw3:
      return AnimationAsset.hiw3Animation
    case .hiw4:
      return AnimationAsset.hiw4Animation
    case .hiw5:
      return AnimationAsset.hiw5Animation
    case .loader:
      return AnimationAsset.loaderAnimation
    case .shieldBackground:
      return AnimationAsset.shieldBackgroundAnimation
    case .shieldCheckmark:
      return AnimationAsset.shieldCheckmarkAnimation
    case .shieldDisabled:
      return AnimationAsset.shieldDisabledAnimation
    }
  }

  static let appsetupLoaderAnimation = Animation.named(AnimationAsset.appsetupLoader.rawValue)
  static let cardDoctorAnimation = Animation.named(AnimationAsset.cardDoctor.rawValue)
  static let cardPersonAnimation = Animation.named(AnimationAsset.cardPerson.rawValue)
  static let confirmationCheckAnimation = Animation.named(AnimationAsset.confirmationCheck.rawValue)
  static let contactExtendedAnimation = Animation.named(AnimationAsset.contactExtended.rawValue)
  static let hiw1Animation = Animation.named(AnimationAsset.hiw1.rawValue)
  static let hiw2Animation = Animation.named(AnimationAsset.hiw2.rawValue)
  static let hiw3Animation = Animation.named(AnimationAsset.hiw3.rawValue)
  static let hiw4Animation = Animation.named(AnimationAsset.hiw4.rawValue)
  static let hiw5Animation = Animation.named(AnimationAsset.hiw5.rawValue)
  static let loaderAnimation = Animation.named(AnimationAsset.loader.rawValue)
  static let shieldBackgroundAnimation = Animation.named(AnimationAsset.shieldBackground.rawValue)
  static let shieldCheckmarkAnimation = Animation.named(AnimationAsset.shieldCheckmark.rawValue)
  static let shieldDisabledAnimation = Animation.named(AnimationAsset.shieldDisabled.rawValue)
}
