//
//  ContentView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var progress = ObserveClass()

    var myStack: Stack = Stack<Int>()
    
    var body: some View {
        VStack{

            MainView()

        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            
        }
    }
}
