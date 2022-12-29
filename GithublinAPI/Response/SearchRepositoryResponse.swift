//
//  GithublinResponse.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation

public struct SearchRepositoryResponse:Decodable {
    
    var items: [Repository]
    
    private enum ItemsCodingKeys: String, CodingKey {
        case items
    }
    

    
    public init(from decoder: Decoder) throws {
        let itemsContainer = try decoder.container(keyedBy: ItemsCodingKeys.self)
        items = try itemsContainer.decode([Repository].self, forKey: .items )
    }
    
}



