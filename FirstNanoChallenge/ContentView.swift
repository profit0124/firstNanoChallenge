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
//            ZVHStack()
//            OnScreen()
//            NavigationLinkView()
            MainView()
//            Text("Your socre is \(progress.score)")
//            SwiftUIView(progress: progress)
//            ScrollView {
//                LazyVStack {
//                    ForEach(0..<300) { number in
//                        Text("\(number)")
//                    }
//                }
//            }
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
