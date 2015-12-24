//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Le, Trong on 12/23/15.
//  Copyright © 2015 Trong Le. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    
    var happiness: Int = 100 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI() {
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }

}
