//
//  Row.swift
//  IOS-HW4
//
//  Created by Lin Bo Rong on 2020/11/19.
//

import SwiftUI

struct UserRow: View {
    var user: User
    var body: some View {
        HStack {
            Image("\(user.Device)")
                .resizable()
                .scaledToFit()
                .frame(width:20)
            Text("\(user.Device)")
            Spacer()
            Text("\(user.Smoothness) 分順暢度")
            Image(systemName: user.PowerConsumption ? "battery.0" :
                    "battery.100")
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User(Device: "iphone 8", Version: "12.2", BatteryHealth: 98, PowerConsumption: true, Smoothness: 3))
    }
}
