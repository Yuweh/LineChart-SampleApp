//
//  ViewController.swift
//  LineChart-Sample
//
//  Created by Jay Bergonia on 20/08/2019.
//  Copyright © 2019 Jay Bergonia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lineChart: LineChart!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let f: (CGFloat) -> CGPoint = {
            let noiseY = (CGFloat(arc4random_uniform(2)) * 2 - 1) * CGFloat(arc4random_uniform(4))
            let noiseX = (CGFloat(arc4random_uniform(2)) * 2 - 1) * CGFloat(arc4random_uniform(4))
            let b: CGFloat = 5
            let y = 2 * $0 + b + noiseY
            return CGPoint(x: $0 + noiseX, y: y)
        }
        
        let xs = [Int](1..<20)
        
        let points = xs.map({f(CGFloat($0 * 10))})
        
        lineChart.deltaX = 20
        lineChart.deltaY = 30
        
        lineChart.plot(points)
    }


}

