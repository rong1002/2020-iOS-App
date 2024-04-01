import SwiftUI

struct ContentView: View {
    @State var opacity : Double = 1
    @State  var Background: Int = 0
    @State private var EnterName = ""
    var background=["background1","background2","background3","background4"]
    @State private var selectDate = Date()
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year, value: -12, to: Date())!
    var year: Int{
        Calendar.current.component(.year, from: selectDate)
    }
    @State var selectsong = 0
    @State var place = 0
    @State var showsong = false
    @State var showAlert = false
    @State var showAlbum = false
    @State var backView = false
    @State var showRandomAlert = false
    @State var showingActionSheet = false
    @State var showMap = false
    var body: some View {
        NavigationView {
            GeometryReader{geometry in
                VStack{
                    Image("G.E.M\(year)")
                        .frame(width: geometry.size.width, height: geometry.size.width * 3 / 4)
                        .clipped()
                        .opacity(opacity)
                        .background(Image(background[Background])
                        .resizable()
                        .scaledToFill())
                    DatePicker("年份", selection: $selectDate, in: startDate...today, displayedComponents: .date)
                        .datePickerStyle(WheelDatePickerStyle())
                        .frame( height: 50)
                    
                    Form {
                        EnterNameView(EnterName: $EnterName)
                        VStack(alignment: .leading){
                            Text("請選擇你的所在地")
                            PlacePicker(place: $place)
                        }
                        showMapView(showMap: $showMap, place: places[place])
                        BackgroundView(Background: $Background)
                        opacitySlider(opacity: $opacity)
                        SelectSong(selectsong: $selectsong)
                        PlayMusicView(songName: allsong[selectsong])
                            .alert(isPresented: $showAlert) { () -> Alert in
                                return Alert(title: Text("正在播放"), message: Text(allsong[self.selectsong].name))
                            }
                        RandomSong(showRandomAlert: $showRandomAlert, selectsong: $selectsong)
                    }
                    ButtonView(selectsong: self.$selectsong, showsong: self.$showsong, showAlbum: $showAlbum)
                        .frame(height: 50)
                }
            }
            .navigationTitle("G.E.M. 鄧紫棋")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

