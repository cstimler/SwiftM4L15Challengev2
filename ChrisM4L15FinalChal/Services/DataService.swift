//
//  DataService.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        guard pathString != nil else {
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let bookData =  try decoder.decode([Book].self, from: data)
            return bookData
        }
        
        catch {
            print(error)
        }
        
        return [Book]()
    }
    
    
    
}
