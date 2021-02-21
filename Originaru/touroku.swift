//
//  touroku.swift
//  Originaru
//
//  Created by 小川空 on 2020/02/16.
//  Copyright © 2020 sora. All rights reserved.
//

import UIKit
import RealmSwift

class touroku: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var touroku: UITableView!
    //    @IBOutlet var contentTextField: UITextField!
    var realm: Realm!
    
    @IBOutlet var table: UITableView!
    
    var foods: Results<Food>!
    var index = -1
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        realm = try! Realm()
        
        foods = realm.objects(Food.self)
        table.reloadData()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        foods = realm.objects(Food.self)
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = foods[indexPath.row].syouhinmei
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        index = indexPath.row
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    
    
    //削除許可の設定
    func tableView(_ tableView: UITableView,canEditRowAt indexPath: IndexPath) -> Bool{
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            try! realm.write {
                realm.delete(foods[indexPath.row])
            }
            tableView.reloadData()
        }
    }
   @IBAction func back(_ sender: Any) {
     self.dismiss(animated: true, completion: nil)
    
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let nextVC = segue.destination as! syousai
            nextVC.food = foods[index]
        }
    }
}
