//
//  EmotionsViewController.swift
//  FaceDraw
//
//  Created by Mackenzie Kinzel on 5/16/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination
        if let navigationController = destinationViewController as? UINavigationController {
            destinationViewController = navigationController.visibleViewController ?? destinationViewController
        }
        if let faceViewController = destinationViewController as? FaceViewController,
            let identifier = segue.identifier,
            let expression = emotionalFaces[identifier] {
                    faceViewController.expression = expression
            faceViewController.navigationItem.title = (sender as? UIButton)?.currentTitle
            }
        }
    
    private let emotionalFaces: Dictionary<String,FacialExpression> = [
        "happy" : FacialExpression(eyes: .open, mouth: .smile),
        "sad" : FacialExpression(eyes: .closed, mouth: .frown),
        "worried" : FacialExpression(eyes: .open, mouth: .smirk)
    ]
}
