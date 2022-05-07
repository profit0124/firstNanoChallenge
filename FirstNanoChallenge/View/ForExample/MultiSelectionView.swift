//
//  RefreshingListContent.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/03.
//

import SwiftUI

struct RefreshingListContent: View {
    struct Ocean: Identifiable, Hashable {
        let name: String
        let id = UUID()
    }

    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]

    @State private var multiSelection = Set<UUID>()

    var body: some View {
        VStack{
            NavigationView {
                List(oceans, selection: $multiSelection) {
                    Text($0.name)
                }
                .navigationTitle("Oceans")
                .toolbar { EditButton() }
            }
            Text("\(multiSelection.count) selections")
        }
    }
}
struct RefreshingListContent_Previews: PreviewProvider {
    static var previews: some View {
        RefreshingListContent()
    }
}
