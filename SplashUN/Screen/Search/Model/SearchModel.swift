//
//  SearchModel.swift
//  SplashUN
//
//  Created by 이병현 on 2022/10/27.
//

import UIKit

struct SearchPhoto: Codable, Hashable {
    let total, totalPages: Int
    let results: [Photo]
    
    enum CodingKeys: String, CodingKey {
        case total
        case totalPages = "total_pages"
        case results
    }
}

struct Photo: Codable, Hashable {
    let id: String
    let urls: Urls
    let likes: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case urls, likes
    }
}

struct Urls: Codable, Hashable {
    let raw, full, regular, small: String
    let thumb, smallS3: String
}
