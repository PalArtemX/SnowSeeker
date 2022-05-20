//
//  HomeView.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: ResortViewModel
    
    var body: some View {
        NavigationView {
            List(vm.filteredResorts()) { resort in
                NavigationLink {
                    ResortView(resort: resort)
                } label: {
                    ResortRowView(resort: resort)
                }
            }
            .navigationTitle("Resorts")
            .searchable(text: $vm.searchText)
            
            // for iPad
            WelcomeView()
        }
        .phoneOnlyNavigationView()
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ResortViewModel())
    }
}
