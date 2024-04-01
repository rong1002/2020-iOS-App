//
//  ResurrectionView.swift
//  IOS-HW2
//
//  Created by Lin Bo Rong on 2020/10/15.
//

import SwiftUI

struct SongView: View {
    var body: some View {
        TabView {
            ResurrectionView()
            GoldenSongView()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        
    }
}
struct resurrectionList: View {
    let numberResurrection: String
    let imageResurrection: String
    let nameResurrection: String
    let urlResurrection: String
    
    var body: some View {
        
        ScrollView(.vertical) {
            let columns = [
                GridItem(),
                GridItem()]
            LazyVGrid(columns: columns) {
                ForEach(resurrections.indices) { (item) in
                    VStack {
                        Image(resurrections[item].imageResurrection)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 100)
                            .clipped()
                        Text(resurrections[item].numberResurrection)
                        HStack {
                            Text(resurrections[item].nameResurrection)
                            Text("-")
                            Text(resurrections[item].imageResurrection)
                        }
                        Divider()
                    }
                }
            }
        }
        Spacer()
    }
}

struct ResurrectionView: View {
    
    var body: some View {
        List {
            Section(header: Text("Resurrection")
                        .font(.custom("Nagurigaki-Crayon", size: 30))
                        .fontWeight(.bold)){
                ForEach(0 ..< 1){ (item) in
                    Link(destination: URL(string: resurrections[item].urlResurrection)!, label: {
                        resurrectionList(numberResurrection: resurrections[item].numberResurrection, imageResurrection: resurrections[item].imageResurrection, nameResurrection: resurrections[item].nameResurrection, urlResurrection: resurrections[item].urlResurrection)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .offset(x: 0, y: 50)
    }
}

struct ResurrectionView_Previews: PreviewProvider {
    static var previews: some View {
        ResurrectionView()
    }
}
