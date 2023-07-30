//
//  Book.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var title:String
    var author: String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
}

