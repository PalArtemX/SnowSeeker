//
//  HomeView.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import SwiftUI

struct HomeView: View {
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    var body: some View {
        NavigationView {
            List(resorts) { resort in
                NavigationLink {
                    Text(resort.name)
                } label: {
                    ResortRowView(resort: resort)
                }
            }
            .navigationTitle("Resorts")
            
            WelcomeView()
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
