//
//  CardiacViewController.swift
//  File 2
//


import UIKit
import MapKit
import CoreLocation

class CardiacViewController: UIViewController {
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
        
        
        
        
        
        
        
        let sanzid1 = Capital(title: "Professor Dr. Abdullah-Al-Safi",subtitle : "tel://01553341060", coordinate: CLLocationCoordinate2D(latitude: 23.739119, longitude: 90.381658), info: " Doctors Dgree info ")
        
        let sanzid2 = Capital(title: "Professor (Dr.) Md. Fakhrul Islam", subtitle : "tel://01711854780", coordinate: CLLocationCoordinate2D(latitude: 23.741626, longitude: 90.383479), info: "Doctors Dgree info ")
        
        let sanzid3 = Capital(title: "Dr. H. I. Lutfor Rahman Khan", subtitle: "tel://88028124990", coordinate: CLLocationCoordinate2D(latitude: 23.749234, longitude: 90.386236), info: "Doctors Dgree info")
        
        let sanzid4 = Capital(title: "Professor Dr. Md. Afjalur Rahman",subtitle:"tel://88028610793", coordinate: CLLocationCoordinate2D(latitude: 23.743712, longitude: 90.384441), info: "aDoctors Dgree info")
        
        let sanzid5 = Capital(title: "Dr. md. khurshid alam", subtitle: "tel://8801715452348", coordinate: CLLocationCoordinate2D(latitude: 23.794469, longitude: 90.384441), info: " Doctors Dgree info ")
        
        
        let sanzid6 = Capital(title: "Professor Hasina Banoo ",subtitle : "tel://88028858943", coordinate: CLLocationCoordinate2D(latitude: 23.794113, longitude: 90.412882), info: " Doctors Dgree info ")
        
        
        let sanzid7 = Capital(title: " Professor Dr. K.M.H.S. Sirajul Haque ", subtitle : "tel://88029118219", coordinate: CLLocationCoordinate2D(latitude: 23.746595, longitude: 90.371071 ), info: " Doctors Dgree info")
        
        let sanzid8 = Capital(title: " Professor Dr. M. Jalaluddin ", subtitle: "tel://88029117219", coordinate: CLLocationCoordinate2D(latitude: 23.740771, longitude: 90.383427), info: "Doctors Dgree info")
        
        
        let sanzid9 = Capital(title: "Professor Dr. M. Nazrul Islam  ",subtitle:"tel://88029669480", coordinate: CLLocationCoordinate2D(latitude: 23.861312, longitude: 90.400543), info: "Doctors Dgree info.")
        
        
        
        let sanzid10 = Capital(title: " Professor Dr. Nasir Uddin Ahmed ", subtitle: "tel://88029115602", coordinate: CLLocationCoordinate2D(latitude: 23.749794, longitude: 90.368954), info: "Doctors Dgree info")
        
        
        let sanzid11 = Capital(title: "Professor Dr. Munshi Md. Mujibur Rahman",subtitle : "tel://88029616074", coordinate: CLLocationCoordinate2D(latitude: 23.746600, longitude: 90.385702), info: "Doctors Dgree info")
        
        
        let sanzid12 = Capital(title: " Professor Dr. Momenuzzaman ", subtitle : "tel://88028836444", coordinate: CLLocationCoordinate2D(latitude: 23.804727, longitude: 90.382682), info: " Doctors Dgree info.")
        
        
        let sanzid13 = Capital(title: "Professor Dr. M. Touhidul Haque ", subtitle: "tel://8801717351631", coordinate: CLLocationCoordinate2D(latitude: 23.745573, longitude: 90.375147), info: "Doctors Dgree info.")
        
        
        let sanzid14 = Capital(title: "Professor Dr. Syed Ali Ahsan",subtitle:"tel://88028613883", coordinate: CLLocationCoordinate2D(latitude: 23.745258, longitude: 90.382171), info: " Doctors Dgree info ")
        
        
        let sanzid15 = Capital(title: "Professor Dr. Sufia Rahman", subtitle: "tel://88028159711", coordinate: CLLocationCoordinate2D(latitude: 23.753548, longitude: 90.367460), info: "Doctors Dgree info")
        
        
        let sanzid16 = Capital(title: "Professor Dr. Sayed Azizul Haque",subtitle : "tel://88028620353", coordinate: CLLocationCoordinate2D(latitude: 23.738820, longitude: 90.381225), info: "Doctors Dgree info")
        
        let sanzid17 = Capital(title: "Professor Dr. Razia Sultana Mahmud", subtitle : "tel://88029670210 ", coordinate: CLLocationCoordinate2D(latitude: 23.740124, longitude: 90.380628), info: "Doctors Dgree info")
        
        let sanzid18 = Capital(title: "Professor Dr. Nazrul Islam   ", subtitle: "tel://88029661491", coordinate: CLLocationCoordinate2D(latitude: 23.738720, longitude: 90.377632), info: "Doctors Dgree info ")
        
        let sanzid19 = Capital(title: "Professor Dr. Md. Shahabuddin Talukder",subtitle:"tel://8801841276556", coordinate: CLLocationCoordinate2D(latitude: 23.809894, longitude: 90.431202), info: "Doctors Dgree info")
        
        
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
        
        let region = MKCoordinateRegion(center: center,span:MKCoordinateSpan(latitudeDelta:0.005, longitudeDelta:0.005))
        
        //let span = MKCoordinateSpanMake(0.005, 0.005)
        //let region = MKCoordinateRegion(center: center, span: span)
        
        self.mapView.setRegion(region, animated: true)
        
        self.mapView.showsUserLocation = true
        
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: NSError)
    {
        print("Error: " + error.localizedDescription, terminator: "")
    }

    @IBAction func sender(_ sender: AnyObject) {
        
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
