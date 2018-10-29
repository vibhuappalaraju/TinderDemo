//
//  ProfileViewController.swift
//  Tinder
//
//  Created by Vibhu Appalaraju on 10/29/18.
//  Copyright © 2018 Vibhu Appalaraju. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var navbar2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navbar2.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
