import SwiftUI

struct SelectSong: View {
    @Binding var selectsong: Int
    var body: some View {
        Picker("選一首歌",selection: self.$selectsong){
            ForEach(allsong.indices){(index) in
                Text(allsong[index].name)
            }
        }
    }
}



struct SelectSong_Previews: PreviewProvider {
    static var previews: some View {
        Text("123")
    }
}
