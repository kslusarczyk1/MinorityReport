//
//  ViewController.swift
//  minorityReport
//
//  Created by KSlusarczyk on 6/13/17.
//  Copyright © 2017 KSlusarczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //outlets
    @IBOutlet weak var preCogs: UILabel!
    @IBOutlet weak var theFuture: UILabel!

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }

    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        
        print("Drag")
        
        let point = sender.location(in: view)
        
        print(point.x, point.y)
        theFuture.center = point
        
        if sender.state == .ended
        {
            print("end")
            UIView.animate(withDuration: 0.75, animations:
                {
                self.theFuture.center = self.view.center
            })
        }
        
        
        
        
    }

    


}

