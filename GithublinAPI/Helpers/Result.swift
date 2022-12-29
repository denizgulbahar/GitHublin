//
//  Result.swift
//  Githublin
//
//  Created by Deniz Gülbahar on 17.09.2022.
//

import Foundation


public enum Result<Value> {
    case success(Value)
    case failure(Error)
}

