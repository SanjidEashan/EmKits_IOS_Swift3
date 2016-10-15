//
//  Capital.swift
//  File 2
//


import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    var title: String?
    var subtitle : String?
    
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    
    init(title: String, subtitle : String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.info = info
        
        
    }
}
