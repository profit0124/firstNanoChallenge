//
//  MainView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/04/30.
//

import SwiftUI

struct MainView: View {
    
    @State var typeDatas: [TypeModel] = TypeDats().datas
    @State var datas:[ContentModel] = ContentDatas().datas
    @State var filterText: String = ""
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(typeDatas) { i in
                    //FILTER에 아무것도 적지 않았을 때
                    if( filterText == "") {
                        Section(header: Text(i.nameOfType)) {
                            ForEach(datas) { data in
                                if( data.category.contains(i.nameOfType)) {
                                    NavigationLink(destination: ContentDetailView(data: data)) {
                                        ListComponentView(data: data)
                                    }
                                }
                            }
                        }
                        //Filter 내용에 채워질 때
                    }else {
                        Section(header: Text(i.nameOfType)) {
                            ForEach(datas) { data in
                                if(data.category.contains(i.nameOfType)) {
                                    if (data.title.contains(filterText)) {
                                        NavigationLink(destination: ContentDetailView(data: data)) {
                                            ListComponentView(data: data)
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                    
                }
                
            }
            .navigationBarTitle("ForMine")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false)
            .searchable(text: $filterText)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
