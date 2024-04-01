import SwiftUI
import AVFoundation

struct PlayMusicView: View {
    var songName: Song
    @State private var isPlay = false
    let player = AVPlayer()
    
    var body: some View{
        Toggle("播放", isOn: $isPlay)
            .onChange(of: isPlay, perform: { value in
                let fileUrl=Bundle.main.url(forResource: songName.name,withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.isPlay.toggle()
                if self.isPlay{
                    self.player.play()
                } else {
                    self.player.pause()
                }
            })
    }
}

