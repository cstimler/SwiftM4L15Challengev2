//
//  StoryView.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import SwiftUI

struct StoryView: View {
    
  //  var modelArray = BookModel()
    
    @EnvironmentObject var book: Book
   
    var body: some View {
        
        //var story = modelArray.books[2]
       
    //    NavigationView {
            TabView {
                
                ForEach(0..<book.content.count, id: \.self) {index in
                    VStack {
                        Text(book.content[index])
                            .padding()
                        Text(String(index+1))
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode:.never)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        
 //   }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        
        let dummy = BookModel()
        
        StoryView().environmentObject(BookModel().books[2])
    }
}
