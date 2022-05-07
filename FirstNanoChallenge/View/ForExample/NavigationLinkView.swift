//
//  NavigationLinkView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/03.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        VStack {
            //List내부에 NavigationLink를 사용할 경우 주소록과 같은 형식으로 만들어진다.
            NavigationView{
                    List{
                        NavigationLink("상단 네비게이션링크", destination: TestView())
                    }

            }
            NavigationView {
                NavigationLink("하단 네비게이션 링크", destination: TestView())
            }
            Spacer()
        }
        
                
        
    }
}


struct TestView: View {
    var body: some View {
        Text("Destination View")
            .navigationTitle("Destination")
            .navigationBarTitleDisplayMode(.inline)
    }
}



struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
