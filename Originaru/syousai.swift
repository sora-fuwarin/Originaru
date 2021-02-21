//
//  syousai.swift
//  Originaru
//
//  Created by 小川空 on 2020/03/22.
//  Copyright © 2020 sora. All rights reserved.
//

import UIKit

class syousai: UIViewController {
    
    @IBOutlet var syouhinnmei1: UILabel!
    @IBOutlet var energy1: UILabel!
    @IBOutlet var tannpakusitu1: UILabel!
    @IBOutlet var sisitu1: UILabel!
    @IBOutlet var tannsuikabutu1: UILabel!
    @IBOutlet var ennbunn1: UILabel!
    @IBOutlet var seibunn1: UITextView!
    @IBOutlet var allergy1: UITextView!
   
    
    
    var food: Food!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        syouhinnmei1.text = food.syouhinmei
        energy1.text = String(food.enagy)
        tannpakusitu1.text = String(food.tannpakusitu)
        sisitu1.text = String(food.sisitu)
        tannsuikabutu1.text = String(food.tannsuikabutu)
        ennbunn1.text = String(food.ennbunn)
        seibunn1.text = food.seibunn
        allergy1.text = food.allergy
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
