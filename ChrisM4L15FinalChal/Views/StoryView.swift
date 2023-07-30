//
//  StoryView.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import SwiftUI

struct StoryView: View {
    
    var modelArray = BookModel()
    
    
    var body: some View {
        
        var story = modelArray.books[2]
       
        TabView {
            
            ForEach(0..<story.content.count, id: \.self) {index in
                VStack {
                    Text(story.content[index])
                        .padding()
                    Text(String(index))
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode:.never)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
