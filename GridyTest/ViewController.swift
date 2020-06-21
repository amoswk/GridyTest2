//
//  ViewController.swift
//  GridyTest
//
//  Created by Amos Katz on 6/21/20.
//  Copyright © 2020 Amos Katz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewOutlet: UIView!
    var path = UIBezierPath()
                   var gridWidthLines: CGFloat
                   
                   {
                       return 3
                   }
                  var gridHeightLines: CGFloat
                   {
                       return 3
                   }

                  var gridWidth: CGFloat
                   {
                     return self.view.bounds.width/CGFloat(gridWidthLines)
                   }

                  var gridHeight: CGFloat
                   {
                     return self.view.bounds.height/CGFloat(gridHeightLines)
                   }

                   var gridCenter: CGPoint {
                     return CGPoint(x: self.view.bounds.midX, y: self.view.bounds.midY)
                   }

                   func drawGrid() -> UIBezierPath
                   {
                       path = UIBezierPath()
                       path.lineWidth = 5.0

                       for index in 1...Int(gridWidthLines) - 1
                       {
                         let start = CGPoint(x: CGFloat(index) * gridWidth, y: 0)
                         let end = CGPoint(x: CGFloat(index) * gridWidth, y:self.view.bounds.height)
//                         let start2 = CGPoint(x: CGFloat(index) * gridHeight, y: 0)
//                         let end2 = CGPoint(x: CGFloat(index) * gridHeight, y:self.view.bounds.width)
                           path.move(to: start)
                           path.addLine(to: end)
                       }
                       //Close the path.
                       path.close()
                    
                        return path

                   }

                 func draw(_ rect: CGRect)
                   {
                    
                    drawGrid()
                       UIColor.blue.setStroke()
                       path.stroke()
                   }
}






//let rectanglePath = UIBezierPath(rect: CGRect(x: 89, y: 9, width: 100, height: 100))
//UIColor.gray.setFill()
//rectanglePath.fill()
//
//
//
//let bezierPath = UIBezierPath()
//bezierPath.move(to: CGPoint(x: 113.5, y: 8.5))
//bezierPath.addCurve(to: CGPoint(x: 113.5, y: 108.5), controlPoint1: CGPoint(x: 112.5, y: 108.5), controlPoint2: CGPoint(x: 113.5, y: 108.5))
//UIColor.black.setStroke()
//bezierPath.lineWidth = 1
//bezierPath.stroke()
//
//
//
//let bezier2Path = UIBezierPath()
//bezier2Path.move(to: CGPoint(x: 139.5, y: 8.5))
//bezier2Path.addCurve(to: CGPoint(x: 139.5, y: 108.5), controlPoint1: CGPoint(x: 138.5, y: 108.5), controlPoint2: CGPoint(x: 139.5, y: 108.5))
//UIColor.black.setStroke()
//bezier2Path.lineWidth = 1
//bezier2Path.stroke()
//
//
//
//let bezier3Path = UIBezierPath()
//bezier3Path.move(to: CGPoint(x: 163.5, y: 8.5))
//bezier3Path.addCurve(to: CGPoint(x: 163.5, y: 108.5), controlPoint1: CGPoint(x: 162.5, y: 108.5), controlPoint2: CGPoint(x: 163.5, y: 108.5))
//UIColor.black.setStroke()
//bezier3Path.lineWidth = 1
//bezier3Path.stroke()
//
//
//let bezier4Path = UIBezierPath()
//bezier4Path.move(to: CGPoint(x: 89.5, y: 34.5))
//bezier4Path.addLine(to: CGPoint(x: 189.5, y: 34.5))
//UIColor.black.setStroke()
//bezier4Path.lineWidth = 1
//bezier4Path.stroke()
//
//
//let bezier5Path = UIBezierPath()
//bezier5Path.move(to: CGPoint(x: 89.5, y: 61.5))
//bezier5Path.addLine(to: CGPoint(x: 189.5, y: 61.5))
//UIColor.black.setStroke()
//bezier5Path.lineWidth = 1
//bezier5Path.stroke()
//
//
//
//let bezier6Path = UIBezierPath()
//bezier6Path.move(to: CGPoint(x: 89.5, y: 86.5))
//bezier6Path.addLine(to: CGPoint(x: 189.5, y: 86.5))
//UIColor.black.setStroke()
//bezier6Path.lineWidth = 1
//bezier6Path.stroke()
