//
//  ContentView.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var model = BookModel()
    
    
    var body: some View {
       
            
            ScrollView {
            //    GeometryReader {geo in
                VStack {
                    Text("My Library")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top], 10)
                   
                    ForEach(model.books) {item in
                        ZStack {
                            Rectangle()
                                .cornerRadius(15)
                                .padding([.leading, .trailing, .bottom], 20)
                                .foregroundColor(.white)
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 5, x: -5, y:5)
                            VStack (alignment: .leading) {
                                Text(item.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding([.leading], 35)
                                    .padding([.top])
                                    .padding([.bottom], 1)
                                Text(item.author)
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                    .italic()
                                    .padding([.leading], 35)
                                
                                Image("cover" + String(item.id))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding([.bottom, .leading, .trailing], 40)
                                
                            }
                        }
                    }
                        
                    
                }.environmentObject(model)
                    
                }
                
    
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
