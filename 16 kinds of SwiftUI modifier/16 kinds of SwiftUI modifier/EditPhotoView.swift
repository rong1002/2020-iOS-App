import SwiftUI

struct EditPhotoView: View {
    @State var scale : CGFloat = 1
    @State private var brightness : Double = 0
    @State private var blurness : CGFloat = 0
    @State private var rotation : Double = 0
    @State private var contract : Double = 1
    @State private var grayscale : Double = 1
    @State private var saturation : Double = 1
    @State var red : Double = 0
    @State var green : Double = 0
    @State var blue : Double = 0
    @State var opacity : Double = 1
    @State private var gradient : CGFloat = 0
    @State private var cornerRadius : CGFloat = 0
    @State private var shadow : CGFloat = 0
    @State private var border : CGFloat = 0
    @State private var colorMultiply : Double = 1
    @State private var hueRotation : Double = 0
    @State private var number = 0
    @State var year: Double = Double(Calendar.current.component(.year, from: Date()))
    var body: some View {
        GeometryReader{geometry in
            VStack{
                PickView(year: $year)
                    .frame(width: geometry.size.width, height: geometry.size.width * 4 / 3)
                    .clipped()
                    .background(Color(red: red, green: green, blue: blue))
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: gradient, endRadius: 75))
                    .background(Image("background").resizable())
                    .shadow(radius: shadow)
                    .blur(radius: blurness)
                    .brightness(brightness)
                    .colorMultiply(Color(red: colorMultiply, green: colorMultiply * 2, blue: colorMultiply * 2))
                    .contrast(contract)
                    .border(Color.blue, width: border)
                    .hueRotation(Angle(degrees: hueRotation))
                    .rotationEffect(.degrees(rotation))
                    .grayscale(grayscale)
                    .saturation(saturation)
                    .cornerRadius(cornerRadius)
                
                Form{
                    VStack{
                        Group{
                            HStack{
                                Text("紅色")
                                Slider(value: $red, in: 0...1,minimumValueLabel:Image(systemName: "sun.min").imageScale(.small),maximumValueLabel:Image(systemName: "sun.min.fill").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(red, specifier: "%.2f")")
                                    .accentColor(.red)
                            }
                            HStack{
                                Text("綠色")
                                Slider(value: $green, in: 0...1,minimumValueLabel:Image(systemName: "moon.stars").imageScale(.small),maximumValueLabel:Image(systemName: "moon.stars.fill").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(green, specifier: "%.2f")")
                                    .accentColor(.green)
                            }
                            HStack{
                                Text("藍色")
                                Slider(value: $blue, in: 0...1,minimumValueLabel:Image(systemName: "tropicalstorm").imageScale(.small),maximumValueLabel:Image(systemName: "hurricane").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(blue, specifier: "%.2f")")
                                    .accentColor(.blue)
                            }
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                ){
                                    Text("")
                                }
                                Text("\(scale, specifier: "%.2f")")
                                    .accentColor(.red)
                            }
                            HStack{
                                Text("透明度")
                                Slider(value: $opacity, in: 0...1,minimumValueLabel:Image(systemName: "eye.slash").imageScale(.small),maximumValueLabel:Image(systemName: "eye.slash.fill").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(opacity, specifier: "%.2f")")
                                    .accentColor(.blue)
                            }
                            HStack{
                                Text("漸層顏色")
                                Slider(value: $gradient, in: 1...75,minimumValueLabel:Image(systemName: "wand.and.rays").imageScale(.small),maximumValueLabel:Image(systemName: "wand.and.stars.inverse").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(gradient, specifier: "%.2f")")
                                    .accentColor(.blue)
                            }
                            HStack{
                                Text("圓角")
                                Slider(value: $cornerRadius, in: 0...60,minimumValueLabel:Image(systemName: "rays").imageScale(.small),maximumValueLabel:Image(systemName: "slowmo").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(cornerRadius, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("邊框的粗細")
                                Slider(value: $border, in: 0...10,minimumValueLabel:Image(systemName: "app").imageScale(.small),maximumValueLabel:Image(systemName: "circle").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(border, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("陰影")
                                Slider(value: $shadow, in: 0...100,minimumValueLabel:Image(systemName: "staroflife").imageScale(.small),maximumValueLabel:Image(systemName: "staroflife.fill").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(shadow, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("模糊")
                                Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                    Text("")
                                }
                                Text("\(blurness, specifier: "%.2f")")
                                    .accentColor(.yellow)
                            }
                        }
                        Group{
                            HStack {
                                Text("亮度")
                                Slider(value: $brightness,in: 0...1,minimumValueLabel:Image(systemName: "sun.max.fill").imageScale(.small),maximumValueLabel:Image(systemName: "sun.max.fill").imageScale(.large)){
                                    Text("")
                                }
                                Text("\(brightness, specifier: "%.2f")")
                            }
                            HStack{
                                Text("色彩增值")
                                Slider(value: $colorMultiply, in: 0...1,minimumValueLabel:Image(systemName: "eyedropper.halffull").imageScale(.small),maximumValueLabel:Image(systemName: "eyedropper.full").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(colorMultiply, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("對比")
                                Slider(value: $contract, in: 1...3,minimumValueLabel:Image(systemName: "arrow.right").imageScale(.small),maximumValueLabel:Image(systemName: "arrow.left").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(contract, specifier: "%.2f")")
                            }
                            HStack{
                                Text("灰階")
                                Slider(value: $contract, in: 0...2,minimumValueLabel:Image(systemName: "circle").imageScale(.small),maximumValueLabel:Image(systemName: "circle.fill").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(contract, specifier: "%.2f")")
                                    .accentColor(.purple)
                            }
                            HStack{
                                Text("色相旋轉")
                                Slider(value: $hueRotation, in: 0...360,minimumValueLabel:Image(systemName: "goforward").imageScale(.small),maximumValueLabel:Image(systemName: "gobackward").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(hueRotation, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("飽和度")
                                Slider(value: $contract, in: 0...3, minimumValueLabel:Image(systemName: "wifi.slash").imageScale(.small),maximumValueLabel:Image(systemName: "wifi").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(contract, specifier: "%.2f")")
                                    .accentColor(.black)
                            }
                            HStack{
                                Text("旋轉圖片")
                                Slider(value: $rotation, in: 0...360,minimumValueLabel:Image(systemName: "person.fill").imageScale(.small),maximumValueLabel:Image(systemName: "person.fill.turn.down").imageScale(.large)) {
                                    Text("")
                                }
                                Text("\(rotation, specifier: "%.2f")")
                                    .accentColor(.green)
                            }
                            RandomView(red: $red, green: $green, blue: $blue, scale: $scale, opacity: $opacity, year: $year)
                        }
                    }
                }
            }
        }
    }
}
struct EditPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        EditPhotoView()
    }
}

struct RandomView : View{
    @Binding var red : Double
    @Binding var green : Double
    @Binding var blue : Double
    @Binding var scale : CGFloat
    @Binding var opacity : Double
    @Binding var year: Double
    var body : some View{
        Button(action:{
            let RandomRed = Double.random(in: 0...1)
            let RandomGreen = Double.random(in: 0...1)
            let RandomBlue = Double.random(in: 0...1)
            let RandomOpacity = Double.random(in: 0...1)
            let RandomCGFloat = CGFloat.random(in: 0...1)
            let RandomYear = Double.random(in: 2018...2020)
            red = RandomRed
            green = RandomGreen
            blue = RandomBlue
            opacity = RandomOpacity
            scale = RandomCGFloat
            year = RandomYear
        }){
            Text("換！")
                .font(.system(size: 50))
                .foregroundColor(.black)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.init(red: 255/255, green: 217/255, blue: 218/255), Color.init(red: 204/255, green: 113/255, blue: 120/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 5))
            
        }
    }
    }
