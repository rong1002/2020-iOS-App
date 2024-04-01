import SwiftUI
import AVFoundation

struct ContentView: View {
    let player = AVPlayer()
    
    var body: some View {
        ZStack{
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("首頁")
                    }
                TeacherView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("導師介紹")
                }
                TeamView()
                    .tabItem {
                        Image(systemName: "music.house.fill")
                        Text("戰隊")
                }
                SongView()
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("歌曲")
                    }
                PicView()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("封面")
                    }
            }
            .accentColor(.orange)
            
            musicView()
                .offset(y:-390)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
