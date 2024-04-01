import SwiftUI

struct TeachersImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}
struct episodesList: View {
    let imageEpisode: String
    let nameEpisode: String
    let descriptionEpisode: String
    
    var body: some View {
        HStack {
            Image(imageEpisode)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 100)
                .clipped()
            LazyVStack (alignment: .leading, pinnedViews: [.sectionHeaders, .sectionFooters]){
                Text(nameEpisode)
                Text(descriptionEpisode)
            }
        }
        Spacer()
    }
}
struct HomeView: View {
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("導師列表")){
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 10.0) {
                            ForEach(teachers){ (teacher) in
                                NavigationLink(destination: TeacherintroductionView(image: teacher.image, name: teacher.name, description: teacher.description)){
                                    TeachersImage(name: teacher.image)
                                }
                            }
                        }
                        .frame(height: 200)
                    }
                }
                Section(header: Text("劇集列表")){
                    ForEach(episodes.indices){ (item) in
                        Link(destination: URL(string: episodes[item].url)!, label: {
                            episodesList(imageEpisode: episodes[item].imageEpisode, nameEpisode: episodes[item].nameEpisode, descriptionEpisode: episodes[item].descriptionEpisode)
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationBarTitle("中國新說唱")
        }
        .offset(y:50)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
