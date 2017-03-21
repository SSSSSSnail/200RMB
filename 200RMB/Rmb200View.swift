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
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        if let image = UIImage(named: "1") {
            image.draw(in: rect)
        }
        
        context.setLineCap(.square)
        context.setLineWidth(5)
        context.setStrokeColor(gray: 1, alpha: 1)
        
        context.beginPath()
        context.move(to: CGPoint(x: 0, y: 0))
        context.addLine(to: CGPoint(x: 300, y: 300))
        context.strokePath()
    }
}
