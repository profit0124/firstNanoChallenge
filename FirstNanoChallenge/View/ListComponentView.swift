//
//  ListComponentView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/30.
//

import SwiftUI

//MainView에 리스트 Component 그려주기
struct ListComponentView: View {
    @State var data: ContentModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(data.title.count > 20 ? data.title.prefix(20) + "..." : data.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(data.category)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(data.date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}


