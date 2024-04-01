import SwiftUI

struct GoldenSongList: View {
    let imageGoldenSong: String
    let nameGoldenSong: String
    let rankGoldenSong: String
    let urlGoldenSong: String
    
    var body: some View {
        
        ForEach(0 ..< 1) { (index) in
            Image(imageGoldenSong)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 100)
                .clipped()
            VStack (alignment: .leading) {
                Text(rankGoldenSong)
                Text(nameGoldenSong)
                Text(imageGoldenSong)
            }
        }
    }
}

struct GoldenSongView: View {
    var body: some View {
        List {
            Section(header: Text("Golden Song")
                        .font(.custom("Nagurigaki-Crayon", size: 30))
                        .fontWeight(.heavy)){
                ForEach(goldensong.indices){ (item) in
                    Link(destination: URL(string: goldensong[item].urlGoldenSong)!, label: {
                        GoldenSongList(imageGoldenSong: goldensong[item].imageGoldenSong, nameGoldenSong: goldensong[item].nameGoldenSong, rankGoldenSong: goldensong[item].rankGoldenSong, urlGoldenSong: goldensong[item].urlGoldenSong)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
    }
}

struct GoldenSongView_Previews: PreviewProvider {
    static var previews: some View {
        GoldenSongView()
    }
}
