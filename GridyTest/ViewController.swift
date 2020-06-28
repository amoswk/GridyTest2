//
//  ViewController.swift
//  GridyTest
//
//  Created by Amos Katz on 6/21/20.
//  Copyright © 2020 Amos Katz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    

    override func viewDidLoad() {
        let grid = GridView(frame: self.view.frame)
        self.view.addSubview(grid)
  
        // change background here
         self.view.backgroundColor = UIColor.clear
    }

   
    
}
class GridView: UIView {
  override func draw(_ rect: CGRect)
                      {
                       var bezierPath = UIBezierPath()
                       bezierPath.lineWidth = 5.0
                       for index in 1...3 {
                           let start = CGPoint(x: CGFloat(index) * 50, y: 0)
                           let end = CGPoint(x: CGFloat(index) * 50, y: self.bounds.height)
                           let start2 = CGPoint(x: 0, y: CGFloat(index) * 50)
                           let end2 = CGPoint(x: self.bounds.width, y: CGFloat(index) * 50)
                           bezierPath.move(to: start)
                           bezierPath.addLine(to: end)
                           bezierPath.move(to: start2)
                           bezierPath.addLine(to: end2)
                           
                       }

                       bezierPath.close()
                        
                        
                       UIColor.blue.setStroke()
                        
                    
                        
                       bezierPath.stroke()
                       
               
                      }
}





