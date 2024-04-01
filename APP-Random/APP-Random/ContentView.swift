//
//  ContentView.swift
//  APP-Random
//
//  Created by Lin Bo Rong on 2020/11/22.
//

import SwiftUI
import GameplayKit

struct ContentView: View {
    @State private var showAlert = false
    @State private var Dice1 : Int = 0
    @State private var Dice2 : Int = 0
    @State private var Dice3 : Int = 0
    @State private var color:[Color] = [.black,.blue,.red,.green,.orange,.yellow,.purple]
    @State private var sum = 0
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Image(systemName: "\(sum).circle.fill")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .scaledToFit()
                    .shadow(color: color[Dice1], radius: 50)
                    .foregroundColor(.white)
                Button(action:{
                    let randDice = 1...6
                    self.Dice1 = randDice.randomElement()!
                    self.Dice2 = randDice.randomElement()!
                    self.Dice3 = randDice.randomElement()!
                    sum = Dice1 + Dice2 + Dice3
                    self.showAlert = true
                }){
                    Text("骰!")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.init(red: 255/255, green: 217/255, blue: 218/255), Color.init(red: 204/255, green: 113/255, blue: 120/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 5))
                    
                }
                .alert(isPresented: $showAlert) { () -> Alert in
                    if Dice1 == Dice2 && Dice1 == Dice3 {
                        return Alert(title: Text("豹子拉！！！\n第一顆骰子為\(Dice1)\n第二顆骰子為為\(Dice2)\n第三顆骰子為為\(Dice3)\n總和為\(sum)"))
                    }else{
                        return Alert(title: Text("第一顆骰子為\(Dice1)\n第二顆骰子為為\(Dice2)\n第三顆骰子為為\(Dice3)\n總和為\(sum)"))
                    }
                }
            }
        }
        .background(
            Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400 , height: 300)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
