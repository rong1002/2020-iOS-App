import SwiftUI

struct PickView: View {
    @State private var number = 0
    @Binding var year: Double
    var body: some View {
        VStack(alignment: .trailing) {
            GeometryReader { geometry in
                PickPhotoView(number: self.number, year: $year)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                        self.number += 1
                    }
                }
            }
        }
    }
}

struct PhotoView : View{
    var picNum : Int
    var name : String
    var body : some View{
        GeometryReader { geometry in
//            VStack() {
                Image(name + "\(picNum)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width * 4 / 3)
                    .clipped()
//        }
        }
    }
}

struct PickPhotoView: View {
    @State private var Autoplay : Bool = true
    
    var number : Int
    @State private var date = Date()
    @Binding var year: Double

    var body: some View{
        
        var components = DateComponents()
        components.calendar = Calendar.current
        components.year = 2018
        let startDate = components.date!
        components.year = 2020
        let endDate = components.date!
        components.year = 2018
        
        return VStack() {
            PhotoView(picNum: Autoplay ? (number % 3)  + 2018 : Int(self.year), name: "多啦A夢")
            Slider(value: Binding(get: {
                self.year
            }, set: {
                self.year = $0
                var components = DateComponents()
                components.calendar = Calendar.current
                components.year = Int(self.year)
                self.date = components.date!
            }), in: 2018...2020, step: 1)
            DatePicker("年份", selection: Binding(get: {
                self.date
            }, set: {
                self.date = $0
                self.year = Double(Calendar.current.component(.year, from: self.date))
            }), in: startDate...endDate, displayedComponents: .date)
            
            Toggle(isOn: $Autoplay) {
                Text("自動播放")
                    .font(.system(size: 25))
            }
            
        }
    }
}
