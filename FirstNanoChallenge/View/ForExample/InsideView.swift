//
//  InsideView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/03.
//

import SwiftUI

struct InsideView: View {
    @Binding var bindingNum:Int
    @State var noBindingNum: Int
    var body: some View {
        VStack{
            Text("Inside Binding Num: \(bindingNum)")
            Text("Inside noBinding Num: \(noBindingNum)")
            
            
            Button(action: {
                bindingNum += 1
            }) {
                Text(" Add 1 to bindingNum")
            }
            Button(action: {
                noBindingNum += 1
            }) {
                Text(" Add 1 to noBindingNum")
            }
        }
        
        
    }
}


