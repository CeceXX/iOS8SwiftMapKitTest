//
//  ViewController.swift
//  iOS8SwiftMApKitTutorial
//
//  Created by Gerardo Camilo on 04/10/14.
//  Copyright (c) 2014 ___GRCS___. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let location = CLLocationCoordinate2D(latitude: 18.473023, longitude:-69.887120)

        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegionMake(location, span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "The place you're looking for"
        annotation.subtitle = "Zona Colonial, Santo Domingo"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

