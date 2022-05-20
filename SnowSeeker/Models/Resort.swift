//
//  Resort.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import Foundation


struct Resort: Identifiable, Codable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
}
