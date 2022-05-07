//
//  ContentModel.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/07.
//


import Foundation


struct ContentModel: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var category: String
    var date: String
    var data: [String]
    var imageName: String
    var example: Bool
    
    
}
