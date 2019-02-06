//
//  ViewController.swift
//  Ye Olde Fortune Ball
//
//  Created by Gregory Paul Sim on 2019-02-05.
//  Copyright © 2019 Gregory Paul Sim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var magicBall: UIImageView!
    var ballNumber : Int = 0
    let ballFaceArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomFaceType()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {

        randomFaceType()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype,
                              with event: UIEvent?){
        randomFaceType()
    }
    func randomFaceType(){
        ballNumber = Int(arc4random_uniform(5))
        
        magicBall.image = UIImage(named: ballFaceArray[ballNumber])
    }

}

