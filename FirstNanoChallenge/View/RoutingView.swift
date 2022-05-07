//
//  RoutingView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/04.
//

import SwiftUI

struct RoutingView: View {
    @State var titleName: String
    var body: some View {
        //contentJson에 category_title로 구분하여 ForExample폴더 내의 Example을 연결하기 위한 용도
        switch titleName {
        case "SwiftUi_ZStack, VStack, HStack":
            ZVHStack()
        case "SwiftUi_State, Binding":
            BackgroundView()
        case "SwiftUi_List":
            ListView()
        case "SwiftUi_NavigationLink":
            NavigationLinkView()
        case "자료구조_List":
            ListStructureView()
        default:
            ListExampleView()
        }
    }
}

