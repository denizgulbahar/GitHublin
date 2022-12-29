//
//  SearchService.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation
import Alamofire

public protocol SearchServiceProtocol {
        
    func fetchSearchResults(searchtext:String, completion: @escaping (Result<SearchRepositoryResponse>) -> Void)
    
}

public class SearchService: SearchServiceProtocol {
    
    public var searchText:String?

    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public func fetchSearchResults(searchtext:String, completion: @escaping (Result<SearchRepositoryResponse>) -> Void) {
        let urlString = searchtext.isEmpty ? "https://api.github.com/search/repositories?q=a":"https://api.github.com/search/repositories?q=\(searchtext)"

            Alamofire.request(urlString).responseData { (response) in
                switch response.result {
                case .success(let data):
                    let decoder = JSONDecoder()
                    do {
                        let response = try decoder.decode(SearchRepositoryResponse.self, from: data)
                        completion(.success(response))
                    } catch {
                        completion(.failure(Error.serializationError(internal: error)))
                    }
                case .failure(let error):
                    completion(.failure(Error.networkError(internal:error)))
                }
            }
  
    }
}

