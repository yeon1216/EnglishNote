//
//  RandomView.swift
//  TabViewDemo
//
//  Created by BOBBY.KIM on 2022/10/20.
//

import Foundation
import SwiftUI

struct EnglishListView: View {
    
    @EnvironmentObject var englishStore : EnglishStore

    var body: some View {
        List {
            ForEach (englishStore.englishes) { english in
                ListCell(english: english)
            }
            .onDelete(perform: onDelete)
            .onMove(perform: onMove)
        }
        .navigationBarTitle(Text("English List"))
        .navigationBarItems(
            leading: NavigationLink(destination: AddNewEnglishView(englishStore: englishStore))
            {
                Text("Add")
                    .foregroundColor(.blue)
            },
            trailing: EditButton()
        )
    }
    
    func onDelete(at offset: IndexSet) {
        englishStore.englishes.remove(atOffsets: offset)
    }
    
    func onMove(from source: IndexSet, to destination: Int) {
        englishStore.englishes.move(fromOffsets: source, toOffset: destination)
    }
    
}
    
struct ListCell: View {
    
    var english: English
    
    var body: some View {
        HStack {
            Text(english.en)
            Spacer()
            Text(english.kr)
        }
    }
    
}

struct EnglishListView_Previews: PreviewProvider {
    static var previews: some View {
        EnglishListView()
    }
}
