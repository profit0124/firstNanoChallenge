//
//  ZVHStack.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/03.
//

import SwiftUI

struct ZVHStack: View {
    var body: some View {
        ZStack(alignment:.topLeading) {
            Text("First Text in ZStack")
                .font(.title)
                .multilineTextAlignment(.leading)
                
            VStack(alignment: .leading) {
                Text("First VStack in ZStack")
                    .font(.title3)
                ForEach(0..<10) { i in
                    Text("VStack")
                }
                Spacer()
            }
            .background(.blue)
            .padding(20)
            
            HStack {
                Text("Third Component")
                    .font(.caption)
                Text("/HStack")
                Text("/HStack")
                
            }
            .background(.green)
            .padding(50)
                
        }.frame(width: 350, height: 500)
    }
}

struct ZVHStack_Previews: PreviewProvider {
    static var previews: some View {
        ZVHStack()
    }
}
