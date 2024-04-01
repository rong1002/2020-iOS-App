//
//  ContentView.swift
//  IOS-HW4
//
//  Created by Lin Bo Rong on 2020/11/19.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var iphoneData = UserData()
    var body: some View {
        VStack{
            TabView {
                UserList(iphoneData: self.iphoneData)
                    .tabItem {
                        Text("List")
                        Image(systemName: "globe")
                }
                Chart(iphoneData: self.iphoneData)
                    .tabItem{
                    Image(systemName: "chart.pie")
                    Text("Chart")
                }
            }
            .accentColor(.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
