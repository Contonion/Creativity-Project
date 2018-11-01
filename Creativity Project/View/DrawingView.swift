//
//  TableViewCell.swift
//  Creativity Project
//
//  Created by Jackman, Cade on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView {
    public override func draw(_ rect: CGRect) -> Void {
        //Drawing Code
        createStickFigure().stroke()
        drawTurtle().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath {
        let figure : UIBezierPath = UIBezierPath()
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        figure.addArc(withCenter: CGPoint(x: 200, y:200), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(2) * CGFloat.pi, clockwise: true)
        figure.move(to: CGPoint(x:200, y:220))
        figure.addLine(to: CGPoint(x:200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y:240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x:180, y: 300))
        figure.move(to: CGPoint(x:200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        return figure
    }
    private func drawTurtle() -> UIBezierPath {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y:250))
        logo.addLine(to: CGPoint(x:100, y: 300))
        logo.addLine(to: CGPoint(x:50, y:350))
        logo.close()
        logo.fill()
        return logo
    }
    private func drawFace() -> UIBezierPath {
        let face = UIBezierPath()
        UIColor.white.setStroke()
        face.lineWidth = 3.0
        face.addArc(withCenter: CGPoint(x: 150, y: 150), radius: CGFloat(25), startAngle: CGFloat(0), endAngle: CGFloat(2) * CGFloat.pi, clockwise: true)
        face.move(to: CGPoint(x: 150, y: 150))
        return face
    }
}
