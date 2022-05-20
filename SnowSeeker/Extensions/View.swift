//
//  View.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import Foundation
import SwiftUI

// MARK: - phoneOnlyNavigationView
extension View {
    @ViewBuilder func phoneOnlyNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            self.navigationViewStyle(.stack)
        } else {
            self
        }
    }
}
