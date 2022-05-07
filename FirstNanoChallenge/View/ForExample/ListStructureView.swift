//
//  ListStructureView.swift
//  FirstNanoChallenge
//
//  Created by Sooik Kim on 2022/05/05.
//

import SwiftUI

struct ListStructureView: View {
    
    @State var listSample: [String] = []
    @State var listCount: Int = 0
    @State var addText: String = ""
    @State var updateText: String = ""
    @State var updateIndex: Int = 0
    @State var deleteIndex: Int = 0
    @FocusState var addFocused: Bool
    @FocusState var updateTextFocused: Bool
    @FocusState var updateIndexFocused: Bool
    @FocusState var deleteFocused: Bool
    
    var body: some View {
        HStack {
            VStack {
                Text("index는 0부터")
                ForEach(listSample, id: \.self) { i in
                    Text(i)
                }
            }
            .frame(width: 150)
            .padding()
            Divider()
            VStack {
                HStack {
                    TextField("추가할단어" ,text: $addText)
                        .focused($addFocused)
                    Button(action: {
                        withAnimation(.easeIn){
                            addList(item: addText)
                        }
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width:40, height: 20)
                            Text("ADD")
                                .foregroundColor(.white)
                        }
                    }
                    
                }
                .padding()
                .overlay(Rectangle().stroke())
                Divider()
                VStack {
                    TextField("Index", text: Binding(
                        get: { String(updateIndex) },
                        set: { updateIndex = Int($0) ?? 0 }
                    ))
                    .keyboardType(.numberPad)
                    .focused($updateIndexFocused)
                    updateIndexFocused ? Text("인덱스 확인").foregroundColor(.red): Text("")
                    Divider()
                    TextField("수정할단어" ,text: $updateText)
                        .focused($updateTextFocused)
                    Divider()
                    Button(action: {
                        updateText(index: updateIndex ,item: updateText)
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width:80, height: 20)
                            Text("Update")
                                .foregroundColor(.white)
                        }
                    }
                    
                }
                .padding()
                .overlay(Rectangle().stroke())
                HStack {
                    VStack {
                    TextField("Index", text: Binding(
                        get: { String(deleteIndex) },
                        set: { deleteIndex = Int($0) ?? 0 }
                    ))
                    .keyboardType(.numberPad)
                    .focused($deleteFocused)
                    deleteFocused ? Text("인덱스 확인").foregroundColor(.red): Text("")
                    }
                    Button(action: {
                        withAnimation(.easeOut){
                            deleteList(index: deleteIndex)
                        }
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width:50, height: 20)
                            Text("Del")
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding()
                .overlay(Rectangle().stroke())
            }.padding()
        }
    }
    
    func addList (item: String) {
        if (addText == "") {
            addFocused = true
        }else {
            listSample.append(item)
            listCount += 1
            addText = ""
            addFocused = false
        }
    }
    func updateText (index: Int, item: String) {
        if(index >= listSample.count) {
            updateIndexFocused = true
        }
        else if (updateText == "") {
            updateTextFocused = true
        } else {
            print("\(index)\(item)\(listSample.count)")
            listSample[index] = item
            updateIndexFocused = false
            updateTextFocused = false
            updateText = ""
            updateIndex = 0
            
        }
    }
    
    func deleteList (index: Int) {
        if (index >= listSample.count) {
            deleteFocused = true
        } else {
            listSample.remove(at: index)
        }
    }
}

struct ListStructureView_Previews: PreviewProvider {
    static var previews: some View {
        ListStructureView()
    }
}
