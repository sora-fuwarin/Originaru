//
//  issyoku.swift
//  Originaru
//
//  Created by 小川空 on 2020/02/16.
//  Copyright © 2020 sora. All rights reserved.
//

import UIKit

class issyoku: UIViewController {

    
    
    @IBOutlet var energy: UILabel!
    @IBOutlet var tannpakusitu: UILabel!
    @IBOutlet var sisitu: UILabel!
    @IBOutlet var tannsuikabutu: UILabel!
    @IBOutlet var ennbunn: UILabel!

    
    @IBAction func cansel2(){
    self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
