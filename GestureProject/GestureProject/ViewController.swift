//
//  ViewController.swift
//  GestureProject
//
//  Created by Areej on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var arrSwipe = ["art1","book1","art3","cup","art4","pen"]
var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var imgfixed: UIImageView!
    
    @IBOutlet weak var swipeGR: UIImageView!
    
    @IBAction func swipGR(_ sender: UISwipeGestureRecognizer) {
        if index > arrSwipe.count - 1 {
            index = 0
          
        }
        swipeGR.image = UIImage(named: arrSwipe[index])
        for arr in arrSwipe {
            swipeGR.image = UIImage(named: arrSwipe[index])
            if index % 2 == 0 {
                imgfixed.image = UIImage(named: "happy")
               
            }
            else {
                if index % 2 != 0{
                
                imgfixed.image = UIImage(named: "sad")
                }
               
            }
           
        }
        index+=1
    }
}

