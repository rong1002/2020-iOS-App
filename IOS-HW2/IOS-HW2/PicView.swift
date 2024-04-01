import SwiftUI

struct PicView: View {
    var body: some View {
        ZStack  {
            Text("此處為鄧紫棋歌詞❤️❤️❤️")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .offset(y: -20)
            Text("可更換之app圖示")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .offset(y: -120)
            TextEditor(text: .constant("""
                    Enough guys It's my time 這是女孩 站起來的時代
                    好戲要到來 要立塊招牌 把你石器時代的思想
                    全部拋開 現在請你拿好凳子 其實我的名字
                    有更厲害的意思 I'm G.E.M. 這是我的使命
                    Imma get everybody moving 誰能像我
                    早在二十五歲 開百場的巡迴 Live從不對嘴
                    神馬三押四押 現在給你一打Yo
                    管你來自地下或來自天上
                    就算你在質疑嗎我還是堅強
                    Oh你我都一樣 有著夢就該去想
                    我又不是經不起風浪 我就是現代木蘭Oh
                    誰最偉大 是女字旁的她 大哥你學第一句話
                    叫的不就是媽媽 My ladies我們啥
                    啥也並沒有在怕 哈 你註定在我底下
                    要是不服的話 你高得上去嗎 耶~~
            """))
                .offset(x: 20, y: 280)
            HStack {
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    Image("RapChina")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("Rich")
                }) {
                    Image("Rich")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("Rap")
                }) {
                    Image("Rap")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                }
            }
            .offset(y: -220)
        }
        .accentColor(.clear)
        .frame(width: 500, height: 500)
    }
}

struct PicView_Previews: PreviewProvider {
    static var previews: some View {
        PicView()
    }
}
