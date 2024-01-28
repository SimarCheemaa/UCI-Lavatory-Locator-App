import SwiftUI
import MapKit
import CoreLocation

extension CLLocationCoordinate2D{
    static let bathroom1 = CLLocationCoordinate2D(
        latitude: 33.645902, longitude: -117.846605)
    
    static let bathroom2 = CLLocationCoordinate2D(
        latitude: 33.644427514869996, longitude: -117.84422912100919)
    
    static let bathroom3 = CLLocationCoordinate2D(
        latitude: 33.64584763851458, longitude: -117.83994831548404)
    
    static let bathroom4 = CLLocationCoordinate2D(
        latitude: 33.6470712482721, longitude: -117.84118213159043)
    
    static let bathroom5 = CLLocationCoordinate2D(
        latitude: 33.64345319858745, longitude: -117.8440593703818)
    
    static let bathroom6 = CLLocationCoordinate2D(
        latitude: 33.64735184248395, longitude: -117.84416950786941)
    
    static let bathroom7 = CLLocationCoordinate2D(
        latitude: 33.644745181498614, longitude: -117.84121210205042)
    
    static let bathroom8 = CLLocationCoordinate2D(
        latitude: 33.64428410717771, longitude: -117.84193034754799)
    
    static let bathroom9 = CLLocationCoordinate2D(
        latitude: 33.64546950526436, longitude: -117.84467246570189)
    
    static let bathroom10 = CLLocationCoordinate2D(
        latitude: 33.64922407437117, longitude: -117.8424157076793)
    
    
    
}
struct ContentView: View {
    @State private var directions: [String] = []
    @State private var showDirections = false
    @State private var showMapView: Bool = false
    
    @State var camera: MapCameraPosition = .automatic
    @State private var isSatelliteView: Bool = false
    @StateObject var manager = LocationManager()
    @State private var showAlertBathroom1 = false
    @State private var showAlertBathroom2 = false
    @State private var showAlertBathroom3 = false
    @State private var showAlertBathroom4 = false
    @State private var showAlertBathroom5 = false
    @State private var showAlertBathroom6 = false
    @State private var showAlertBathroom7 = false
    @State private var showAlertBathroom8 = false
    @State private var showAlertBathroom9 = false
    @State private var showAlertBathroom10 = false
    let center_uci = CLLocationCoordinate2D(latitude: 33.648613, longitude: -117.842753)
    
