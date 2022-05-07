//
//  SwiftUIView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/27.
//

import SwiftUI

struct SwiftUIView: View {
    
    var progress: ObserveClass
    
    var body: some View {
        Button("Increase Score") {
            progress.score += 1
            print("In SwiftUIView")
        }
    }
}
