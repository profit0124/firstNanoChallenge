//
//  ListView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/04.
//

import SwiftUI

struct ListView: View {
    @State var optionToggle: Bool = false
    var body: some View {
        VStack() {
            
            HStack {
                Button(action: {
                    optionToggle = false
                }){
                    if optionToggle {
                        ZStack {
                            Rectangle()
                                .stroke()
                                .frame(width: 100, height: 50)
                            Text("MultiSelct")
                        }
                    } else {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 50)
                            Text("MultiSelct")
                                .foregroundColor(.white)
                        }
                    }
                    
                }
                Button(action: {
                    optionToggle = true
                }){
                    if optionToggle {
                        ZStack {
                            Rectangle()
                                
                                .frame(width: 100, height: 50)
                            Text("Hierachy")
                                .foregroundColor(.white)
                        }
                    } else {
                        ZStack {
                            Rectangle()
                                .stroke()
                                .frame(width: 100, height: 50)
                            Text("Hierachy")
                                
                        }
                    }
                    
                }
            }
            
            if optionToggle {
                ListExampleView()
            } else {
                MultiSelectionView()
            }
        }.padding()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
