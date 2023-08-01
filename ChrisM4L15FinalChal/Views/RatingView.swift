//
//  RatingView.swift
//  ChrisM4L15FinalChal
//
//  Created by October2022 on 7/30/23.
//

import SwiftUI

 var dummy1:BookModel = BookModel()

struct RatingView: View {
@EnvironmentObject var book:Book
 @State var unit = 0 // for picker bug
    
  //  @EnvironmentObject var item:Book
    var title = "Amazing Words"
    var image = "cover1"
    @State var labelName = "star"
    
    
    var body: some View {
        
      //  var pass = book
        
     //   @State var selectedIndex = book.rating
        var label = Image(systemName: labelName)
        
        
            GeometryReader {geo in
                VStack (alignment: .leading){
                    
             /*      Text(book.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
              */
                    VStack (alignment: .center) {
                       Spacer()
                        Text("Read Now!")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        NavigationLink(destination:   StoryView()
                                     .environmentObject(book),
                                       label:   {
                            Image("cover" + String(book.id))
                                .resizable()
                                .scaledToFit()
                                .frame(width:geo.size.width/1.5)
                        })
                   //     .environmentObject(book)
                        .navigationBarTitle(book.title)
                                        
                        
                        
                        Text("Mark for Later")
                            .fontWeight(.bold)
                            .padding()
                        
                        Button(action: {
                            
                            book.isFavourite = !book.isFavourite
                            if book.isFavourite {
                            labelName = "star.fill"
                            } else {
                            labelName = "star"
                            }
                     let _ =  print(String(book.isFavourite))
                        }, label: {
                            
                            
                                Image(systemName: labelName)
                                    .foregroundColor(.yellow)
                                    .font(.system(size:40))
                        })
                        
                        
                        
                        
                            
                        Spacer()
                        Text("Rate " + book.title)
                            .fontWeight(.bold)
                        Picker("", selection: $book.rating) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                        }
                        .id(unit)
                        
                        .pickerStyle(.segmented)
                        .frame(width:geo.size.width/1.3)
                        Spacer()
                    }
                    .onAppear {
                        unit = unit + 1
                        if book.isFavourite {
                        labelName = "star.fill"
                        } else {
                        labelName = "star"
                        }
                     //  let _ = print(String(book.rating))
                    }
                    .onDisappear {
                  //      let _ = print("on disappear: " + String(book.rating))
                    }
                    .position(x:geo.size.width/2, y:geo.size.height/2)
                }
            }
        }
        
        
}



struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        
        let dummy1 = BookModel()
        RatingView().environmentObject(dummy1.books[3])
    }
}
