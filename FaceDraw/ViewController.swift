//
//  ViewController.swift
//  FaceDraw
//
//  Created by Mackenzie Kinzel on 5/14/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceView: FaceView!
    
    var expression = FacialExpression(eyes: .open, mouth: .grin)
    
}

