import SwiftUI
import MapKit

struct MapView: View {
    @Binding var showMap : Bool
    @State var comments = [MKPointAnnotation]()
    var placename : String
    var latitude : Double
    var longitude : Double
        var body: some View {
            ZStack (alignment: .bottomTrailing){
                Map(comments: comments)
                    .edgesIgnoringSafeArea(.all)
                Button(action:{
                    let comment = MKPointAnnotation()
                    comment.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                    comment.title = placename
                    self.comments.append(comment)
                }){
                    Spacer()
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                .buttonStyle(PlainButtonStyle())
                Button(action: {
                    self.showMap.toggle()
                }){
                    Image(systemName: "xmark.circle.fill")
                        .scaleEffect(1.5)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
}

struct Map: UIViewRepresentable {
  
    var comments = [MKPointAnnotation]()
        
        func makeUIView(context: Context) -> MKMapView {
            MKMapView()
        }
        func updateUIView(_ uiView: MKMapView, context: Context) {
           
            uiView.removeAnnotations(uiView.annotations)
            uiView.addAnnotations(comments)
            uiView.showAnnotations(comments, animated: true)
        }
}

struct PlacePicker: View {
    @Binding var place: Int
    
    var body: some View {
        Picker("地區", selection: $place){
            ForEach(places.indices) { (index) in
                Text(places[index].placename)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
