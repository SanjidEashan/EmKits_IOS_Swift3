//
//  ChildViewController.swift
//  File 2
//


import UIKit
import MapKit

class ChildViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
        
        let Location5 = CLLocationCoordinate2DMake( 23.771488, 90.427410)
        
        let annotation5 = MKPointAnnotation()
        
        let span = MKCoordinateSpanMake(0.110, 0.110)
        let region = MKCoordinateRegionMake(Location5, span)
        
        mapView.setRegion(region, animated: true )
        
        annotation5.coordinate = Location5
        
        annotation5.title = "  Dr. md. khurshid alam "
        annotation5.subtitle = " (Eye Specilist)+8801715452348 "
        
        //mapView.addAnnotation(annotation5)
        
        
        
        
        
        
        let sanzid1 = Capital(title: "Professor Dr. Selim Shakur",subtitle : "tel://88028836000", coordinate: CLLocationCoordinate2D(latitude: 23.804600, longitude: 90.415619), info: " Doctors Dgree info ")
        
        let sanzid2 = Capital(title: "Dr. Syed Khairul Amin", subtitle : "tel://01916957664", coordinate: CLLocationCoordinate2D(latitude: 23.741842, longitude: 90.383065), info: "Doctors Dgree info ")
        
        let sanzid3 = Capital(title: "Professor Dr. Mohammed Istiaque Hossain", subtitle: "tel://88028401661", coordinate: CLLocationCoordinate2D(latitude: 23.809855, longitude: 90.431203), info: "Doctors Dgree info")
        
        let sanzid4 = Capital(title: "Professor Dr. Ekhlasur Rahman",subtitle:"tel://88029661213", coordinate: CLLocationCoordinate2D(latitude: 23.745277, longitude: 90.382167), info: "Doctors Dgree info")
        
        let sanzid5 = Capital(title: "Professor Golam Maeen Uddin ", subtitle: "tel://0291335634", coordinate: CLLocationCoordinate2D(latitude: 23.759139, longitude: 90.390254), info: " Doctors Dgree info ")
        
        
        let sanzid6 = Capital(title: "Professor Dr. M. A. Jaigirdar",subtitle : "tel://88029669480", coordinate: CLLocationCoordinate2D(latitude: 23.739125, longitude: 90.381661), info: " Doctors Dgree info ")
        
        
        let sanzid7 = Capital(title: " Professor Dr. M.A. Kashem Sarkar ", subtitle : "tel://88028610420", coordinate: CLLocationCoordinate2D(latitude: 23.745416, longitude: 90.372321 ), info: " Doctors Dgree info")
        
        let sanzid8 = Capital(title: " Professor Dr. A. F. M. Selim ", subtitle: "tel://88029660015", coordinate: CLLocationCoordinate2D(latitude: 23.743346, longitude: 90.384175), info: "Doctors Dgree info")
        
        
        let sanzid9 = Capital(title: " Professor Dr. L.E. Fatmi ",subtitle:"tel://88028318135", coordinate: CLLocationCoordinate2D(latitude: 23.743203, longitude: 90.407638), info: "Doctors Dgree info.")
        
        
        
        let sanzid10 = Capital(title: "DProfessor Dr. Shahana Akhter Rahman ", subtitle: "tel://88028617462", coordinate: CLLocationCoordinate2D(latitude: 23.755427, longitude: 90.373260), info: "Doctors Dgree info")
        
        
        let sanzid11 = Capital(title: "Dr. Quazi Monzurul Moula ",subtitle : "tel://88028143312", coordinate: CLLocationCoordinate2D(latitude: 23.754041, longitude: 90.365478), info: "Doctors Dgree info")
        
        let sanzid12 = Capital(title: " Dr. B. H. Nazma Yasmeen", subtitle : "tel://88028156914", coordinate: CLLocationCoordinate2D(latitude: 23.744121, longitude: 90.372144), info: " Doctors Dgree info.")
        
        
        let sanzid13 = Capital(title: "Dr. Begum Sharifun Nahar ", subtitle: "tel://88028124990", coordinate: CLLocationCoordinate2D(latitude: 23.749252, longitude: 90.386235), info: "Doctors Dgree info.")
        
        
        let sanzid14 = Capital(title: "Lt. Col. Dr. Shormin Ara Ferdousi",subtitle:"tel://8801715164494", coordinate: CLLocationCoordinate2D(latitude: 23.814108, longitude: 90.397795), info: " Doctors Dgree info ")
        
        
        let sanzid15 = Capital(title: "Dr. Md. Abdullah-Al-Faruque ", subtitle: "tel://88029355801", coordinate: CLLocationCoordinate2D(latitude: 23.737610, longitude: 90.409829), info: "Doctors Dgree info")
        
        
        let sanzid16 = Capital(title: "Dr. Tarzia Asma Zafarullah",subtitle : "tel://88029145786", coordinate: CLLocationCoordinate2D(latitude: 23.750946, longitude: 90.386743), info: "Doctors Dgree info")
        
        let sanzid17 = Capital(title: "Dr. Farzana Hami", subtitle : "tel://88028017151 ", coordinate: CLLocationCoordinate2D(latitude: 23.788080, longitude: 90.353194), info: "Doctors Dgree info")
        
        let sanzid18 = Capital(title: "Dr. A B M Shahidul Alam  ", subtitle: "tel://88029660015", coordinate: CLLocationCoordinate2D(latitude: 23.743347, longitude: 90.384177), info: "Doctors Dgree info ")
        
        let sanzid19 = Capital(title: "Dr. Md. Osman Bhuiyan",subtitle:"tel://029119355", coordinate: CLLocationCoordinate2D(latitude: 23.756828, longitude: 90.374814), info: "Doctors Dgree info")
        
        
        mapView.addAnnotations([sanzid1, sanzid2, sanzid3, sanzid4, sanzid5,sanzid6, sanzid7, sanzid8, sanzid9, sanzid10,sanzid11, sanzid12, sanzid13, sanzid14, sanzid15,sanzid16, sanzid17, sanzid18, sanzid19])
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(_ mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        // 1
        let identifier = "Capital"
        
        // 2
        if annotation.isKind(of: Capital.self) {
            // 3
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil {
                //4
                annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:identifier)
                annotationView!.canShowCallout = true
                
                // 5
                let btn = UIButton(type: .detailDisclosure)
                let btn2 = UIButton(type: .contactAdd)
                
                
                
                annotationView!.rightCalloutAccessoryView = btn
                annotationView!.leftCalloutAccessoryView = btn2
                
            } else {
                // 6
                annotationView!.annotation = annotation
            }
            
            return annotationView
        }
        
        // 7
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        
        if control == annotationView.rightCalloutAccessoryView
            
        {
            let app = UIApplication.shared
            app.openURL(URL(string: (annotationView.annotation!.subtitle!)!)!)
            
        }
            
        else if control == annotationView.leftCalloutAccessoryView {
            
            let capital = annotationView.annotation as! Capital
            let placeName = capital.title
            let placeInfo = capital.info
            
            
            
            let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(ac, animated: true, completion: nil)
            
            
            
        }
        
        
    }
    
    
    
    
    
    
    func LocationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location = locations.last
        
        _ = CLLocationManager()
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        //let region = MKCoordinateRegion(center: center,span:MKCoordinateSpan(latitudeDelta:0.05, longitudeDelta:0.05))
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: center, span: span)
        
        self.mapView.setRegion(region, animated: true)
        
        self.mapView.showsUserLocation = true
        
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: NSError)
    {
        print("Error: " + error.localizedDescription, terminator: "")
    }
    
    @IBAction func chlidsender(_ sender: AnyObject) {
        switch sender.selectedSegmentIndex {
            
        case 1 :
            mapView.mapType = MKMapType.satelliteFlyover
        case 2 :
            mapView.mapType = MKMapType.hybrid
        default:
            mapView.mapType = MKMapType.standard
            
            
        }
    }
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
