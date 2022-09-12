//
//  ContentView.swift
//  mygrocery
//
//  Created by Abdulaziz Albalool on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var groceryitems = ["tomato", "kinder", "pepsi", "shani", "endomie", "cat"]
    @State var plus = ""
    var body: some View {
        
        VStack{
            
            List(groceryitems, id: \.self){ item in
                
                HStack {
                    
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 40)
                Text(item)
                
        
                                
                
                }
            }
            HStack{
                
                
                Button(action:  {
                    groceryitems.append( plus )
                }) {
                    Image(systemName: "plus")
                        .background(Color.green)
                    
                }
                TextField("add your item", text:$plus)
                    .font(.largeTitle)
                    .background(Color.red)
                
                
                
                Button(action:  {
                    groceryitems.append(groceryitems.randomElement() ?? "cat")
                }) {
                    Image(systemName: "questionmark.app.fill")
                        .background(Color.green)
                    
                    
                    Button(action:  {
                        groceryitems.remove(at: 0)
                    }) {
                        Image(systemName: "minus")
                            .background(Color.green)
                        
                      //  Button(action: {
                      //      groceryitems.remove(at:IndexSet(integer:    index)} { Image(systemName: "minus")
                                .background(Color.green) }
                  
                                                            }
                        //
                        //    Text("Append")
                        //        .font(.largeTitle)
                        //
                        //        }
                        
                        
                        
                    }
                    
                }
            }
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

