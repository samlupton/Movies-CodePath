//
//  Poster.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/13/23.
//

import Foundation

struct MovieSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}
