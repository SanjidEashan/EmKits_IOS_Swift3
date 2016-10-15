//
//  HosViewController.swift
//  File 2
//


import UIKit
import MapKit
import CoreLocation

class HosViewController: UIViewController {

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
        
        
        
        
        
        
        
        let sanzid1 = Capital(title: "Apolo Hospital",subtitle : "tel://8801760379898", coordinate: CLLocationCoordinate2D(latitude: 23.741821, longitude: 90.383058), info: " Hospital Info ")
        
        let sanzid2 = Capital(title: "Lab Aid Hospital" , subtitle : "tel://8801819215329", coordinate: CLLocationCoordinate2D(latitude: 23.749241, longitude: 90.386236), info: " Hospital Info  ")
        
        let sanzid3 = Capital(title: "Apolo Hospital", subtitle: "tel://8801720128979", coordinate: CLLocationCoordinate2D(latitude: 23.739168, longitude: 90.375901), info: "Hospital Info")
        
        let sanzid4 = Capital(title: "Lab Aid Hospital",subtitle:"tel://8801712000422", coordinate: CLLocationCoordinate2D(latitude: 23.748740, longitude: 90.393059), info: "Hospital Info")
        
        let sanzid5 = Capital(title: "Apolo Hospital ", subtitle: "tel://8801711848792", coordinate: CLLocationCoordinate2D(latitude: 23.752307, longitude: 90.385375), info: " Hospital Info ")
        
        
        let sanzid6 = Capital(title: "Lab Aid Hospital",subtitle : "tel://88029661213", coordinate: CLLocationCoordinate2D(latitude: 23.741836, longitude: 90.383058), info: " Hospital Info ")
        
        
        let sanzid7 = Capital(title: " Apolo Hospital  ", subtitle : "tel://Dr. Sayed Mohammad Arif ", coordinate: CLLocationCoordinate2D(latitude: 23.745264, longitude: 90.382166 ), info: " Hospital Info")
        
        let sanzid8 = Capital(title: " Lab Aid Hospital  ", subtitle: "tel://88028124990", coordinate: CLLocationCoordinate2D(latitude: 23.749247, longitude: 90.386237), info: "Hospital Info")
        
        
        let sanzid9 = Capital(title: "Lab Aid Hospital ",subtitle:"tel://88029669480", coordinate: CLLocationCoordinate2D(latitude: 23.739118, longitude: 90.381660), info: "Hospital Info")
        
        
        
        let sanzid10 = Capital(title: "Lab Aid Hospital", subtitle: "tel://8801817117703", coordinate: CLLocationCoordinate2D(latitude: 23.718176, longitude: 90.420362), info: "Hospital Info")
        
        
        let sanzid11 = Capital(title: "Apolo Hospital ",subtitle : "tel://88029660015", coordinate: CLLocationCoordinate2D(latitude: 23.743388, longitude: 90.384184), info: "Hospital Info")
        
        let sanzid12 = Capital(title: " Apolo Hospital ", subtitle : "tel://88029359811", coordinate: CLLocationCoordinate2D(latitude: 23.745208, longitude: 90.413363), info: " Hospital Info")
        
        
        let sanzid13 = Capital(title: "Apolo Hospital", subtitle: "tel://88029672277", coordinate: CLLocationCoordinate2D(latitude: 23.739586, longitude: 90.375102), info: "Hospital Info.")
        
        
        let sanzid14 = Capital(title: "Lab Aid Hospital",subtitle:"tel://028695357", coordinate: CLLocationCoordinate2D(latitude: 23.756881, longitude: 90.387312), info: " Hospital Info ")
        
        
        let sanzid15 = Capital(title: "Apolo Hospital", subtitle: "tel://029236998", coordinate: CLLocationCoordinate2D(latitude: 23.715837, longitude: 90.401844), info: "Hospital Info")
        
        
        let sanzid16 = Capital(title: "Lab Aid Hospital ",subtitle : "tel://8801713091940", coordinate: CLLocationCoordinate2D(latitude: 23.794092, longitude: 90.412882), info: "Hospital Info ")
        
        let sanzid17 = Capital(title: "Apolo Hospital", subtitle : "tel://88028814299 ", coordinate: CLLocationCoordinate2D(latitude: 23.790931, longitude: 90.416254), info: " Hospital Info ")
        
        let sanzid18 = Capital(title: "Lab Aid Hospital (Uttora)  ", subtitle: "tel://8801729276556", coordinate: CLLocationCoordinate2D(latitude: 23.809892, longitude: 90.431203), info: "Hospital Info ")
        
        let sanzid19 = Capital(title: "Lab Aid Hospital",subtitle:"tel://88028974235", coordinate: CLLocationCoordinate2D(latitude: 23.814359, longitude: 90.397669), info: " Hospital Info ")
        
        
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
    
    
    @IBAction func sender(sender: AnyObject) {
        
        
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
