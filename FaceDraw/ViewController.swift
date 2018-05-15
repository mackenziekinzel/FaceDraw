//
//  ViewController.swift
//  FaceDraw
//
//  Created by Mackenzie Kinzel on 5/14/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            let handler = #selector(FaceView.changeScale(byReactingTo:))
            let pinchRecognizer = UIPinchGestureRecognizer(target: self, action: handler)
            faceView.addGestureRecognizer(pinchRecognizer)
            updateUI()
        }
    }
    
    var expression = FacialExpression(eyes: .open, mouth: .grin) {
        didSet {
            updateUI()
        }
    }
    
    private let mouthCurvatures = [FacialExpression.Mouth.grin:0.5, .smile:1.0, .neutral: 0.0, .smirk:-0.5, .frown:-1.0]
    
    private func updateUI() {
        
        switch expression.eyes {
        case .open:
            faceView?.eyesOpen = true
        case .closed:
            faceView?.eyesOpen = false
        case .squinting:
            faceView?.eyesOpen = false
        }
        
        faceView.mouthCurvature = mouthCurvatures[expression.mouth] ?? 0.0
    }
    
}


