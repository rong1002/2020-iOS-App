import SwiftUI

struct TeacherView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(0 ..< teachers.count) { (item) in
                    NavigationLink(destination: TeacherintroductionView(image: teachers[item].image, name: teachers[item].name, description: teachers[item].description)) {
                        teacherList(image: teachers[item].image, name: teachers[item].name)
                    }
                }
                .frame(height: 200)
            }
            .navigationBarTitle("導師介紹")
        }
        .offset(y:50)
    }
}

struct TeacherintroductionView: View {
    var image: String
    var name: String
    var description: String
    @State var pics = false
    var body: some View {
        
        VStack{
            if pics{
                TeacherintroView(image: image, name: name, description: description)
                    .transition(.slide)
            }
        }
        .animation(.easeInOut(duration:1.3))
        .onAppear {pics = true}
        .onDisappear {pics = false}
    }
}

struct teacherList: View {
    var image: String
    var name: String
    
    var body: some View {
        
        HStack (spacing: 30){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .saturation(2.2)
            Text(name)
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

struct TeacherintroView: View {
    
    var image: String
    var name: String
    var description: String
    
    var body: some View {
        ScrollView(.vertical) {
            VStack (spacing: 30){
                NavigationLink(destination: TeamView()) {
                    Image("\(image)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                        .shadow(radius: 10)
                }
                
                HStack{
                    NavigationLink(destination: TeamView()) {
                        Text(name)
                            .font(.custom("jf-openhuninn-1.1",size:22))
                            .fontWeight(.heavy)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    
                    Text(image)
                        .font(.custom("jf-openhuninn-1.1",size:22))
                        .fontWeight(.heavy)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                
                Text(description)
                    .fontWeight(.heavy)
                    .frame(width: 300)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct BackgroundViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 150/255, green: 130/255, blue: 200/255), Color(red: 200/255, green: 130/255, blue: 150/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
    }
}

struct TeacherView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherView()
    }
}

