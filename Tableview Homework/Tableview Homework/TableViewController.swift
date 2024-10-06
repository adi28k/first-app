//
//  TableViewController.swift
//  Tableview Homework
//
//  Created by Adilet Kistaubayev on 05.10.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    //var array = ["1","2","3","4","5"]

    //var arrayAbility = ["Exort","Quas","Wex","Alacrity","Sun Strike"]
    //var arrayType = ["passive","passive","passive","active","active"]
    //var arrayImage = ["exort","quas","wex","alacrity","sunStrike"]
    
    var arrayAbilities = [Abilities(ability: "Exort",type: "selfbuff",image: "exort",description: "Позволяет управлять стихией огня и даёт +1 к интеллекту за уровень. Каждая активная сфера Exort увеличивает урон от заклинаний героя."),
                          Abilities(ability: "Quas",type: "selfbuff",image: "quas",description: "Позволяет управлять стихией льда и даёт +1 к силе за уровень. Каждая активная сфера Quas наделяет способности героя вампиризмом."),
                          Abilities(ability: "Wex",type: "selfbuff",image: "wex",description: "Позволяет управлять стихией молнии и даёт +1 к ловкости за уровень. Каждая активная сфера Wex увеличивает снижение перезарядок и скорость передвижения."),
                          Abilities(ability: "Alacrity",type: "buff",image: "alacrity",description: "Вызывает у союзника прилив сил, увеличивая его скорость атаки в зависимости от уровня Wex и повышая урон от атак в зависимости от уровня Exort."),
                          Abilities(ability: "Sun Strike",type: "damage",image: "sunStrike",description: "Посылает катастрофический луч ожесточённой энергии солнца в заданную точку, который сжигает всех стоящих под ним врагов, как только достигнет земли. Урон зависит от уровня Exort и равномерно распределяется по всем задетым противникам."),
                          ]
                          
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func invokeAbility(_ sender: Any) {
        arrayAbilities.append(Abilities(ability: "Inovke",type: "создать заклинание",image: "invoke",description: "Герой комбинирует элементы использующихся стихий, чтобы создать новое заклинание. Перезарядка этой способности снижается на 0,3 сек. за каждый уровень сфер."))
        tableView.reloadData()
        
    
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayAbilities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
            
            // Configure the cell...
            
            let label = cell.viewWithTag(1001) as! UILabel
            label.text = arrayAbilities[indexPath.row].ability
            
            let labelType = cell.viewWithTag(1002) as! UILabel
            labelType.text = arrayAbilities[indexPath.row].type
            
            let imageView = cell.viewWithTag(1003) as! UIImageView
            imageView.image = UIImage(named: arrayAbilities[indexPath.row].image)
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
        
        // Configure the cell...
        
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = arrayAbilities[indexPath.row].ability
        
        let labelType = cell.viewWithTag(1002) as! UILabel
        labelType.text = arrayAbilities[indexPath.row].type
        
        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: arrayAbilities[indexPath.row].image)
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "ViewController") as!
        ViewController
        
        vc.ability = arrayAbilities[indexPath.row]
        navigationController?.show(vc, sender: self)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            arrayAbilities.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
