//
//  ViewController.swift
//  SwiftyLocationKit
//
//  Created by DanielZSY on 05/18/2021.
//  Copyright (c) 2021 DanielZSY. All rights reserved.
//

import UIKit
import BFKit
import CoreLocation
import SwiftyLocationKit

class ViewController: UIViewController {
    
    private lazy var btnLocation: UIButton = {
        let item = UIButton.init(frame: CGRect.init(x: 20, y: 100, width: 150, height: 45))
        item.isUserInteractionEnabled = true
        item.adjustsImageWhenHighlighted = false
        item.setTitle("Start Location", for: .normal)
        item.setTitleColor(.white, for: .normal)
        item.backgroundColor = .orange
        item.addTarget(self, action: #selector(self.btnLocationClick), for: .touchUpInside)
        return item
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BFLog.active = true
        self.view.addSubview(btnLocation)
        ZLocationManager.shared.locationManager.requestAlwaysAuthorization()
    }
    @objc private func btnLocationClick() {
        if ZLocationManager.shared.locationServicesEnabled {
            ZLocationManager.shared.locationManager.startUpdatingLocation()
        } else {
            let itemvc = UIAlertController.init(title: "Location", message: "Unauthorized positioning", preferredStyle: .alert)
            let ok = UIAlertAction.init(title: "OK", style: .cancel) { (action) in
                guard let url = URL.init(string: UIApplication.openSettingsURLString) else {return }
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: { success in
                        BFLog.debug("open status: \(success)")
                    })
                }
            }
            itemvc.addAction(ok)
            self.present(itemvc, animated: true, completion: nil)
        }
    }
}

