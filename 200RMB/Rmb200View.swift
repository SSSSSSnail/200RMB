//
//  Rmb200View.swift
//  200RMB
//
//  Created by Snail on 21/3/2017.
//  Copyright © 2017 Snail. All rights reserved.
//

import UIKit

class Rmb200View: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        if let image = UIImage(named: "1") {
            image.draw(in: rect)
        }
        
        let lineLayer = CAShapeLayer()
        lineLayer.lineWidth = 1
        lineLayer.strokeColor = UIColor.red.cgColor
        
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint.zero)
        linePath.addLine(to: CGPoint(x: 300, y: 300))
        
        lineLayer.path = linePath.cgPath
        
        layer.addSublayer(lineLayer)
    }
}
