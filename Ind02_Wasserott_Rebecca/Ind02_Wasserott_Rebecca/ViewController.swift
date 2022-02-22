//
//  ViewController.swift
//  Ind02_Wasserott_Rebecca
//
//  Created by Rebecca Wasserott on 2/16/22.
//

import UIKit

class ViewController: UIViewController {

    //Name label
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var seal_1: UIImageView!
    @IBOutlet weak var seal_2: UIImageView!
    @IBOutlet weak var seal_3: UIImageView!
    @IBOutlet weak var seal_4: UIImageView!
    @IBOutlet weak var seal_5: UIImageView!
    @IBOutlet weak var seal_6: UIImageView!
    @IBOutlet weak var seal_7: UIImageView!
    @IBOutlet weak var seal_8: UIImageView!
    @IBOutlet weak var seal_9: UIImageView!
    @IBOutlet weak var seal_10: UIImageView!
    @IBOutlet weak var seal_11: UIImageView!
    @IBOutlet weak var seal_12: UIImageView!
    @IBOutlet weak var seal_13: UIImageView!
    @IBOutlet weak var seal_14: UIImageView!
    @IBOutlet weak var seal_15: UIImageView!
    @IBOutlet weak var seal_16: UIImageView!
    @IBOutlet weak var seal_17: UIImageView!
    @IBOutlet weak var seal_18: UIImageView!
    @IBOutlet weak var seal_19: UIImageView!
    
    @IBOutlet weak var Seal_Answer: UIImageView!
    @IBOutlet weak var hole: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Shuffle button
    @IBAction func Shuffle(_ sender: UIButton) {
        
    }
    
    
    
    //Show Answer Button
    @IBAction func ShowAnswer(_ sender: UIButton) {
       //if statement to show answer
        if Seal_Answer.isHidden{
            Seal_Answer.isHidden = false
            sender.setTitle("Hide Answer", for: .normal)
            
            
       //else to revert the answer back
        } else {
            Seal_Answer.isHidden = true
            sender.setTitle("Show Answer", for: .normal)
        }
    }
    
    
    
    //Tap gesture for bottom left of hole
    @IBAction func Tap19(_ sender: UITapGestureRecognizer) {
        
      //if statement to move hole left and right on bottom row
        if (sender.view!.center.x == hole.center.x + 93
            || sender.view!.center.x == hole.center.x - 93)
            && sender.view!.center.y == hole.center.y
            
        {
            let temp = sender.view!.center
            sender.view!.center = hole.center
            hole.center = temp
        }
            
        //if statement to move hole up and down
            if (sender.view!.center.y == hole.center.y + 93
                || sender.view!.center.y == hole.center.y - 93)
                && sender.view!.center.x == hole.center.x
        {
            let temp = sender.view!.center
            sender.view!.center = hole.center
            hole.center = temp
        }
        
        
        
            
    }
    
    
    
    
}