    var body: some View {
        VStack {
            
            if showMapView{
                MapView(directions: $directions, camera: $camera)
                    .safeAreaInset(edge: .top){
                        HStack{
                            Spacer()
                            VStack {
                                Text("Lavatory Locator")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .frame(height: 50)
                            
                            Spacer()
                        }
                        .background(Color(red: 0, green: 0.3922, blue: 0.6431))
                    }
                    .safeAreaInset(edge: .bottom){
                        HStack{
                            Spacer()
                            
                            Button{
                                camera = .region(MKCoordinateRegion(center:center_uci, latitudinalMeters: 150,
                                                                    longitudinalMeters: 150))
                                showMapView.toggle()
                            } label:{
                                Label("Locate Me", systemImage: "paperplane.circle.fill")
                            }
                            .foregroundColor(.white)
                            
                            Spacer()
                            Button{
                                isSatelliteView.toggle()
                            } label:{
                                Label("Toogle", systemImage: "square.fill")
                            }
                            .foregroundColor(.white)
                            
                            Spacer()
                                .buttonStyle(.borderedProminent)
                        }
                        .padding(.top)
                        .background(Color(red: 0, green: 0.3922, blue: 0.6431))
                    }
            }
            else {
                
                Map(position: $camera){
                    Annotation("Science Library", coordinate: .bathroom1){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom1 = true
                        }.sheet(isPresented: $showAlertBathroom1) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom1, bathroom_name: "bathroom1")
                        }
                    }
                    
                    Annotation("Rowland Hall", coordinate: .bathroom2){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom2 = true
                        }.sheet(isPresented: $showAlertBathroom2) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom2, bathroom_name: "bathroom2")
                        }
                    }
                    
                    Annotation("Social Science Lab", coordinate: .bathroom3){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom3 = true
                        }.sheet(isPresented: $showAlertBathroom3) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom3, bathroom_name: "bathroom3")
                        }
                    }
                    
                    Annotation("Langson Library", coordinate: .bathroom4){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom4 = true
                        }.sheet(isPresented: $showAlertBathroom4) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom4, bathroom_name: "bathroom4")
                        }
                    }
                    
                    Annotation("Physical Science Hall", coordinate: .bathroom5){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom5 = true
                        }.sheet(isPresented: $showAlertBathroom5) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom5, bathroom_name: "bathroom5")
                        }
                    }
                    
                    Annotation("Humanities Hall", coordinate: .bathroom6){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom6 = true
                        }.sheet(isPresented: $showAlertBathroom6) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom6, bathroom_name: "bathroom6")
                        }
                    }
                    
                    Annotation("Engineering Tower", coordinate: .bathroom7){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom7 = true
                        }.sheet(isPresented: $showAlertBathroom7) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom7, bathroom_name: "bathroom7")
                        }
                    }
                    
                    Annotation("ICS Hall", coordinate: .bathroom8){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom8 = true
                        }.sheet(isPresented: $showAlertBathroom8) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom8, bathroom_name: "bathroom8")
                        }
                    }
                    
                    Annotation("Howard Schneiderman", coordinate: .bathroom9){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom9 = true
                        }.sheet(isPresented: $showAlertBathroom9) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom9, bathroom_name: "bathroom9")
                        }
                    }
                    
                    Annotation("Student Center", coordinate: .bathroom10){
                        ZStack{
                            Image("restroom")
                                .resizable()
                                .padding(5)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.red)
                        }.onTapGesture {
                            showAlertBathroom10 = true
                        }.sheet(isPresented: $showAlertBathroom10) {
                            CustomAlertView(showAlertBathroom: $showAlertBathroom10, bathroom_name: "bathroom10")
                        }
                    }
                    
                    
                    
                    Annotation("", coordinate: center_uci){
                        ZStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .padding(5)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                        }
                    }
                    
                }
                .safeAreaInset(edge: .top){
                    HStack{
                        Spacer()
                        VStack {
                            Text("Lavatory Locator")
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .bold))
                            Spacer()
                        }
                        .frame(height: 50)
                        
                        Spacer()
                    }
                    .background(Color(red: 0, green: 0.3922, blue: 0.6431))
                }
                .safeAreaInset(edge: .bottom){
                    HStack{
                        Spacer()
                        
                        Button{
                            camera = .region(MKCoordinateRegion(center:center_uci, latitudinalMeters: 150,
                                                                longitudinalMeters: 150))
                            showMapView.toggle()
                        } label:{
                            Label("Locate Me", systemImage: "paperplane.circle.fill")
                        }
                        .foregroundColor(.white)
                        
                        Spacer()
                        Button{
                            isSatelliteView.toggle()
                        } label:{
                            Label("Toogle", systemImage: "square.fill")
                        }
                        .foregroundColor(.white)
                        
                        Spacer()
                            .buttonStyle(.borderedProminent)
                    }
                    .padding(.top)
                    .background(Color(red: 0, green: 0.3922, blue: 0.6431))
                }
                .mapStyle(isSatelliteView ? .imagery : .standard)
            }
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    @Binding var directions: [String]
    @Binding var camera: MapCameraPosition
    func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator()
      }
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 33.648613, longitude: -117.842753),
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        mapView.setRegion(region, animated: true)
        let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 33.648613, longitude: -117.842753))
        
        // Boston
        let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 33.64922407437117, longitude: -117.8424157076793))
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: p1)
        request.destination = MKMapItem(placemark: p2)
        request.transportType = .walking
        
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            guard let route = response?.routes.first else { return }
            mapView.addAnnotations([p1, p2])
            mapView.addOverlay(route.polyline)
            mapView.setVisibleMapRect(
                route.polyline.boundingMapRect,
                edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
                animated: true)
        }
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    class MapViewCoordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = .systemBlue
            renderer.lineWidth = 5
            return renderer
        }
    }
}

struct CustomAlertView: View {
    @Binding var showAlertBathroom: Bool
    
    struct Bathroom {
        var description: String
        var image: String
    }
    
    var bathroom_name: String
    var myDictionary: [String: Bathroom] = [
        "bathroom1": Bathroom(description: "Science Library Restroom", image: "science_library_restroom"),
        "bathroom2": Bathroom(description: "Rowland Hall Restroom", image: "restroom2"),
        "bathroom3": Bathroom(description: "Social Science Lab Restroom", image: "restroom3"),
        "bathroom4": Bathroom(description: "Langson Library Restroom", image: "restroom4"),
        "bathroom5": Bathroom(description: "Physical Science Hall Restroom", image: "restroom5"),
        "bathroom6": Bathroom(description: "Humanities Hall Restroom", image: "restroom6"),
        "bathroom7": Bathroom(description: "Engineering Tower Restroom", image: "restroom2"),
        "bathroom8": Bathroom(description: "ICS Hall Restroom", image: "restroom2"),
        "bathroom9": Bathroom(description: "Howard Schneiderman Restroom", image: "restroom2"),
        "bathroom10": Bathroom(description: "Student Center Restroom", image: "restroom2"),
    ]
    var body: some View {
        VStack (
        )
        {
            HStack {
                Spacer()
                if let person = myDictionary[bathroom_name] {
                    Text(person.description)
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .bold))
                        .padding()
                }
                Spacer()
            }
            .frame(width: 400, height: 80)
            .background(Color(red: 0, green: 0.3922, blue: 0.6431))
            Divider()
                .frame(height: 5)
                .background(.white)
            Spacer()
            
            if let image = myDictionary[bathroom_name] {
                Image(image.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 450)
            }
            Button("Locate") {
                showAlertBathroom = false
            }
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 28, weight: .bold))
            Spacer()
            Button("Tap to Dismiss") {
                showAlertBathroom = false
            }
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 18))
        }
        .frame(minWidth: 500, maxWidth: 500, minHeight: 700, maxHeight: 900)
        .background(Color(red: 0, green: 0.3922, blue: 0.6431))
        
    }
}
