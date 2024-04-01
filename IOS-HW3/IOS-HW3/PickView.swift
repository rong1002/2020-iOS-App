import SwiftUI

struct PickView: View {
    @State private var Autoplay : Bool = true
    
    @State private var selectDate = Date()
    @State private var year: Double = Double(Calendar.current.component(.year, from: Date()))
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year, value: -2, to: Date())!
    var body: some View{
    
        Form {
            DatePicker("年份", selection: $selectDate, in: startDate...today, displayedComponents: .date)
        }
    }
}

struct PickView_Previews: PreviewProvider {
    static var previews: some View {
        PickView()
    }
}
