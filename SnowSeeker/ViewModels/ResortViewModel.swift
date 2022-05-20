//
//  ResortViewModel.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import Foundation


class ResortViewModel: ObservableObject {
    
    @Published var searchText = ""
    @Published var resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    
    
    
    // MARK: - Functions
    
    // MARK: filteredResorts
    func filteredResorts() -> [Resort] {
        if searchText.isEmpty {
            return resorts
        } else {
            return resorts.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
}
