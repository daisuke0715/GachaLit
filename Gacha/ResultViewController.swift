//
//  ResultViewController.swift
//  Gacha
//
//  Created by 河村大介 on 2021/08/18.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int.random(in: 0...9)
        
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 7 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
}
