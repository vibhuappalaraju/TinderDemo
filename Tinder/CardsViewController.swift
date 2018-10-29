//
//  CardsViewController.swift
//  Tinder
//
//  Created by Vibhu Appalaraju on 10/29/18.
//  Copyright © 2018 Vibhu Appalaraju. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    @IBOutlet weak var cardImage: UIImageView!
    var cardInitialCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardImage.isUserInteractionEnabled = true
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTap(_ sender: Any) {
        self.performSegue(withIdentifier: "profileSegue", sender: nil)
    }
  
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        if sender.state == .began {
            cardInitialCenter = cardImage.center
            print("Gesture began")

            
        } else if sender.state == .changed {
            if(translation.x < view.center.x){
                self.cardImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double(translation.x) * Double.pi / 180))
            }
            else{
                self.cardImage.transform = CGAffineTransform(rotationAngle: CGFloat(-Double(translation.x) * Double.pi / 180))
            }
            print("Gesture is moving")
            
            
        } else if sender.state == .ended {
            UIView.animate(withDuration: 0.5) {
                print("translation \(translation)")
                if(translation.x > 50){
                    self.cardImage.center.x += 500
                }
                else if (translation.x < -50){
                    self.cardImage.center.x -= 500
                }
                else{
                    self.cardImage.transform = CGAffineTransform.identity
                    
                }
            }
            print("Gesture ended")

        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
