//
//  Realm .swift
//  Originaru
//
//  Created by 小川空 on 2020/06/28.
//  Copyright © 2020 sora. All rights reserved.
//

import Foundation
import RealmSwift

class Food : Object {
    @objc dynamic var syouhinmei = ""
    @objc dynamic var enagy :Double = 0.0
    @objc dynamic var tannpakusitu :Double = 0.0
    @objc dynamic var sisitu :Double = 0.0
    @objc dynamic var tannsuikabutu :Double = 0.0
    @objc dynamic var ennbunn :Double = 0.0
    @objc dynamic var kcal :Double = 0.0
    @objc dynamic var seibunn = ""
    @objc dynamic var allergy = ""
}
