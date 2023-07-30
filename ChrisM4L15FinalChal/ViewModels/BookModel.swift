//
//  BookModel.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        self.books = DataService.getLocalData()
    }
    
}
