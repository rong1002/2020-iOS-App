import SwiftUI

struct G_E_M_View: View {
    @State private var Autoplay = true
    @State var number = 0
    @State var year: Double = Double(Calendar.current.component(.year, from: Date()))
    @State var date = Date()
    var body: some View {
        
        //        VStack(alignment: .trailing) {
        //            GeometryReader { geometry in
        //                GEMView(number: $number, year: $year)
        //                    .onAppear {
        //                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
        //                            self.number += 1
        //                        }
        //                    }
        //            }
        //        }
        var components = DateComponents()
        components.calendar = Calendar.current
        components.year = 2010
        let startDate = components.date!
        components.year = 2020
        let today = Date()
        
        return VStack{
            PhotoView( picNum: Autoplay ? (number % 11)  + 2010 : Int(year), name: "G.E.M")
            Slider(value: Binding(get: {
                year
            }, set: {
                year = $0
                var components = DateComponents()
                    components.calendar = Calendar.current
                components.year = Int(year)
                date = components.date!
            }), in: 2010...2020, step: 1)
            Toggle(isOn: $Autoplay) {
                Text("自動播放")
                    .font(.system(size: 25))
                Text(String(Int(year)))
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                //                .onChange(of: Autoplay, perform: { value in
                //                    if number >= 10{
                //                        number = 0
                //                    }else{
                //                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                //                            number += 1
                //                        }
                //                    }
                //                })
            }
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                number += 1
            }
        }
    }
}
struct PhotoView : View{
    var picNum : Int
    var name : String
    var body : some View{
        GeometryReader { geometry in
            VStack() {
                Image(name + "\(picNum)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width, height: geometry.size.width / 3 * 4)
                    .clipped()
            }
        }
    }
}
struct updateDatePicker : View{
    @State var date:
    var body : some View{
        DatePicker("年份", selection: Binding(get: {
            date
        }, set: {
            date = $0
            year = Double(Calendar.current.component(.year, from: date))
        }), in: startDate...today, displayedComponents: .date)
        .datePickerStyle(WheelDatePickerStyle())
    }
}
struct G_E_M_View_Previews: PreviewProvider {
    static var previews: some View {
        G_E_M_View()
    }
}
