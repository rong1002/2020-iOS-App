import SwiftUI

struct EditPhotoView: View {
    var body: some View {
        Text("123")
    }
}
struct EditPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        EditPhotoView()
    }
}

struct opacitySlider: View {
    @Binding var opacity: Double
    @State var bgColor = Color.blue
    var body: some View {
        VStack {
            ColorPicker("Set the Line color", selection: $bgColor)
            HStack{
                Text("透明度")
                Slider(value: $opacity, in: 0...1,minimumValueLabel:Image(systemName: "eye.slash").imageScale(.small),maximumValueLabel:Image(systemName: "eye.slash.fill").imageScale(.large)) {
                    Text("")
                }
                .accentColor(bgColor)
                Text("\(opacity, specifier: "%.2f")")
            }
        }
    }
}

struct BackgroundView: View{
    @Binding var Background: Int
    var background=["background1","background2","background3","background4","background5"]
    
    var body: some View {
        Stepper(value:self.$Background, in:0...3){
            Text("背景風格")
                .padding(.trailing)
            Text(background[Background])
                .padding(.leading)
        }
    }
}

struct EnterNameView: View{
    @Binding var EnterName: String
    
    var body: some View {
        VStack {
            TextField("請輸入你的名字", text: $EnterName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
        }
    }
}
