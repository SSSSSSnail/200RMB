//
//  ViewController.swift
//  200RMB
//
//  Created by Snail on 21/3/2017.
//  Copyright © 2017 Snail. All rights reserved.
// test

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollContentView: UIView!
    fileprivate let lineLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollContentView.layer.addSublayer(lineLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollContentView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        self.lineLayer.setNeedsDisplay()
    }
}
