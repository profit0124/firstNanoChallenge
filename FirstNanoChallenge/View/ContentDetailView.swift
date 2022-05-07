//
//  ContentDetailView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/30.
//

import SwiftUI

struct ContentDetailView: View {
    
    @State var data: ContentModel
    @State var count: Int = 2
    @State var sheetToggle = false
    
    var body: some View {
        
        ScrollView {
            ForEach(data.data, id: \.self) { i in
                HStack{
                    if i.contains("image") {
                        Image(i)
                            .resizable()
                            .scaledToFit()
                    }
                    else if (i.contains("link")) {
                        let strIndex = i.index(i.startIndex, offsetBy: 5)
                        Link("Go to Link", destination: URL(string: String(i[strIndex...]))!)
                    }
                    else {
                        Text(i)
                    }
                    Spacer()
                }
                
            }
            
        }.padding()
            .navigationTitle(data.title)
            .navigationBarTitleDisplayMode(.inline)
        
            .toolbar {
                if data.example{
                    Button("Example") {
                        sheetToggle.toggle()
                    }.sheet(isPresented: $sheetToggle) {
                        RoutingView(titleName: data.category + "_" + data.title)
                    }
                }
            }
        
            
    }
    func addCount() {
        count += 1
    }
}



