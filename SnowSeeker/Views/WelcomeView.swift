//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker!")
                .font(.largeTitle)
            
            Text("Please select a resort from the left hand menu. Swipe from the left edge to show it.")
                .foregroundColor(.secondary)
        }
    }
}










struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
