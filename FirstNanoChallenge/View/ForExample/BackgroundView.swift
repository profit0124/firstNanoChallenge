//
//  BackgroundView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/03.
//

import SwiftUI

struct BackgroundView: View {
    @State var num:Int = 0
    var body: some View {
        VStack {
            Text("OutSideView Number : \(num)")
            Button(action: {
                num += 1
            }) {
                Text("Background Button")
                
            }
            Spacer()
                .frame(height: 50)
            InsideView(bindingNum: $num, noBindingNum: num)
        }
        
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
