//
//  TeethViewController.swift
//  File 2
//


import UIKit
import MapKit
import CoreLocation

class TeethViewController: UIViewController {

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
        
        
        
        
        
        
        
        let sanzid1 = Capital(title: " Professor Dr. Md. Shamsul Alam",subtitle : "tel://88029615412", coordinate: CLLocationCoordinate2D(latitude: 23.746597, longitude: 90.385698), info: " Doctors Dgree info ")
        
        let sanzid2 = Capital(title: "Professor Dr. Khandaker Abdul Azim", subtitle : "tel://880291288357", coordinate: CLLocationCoordinate2D(latitude: 23.745159, longitude: 90.372428), info: "Doctors Dgree info ")
        
        let sanzid3 = Capital(title: "Dr. Mohammed Shafi Ullah", subtitle: "tel://880293603312", coordinate: CLLocationCoordinate2D(latitude: 23.737611, longitude: 90.409833), info: "Doctors Dgree info")
        
        let sanzid4 = Capital(title: "Dr. Nurul Amin",subtitle:"tel://8801914553088", coordinate: CLLocationCoordinate2D(latitude: 23.743194, longitude: 90.370254), info: "aDoctors Dgree info")
        
        let sanzid5 = Capital(title: "Dr. md. khurshid alam", subtitle: "tel://8801715452348", coordinate: CLLocationCoordinate2D(latitude: 23.794469, longitude: 90.405688), info: " Doctors Dgree info ")
        
        
        let sanzid6 = Capital(title: "Dr. Salahuddin ( Swapan )",subtitle : "tel://8801711958143", coordinate: CLLocationCoordinate2D(latitude: 23.744244, longitude: 90.384610), info: " Doctors Dgree info ")
        
        
        let sanzid7 = Capital(title: " Dr. Syed T. Ahsan Ratan ", subtitle : "tel://8801711823382", coordinate: CLLocationCoordinate2D(latitude: 23.745804, longitude: 90.385173 ), info: " Doctors Dgree info")
        
        let sanzid8 = Capital(title: " Dr. Clopa Pina Podder  ", subtitle: "tel://8801914553088", coordinate: CLLocationCoordinate2D(latitude: 23.750814, longitude: 90.368387), info: "Doctors Dgree info")
        
        
        let sanzid9 = Capital(title: "Dr. Mohammad Saiful Alam Talukder ",subtitle:"tel://8801193368478", coordinate: CLLocationCoordinate2D(latitude: 23.738506, longitude: 90.381227), info: "Doctors Dgree info.")
        
        
        
        let sanzid10 = Capital(title: "Dr. Naser Md. Kamrul Hasan (Riad) ", subtitle: "tel://01716055020", coordinate: CLLocationCoordinate2D(latitude: 23.740272, longitude: 90.382929), info: "Doctors Dgree info")
        
        
        let sanzid11 = Capital(title: "Dr. H.M. Ferdushi ( Manata )",subtitle : "tel://8801716357026", coordinate: CLLocationCoordinate2D(latitude: 23.743948, longitude: 90.384641), info: "Doctors Dgree info")
        
        let sanzid12 = Capital(title: " Dr. M. A. Sikder ", subtitle : "tel://8801914553088", coordinate: CLLocationCoordinate2D(latitude: 23.767588, longitude: 90.367765), info: " Doctors Dgree info.")
        
        
        let sanzid13 = Capital(title: "Dr. M. Shajib Amin", subtitle: "tel://88029131901", coordinate: CLLocationCoordinate2D(latitude: 23.752602, longitude: 90.384775), info: "Doctors Dgree info.")
        
        
        let sanzid14 = Capital(title: "Dr. Md. Abdullah Khan ",subtitle:"tel://88028625317", coordinate: CLLocationCoordinate2D(latitude: 23.745935, longitude: 90.385453), info: " Doctors Dgree info ")
        
        
        let sanzid15 = Capital(title: "Dr. Mehedi Amin ", subtitle: "tel://88028159457", coordinate: CLLocationCoordinate2D(latitude: 23.743731, longitude: 90.382736), info: "Doctors Dgree info")
        
        
        let sanzid16 = Capital(title: "Professor Dr. Md. Golam Kibria",subtitle : "tel://880293603312", coordinate: CLLocationCoordinate2D(latitude: 23.779479, longitude: 90.379177), info: "Doctors Dgree info")
        
        let sanzid17 = Capital(title: "Dr. Golam Mohiuddin Chowdhury", subtitle : "tel://8801841276556 ", coordinate: CLLocationCoordinate2D(latitude: 23.809897, longitude: 90.431202), info: "Doctors Dgree info")
        
        let sanzid18 = Capital(title: "Dr. Motiur Rahman Molla ", subtitle: "tel://8801841276556", coordinate: CLLocationCoordinate2D(latitude: 23.745275, longitude: 90.382167), info: "Doctors Dgree info ")
        
        let sanzid19 = Capital(title: "Dr. Md. Badiul Alam",subtitle:"tel://88029664028", coordinate: CLLocationCoordinate2D(latitude: 23.739586, longitude: 90.375102), info: "Doctors Dgree info")
        
        
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
