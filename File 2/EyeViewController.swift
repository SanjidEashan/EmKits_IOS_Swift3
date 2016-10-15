

import UIKit
import MapKit
import CoreLocation


class EyeViewController: UIViewController {

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
            
            
            
            
            
            
            
            let sanzid1 = Capital(title: "Dr. A.K.M. Shariful Alam",subtitle : "tel://8801731174661", coordinate: CLLocationCoordinate2D(latitude: 23.711197, longitude: 90.401416), info: " Doctors Dgree info ")
            
            let sanzid2 = Capital(title: "Dr. A.K.M. Waliullah", subtitle : "tel://8801711405519", coordinate: CLLocationCoordinate2D(latitude: 23.779074, longitude: 90.425541), info: "Shahid Suhrawardi Hospital & Begum Khaleda Zia Medical College -----MBBS, MCPS(Eye), FCPS(Eye) ")
            
            let sanzid3 = Capital(title: "Dr. A.M. Rezaur Rahman", subtitle: "tel://02961393034", coordinate: CLLocationCoordinate2D(latitude: 23.733295, longitude: 90.410809), info: "Doctors Dgree info")
            
            let sanzid4 = Capital(title: "Dr. Abdur Rakib Tushar",subtitle:"tel://02961393033", coordinate: CLLocationCoordinate2D(latitude: 23.743194, longitude: 90.382667), info: "aDoctors Dgree info")
            
            let sanzid5 = Capital(title: "Dr. md. khurshid alam", subtitle: "tel://8801715452348", coordinate: CLLocationCoordinate2D(latitude: 23.794469, longitude: -90.405688), info: " Doctors Dgree info ")
            
            
            let sanzid6 = Capital(title: "Dr.Nazmun Nahar",subtitle : "tel://029534631", coordinate: CLLocationCoordinate2D(latitude: 23.758554, longitude: 90.385280), info: " Doctors Dgree info ")
            
            
            let sanzid7 = Capital(title: " Dr. Rashid Hyder", subtitle : "tel://8801720566474", coordinate: CLLocationCoordinate2D(latitude: 23.791086, longitude: 90.418620 ), info: " Doctors Dgree info")
            
            let sanzid8 = Capital(title: " Dr S M Munirul Huq ", subtitle: "tel://801716168751", coordinate: CLLocationCoordinate2D(latitude: 23.788960, longitude: 90.400863), info: "Doctors Dgree info")
            
            
            let sanzid9 = Capital(title: "Dr. Dipok Kumar Nag ",subtitle:"tel://029130638", coordinate: CLLocationCoordinate2D(latitude: 23.752797, longitude: 90.366755), info: "Doctors Dgree info.")
            
            
            
            let sanzid10 = Capital(title: "Dr. Fakir Mohammed ", subtitle: "tel://8801914871772", coordinate: CLLocationCoordinate2D(latitude: 23.810301, longitude: 90.367785), info: "Doctors Dgree info")
            
            
            let sanzid11 = Capital(title: "Dr. Kazi Md. Aftab-Uz-Zaman",subtitle : "tel://029467632", coordinate: CLLocationCoordinate2D(latitude: 23.873617, longitude: 90.396491), info: "Doctors Dgree info")
            
            let sanzid12 = Capital(title: " Prof. Md. Israfil ", subtitle : "tel://961393034", coordinate: CLLocationCoordinate2D(latitude: 23.743182, longitude: 90.382682), info: " Doctors Dgree info.")
            
            
            let sanzid13 = Capital(title: "Professor Dr. A.H.M. Enayet Hussain", subtitle: "tel://88029119738", coordinate: CLLocationCoordinate2D(latitude: 23.750569, longitude: 90.368541), info: "Doctors Dgree info.")
            
            
            let sanzid14 = Capital(title: "Dr. Mukti Rani Mitra",subtitle:"tel://01715164494", coordinate: CLLocationCoordinate2D(latitude: 23.774676, longitude: 90.369473), info: " Doctors Dgree info ")
            
            
            let sanzid15 = Capital(title: "Dr. Hiramoni Sarma", subtitle: "tel://88028159457", coordinate: CLLocationCoordinate2D(latitude: 23.753016, longitude: 90.381460), info: "Doctors Dgree info")
            
            
            let sanzid16 = Capital(title: "Dr. Tarzia Asma Zafarullah",subtitle : "tel://88029660350", coordinate: CLLocationCoordinate2D(latitude: 23.779479, longitude: 90.379177), info: "Doctors Dgree info")
            
            let sanzid17 = Capital(title: "DR.Tanveer Ahmed", subtitle : "tel://8801925122588 ", coordinate: CLLocationCoordinate2D(latitude: 23.803627, longitude: 90.361602), info: "Doctors Dgree info")
            
            let sanzid18 = Capital(title: "Dr. Sarwar Alam  ", subtitle: "tel://028614927", coordinate: CLLocationCoordinate2D(latitude: 23.745275, longitude: 90.382167), info: "Doctors Dgree info ")
            
            let sanzid19 = Capital(title: "Dr. Ziaul Ahsan",subtitle:"tel://028616644", coordinate: CLLocationCoordinate2D(latitude: 23.738808, longitude: 90.396467), info: "Doctors Dgree info")
            
            
            mapView.addAnnotations([sanzid1, sanzid2, sanzid3, sanzid4, sanzid5,sanzid6, sanzid7, sanzid8, sanzid9, sanzid10,sanzid11, sanzid12, sanzid13, sanzid14, sanzid15,sanzid16, sanzid17, sanzid18, sanzid19])
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
            // 1
            let identifier = "Capital"
            
            // 2
            if annotation.isKindOfClass(Capital.self) {
                // 3
                var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                
                if annotationView == nil {
                    //4
                    annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:identifier)
                    annotationView!.canShowCallout = true
                    
                    // 5
                    let btn = UIButton(type: .DetailDisclosure)
                    let btn2 = UIButton(type: .ContactAdd)
                    
                    
                    
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
        
        func mapView(mapView: MKMapView, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
            
            
            if control == annotationView.rightCalloutAccessoryView
                
            {
                let app = UIApplication.sharedApplication()
                app.openURL(NSURL(string: (annotationView.annotation!.subtitle!)!)!)
                
                
            }
                
            else if control == annotationView.leftCalloutAccessoryView {
                
                let capital = annotationView.annotation as! Capital
                let placeName = capital.title
                let placeInfo = capital.info
                
                
                
                let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .Alert)
                
                ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                self.presentViewController(ac, animated: true, completion: nil)
                
                
                
            }
            
            
        }
        
        
        
        
        
        
        func LocationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
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
        
        func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
        {
            print("Error: " + error.localizedDescription, terminator: "")
        }
        

    @IBAction func segment(sender: AnyObject) {
        
        switch sender.selectedSegmentIndex {
            
        case 1 :
            mapView.mapType = MKMapType.SatelliteFlyover
        case 2 :
            mapView.mapType = MKMapType.Hybrid
        default:
            mapView.mapType = MKMapType.Standard
            
            
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
