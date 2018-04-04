//
//  ViewController.swift
//  Alien Animation
//
//  Created by D7702_10 on 2018. 4. 4..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var miv: UIImageView!
    @IBOutlet weak var ct: UILabel!
    var counter = 1
    var chk = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //첫번째 이미지 보이기
        miv.image = UIImage(named: "frame1.png")
        ct.text = "1"
        
    }

    @IBAction func ud(_ sender: Any) {
        if counter == 5{
            chk = false
        }else if counter == 1{
            chk = true
        }
        if chk == true{
            counter = counter + 1
            miv.image = UIImage(named: "frame\(counter).png")
           ct.text = String(counter)
        }else if chk == false{
            counter = counter - 1
            miv.image = UIImage(named: "frame\(counter).png")
            ct.text = String(counter)
        }
}
}
