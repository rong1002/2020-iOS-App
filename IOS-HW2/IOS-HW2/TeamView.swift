import SwiftUI

struct TeamView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(teams.indices) { (index) in
                    NavigationLink(destination: TeamintroductionView(team: teams[index])){
                        teamList(imageTeam: teams[index].imageTeam, nameTeam: teams[index].nameTeam)
                    }
                }
                .frame(height: 200)
            }
            .navigationBarTitle("戰隊")
        }
        .offset(y:50)
    }
}
struct TeamintroductionView: View {
    var team: Team
    
    var body: some View {
        ScrollView(.vertical) {
            let columns = [
                GridItem(),
                GridItem()]
            LazyVGrid(columns: columns) {
                ForEach(team.songTeam.indices) { (index) in
                    Link(destination: URL(string: team.songTeam[index].urlTeamSong)!, label: {
                            VStack {
                                Image(team.songTeam[index].imageTeamSong)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 160, height: 100)
                                    .clipped()
                                Text(team.songTeam[index].nameTeamSong)
                                Text(team.songTeam[index].imageTeamSong)
                                Divider()
                            }
                        Divider()
                    })
                }
            }
        }
    }
}

struct teamList: View {
    var imageTeam: String
    var nameTeam: String
    var body: some View {
        
        HStack (spacing: 30){
            Image(imageTeam)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: .top)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text(nameTeam)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
        }
        .frame(width: 380, height: 180)
        .modifier(BackgroundViewModifier())
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 10))
        
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
