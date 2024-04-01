import SwiftUI

struct ButtonView: View {
    
    @Binding var selectsong: Int
    @Binding var showsong: Bool
    @Binding var showAlbum: Bool
    var body: some View {
        HStack{
            Spacer()
            Button(action:{self.showsong = true}){
                Text("歌詞")
                    .modifier(ButtonViewModifier())
            }
            .sheet(isPresented: self.$showsong){
                SongLyricView(song: allsong[self.selectsong])
            }
            Spacer()
            Button(action:{self.showAlbum = true}){
                Text("專輯")
                    .modifier(ButtonViewModifier())
            }
            .fullScreenCover(isPresented: self.$showAlbum){
                SongAlbumView(showAlbum: $showAlbum)
            }
            Spacer()
        }
    }
}
struct showMapView:View {
    @Binding var showMap: Bool
    var place: Place
    
    var body: some View {
        HStack {
            Spacer()
                Button(action:{showMap = true}){
                    Text("查看地圖")
                        .modifier(ButtonViewModifier())
                }
                .buttonStyle(PlainButtonStyle())
                .fullScreenCover(isPresented: $showMap){
                    MapView(showMap: $showMap, placename: place.placename ,latitude: place.latitude, longitude: place.longitude)
            }
            Spacer()
        }
    }
}
struct BackView: View
{
    @Binding var showAlbum: Bool
    @Binding var showingActionSheet: Bool
    var body: some View {
        HStack {
            Spacer()
                Button(action:{
                        showingActionSheet = true
                    
                }){
                Text("返回")
                    .modifier(ButtonViewModifier())
                    .contextMenu {
                        Button(action: {
                            self.showAlbum = false
                        }) {
                            Text("確定返回")
                            Image(systemName: "arrowshape.turn.up.left")
                        }

                        Button(action: {
                            self.showAlbum = true
                        }) {
                            Text("繼續待著")
                            Image(systemName: "lightbulb")
                        }
                    }
            }
            .actionSheet(isPresented: $showingActionSheet){
                ActionSheet(title: Text("確定要返回嗎？"), buttons:[
                .default(Text("確定")){self.showAlbum = false},
                .default(Text("取消")){self.showAlbum = true}
                ])
            }
            .edgesIgnoringSafeArea(.all)
            Spacer()
        }
    }
}

struct SongAlbumView: View
{
    @Binding var showAlbum: Bool
    @State var showingActionSheet = false
    var body: some View {
        Form {
            DisclosureGroup("G.E.M") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2008) { (allAlbum2008) in
                        Text(allAlbum2008.Albumsongs)
                    }
                }
            }
            DisclosureGroup("18 plus") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2009) { (allAlbum2009) in
                        Text(allAlbum2009.Albumsongs)
                    }
                }
            }
            DisclosureGroup("MySecret") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2010) { (allAlbum2010) in
                        Text(allAlbum2010.Albumsongs)
                    }
                }
            }
            DisclosureGroup("Xposed") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2012) { (allAlbum2012) in
                        Text(allAlbum2012.Albumsongs)
                    }
                }
            }
            DisclosureGroup("新的心跳") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2015) { (allAlbum2015) in
                        Text(allAlbum2015.Albumsongs)
                    }
                }
            }
            DisclosureGroup("25 LOOKS") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2016) { (allAlbum2016) in
                        Text(allAlbum2016.Albumsongs)
                    }
                }
            }
            Group{
                DisclosureGroup("童話三部曲:另一個童話") {
                    VStack(alignment: .leading) {
                        ForEach(allAlbum20181) { (allAlbum20181) in
                            Text(allAlbum20181.Albumsongs)
                        }
                    }
                }
                DisclosureGroup("童話三部曲:毒蘋果") {
                    VStack(alignment: .leading) {
                        ForEach(allAlbum20182) { (allAlbum20182) in
                            Text(allAlbum20182.Albumsongs)
                        }
                    }
                }
                DisclosureGroup("童話三部曲:睡皇后") {
                    VStack(alignment: .leading) {
                        ForEach(allAlbum20183) { (allAlbum20183) in
                            Text(allAlbum20183.Albumsongs)
                        }
                    }
                }
                DisclosureGroup("童話最終曲:童話的休止符") {
                    VStack(alignment: .leading) {
                        ForEach(allAlbum2018last) { (allAlbum2018last) in
                            Text(allAlbum2018last.Albumsongs)
                        }
                    }
                }
            }
            DisclosureGroup("摩天動物園") {
                VStack(alignment: .leading) {
                    ForEach(allAlbum2019) { (allAlbum2019) in
                        Text(allAlbum2019.Albumsongs)
                    }
                }
            }
            BackView(showAlbum: $showAlbum, showingActionSheet: $showingActionSheet)
        }
    }
}

struct SongLyricView: View
{
    var song: Song
    var body: some View {
        ScrollView(.vertical){
            Text(song.lyrics)
                .padding(50)
        }
        .frame(minWidth : 0,maxWidth : .infinity,minHeight : 0,maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color.init( red: 246/255, green: 228/255, blue: 114/255), Color.init( red: 250/255, green: 71/255, blue: 191/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .edgesIgnoringSafeArea(.all)

    }
}

struct RandomSong: View{
    @State private var result : Int = 1
    @Binding var showRandomAlert: Bool
    @Binding var selectsong: Int
    
    var body: some View{
        HStack {
            Spacer()
            Button(action:{
                let randNum = 0...9
                self.selectsong = randNum.randomElement()!
                self.showRandomAlert = true
            }){
                Text("隨機播放")
                    .modifier(ButtonViewModifier())
                }
            .alert(isPresented: $showRandomAlert) { () -> Alert in
                return Alert(title: Text("隨機選擇："), message: Text(allsong[selectsong].name))
            }
            Spacer()
        }
    }
}

struct ButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(Color.primary)
            .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color(red: 255/255, green: 184/255, blue: 232/255), lineWidth: 3))
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Text("123")
    }
}
