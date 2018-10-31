//
//  Tabla.swift
//  Prueva1
//
//  Created by PABLO CRUZ MENDEZ on 17/10/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class Tabla: UIViewController {

    @IBOutlet var tabla: UITableView!
    
    
    internal var prime: [CelulaN] = []
    internal var segu: [CelulaN] = []
    internal var terce: [CelulaS] = []
    internal var cuar: [CelulaS] = []
    internal var tamanos: [Int] = []
    internal var secciones: [Array<Any>]?
    
    convenience init(primeras: [CelulaN], segundas: [CelulaN], terceras: [CelulaS], cuartas: [CelulaS]){
        self.init()
        self.prime = primeras
        self.segu = segundas
        self.terce = terceras
        self.cuar = cuartas
        tamanos = [prime.count, segu.count, terce.count, cuar.count]
        secciones = [self.prime, self.segu, self.terce, self.cuar]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrarCelulaNormal()
        registrarCelulaSwitch()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func registrarCelulaNormal(){
        let identifier = "CelulaNormal"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tabla.register(cellNib, forCellReuseIdentifier: identifier)
    }
    private func registrarCelulaSwitch(){
        let identifier = "CelulaSwitch"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tabla.register(cellNib, forCellReuseIdentifier: identifier)
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
extension Tabla: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return tamanos[section]
        
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if(section == 2){
            return "Double tapping the space bar will insert a period followed by a space"
        }
        else{
            return nil
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 2){
            return "ALL KEYBOARDS"
        }
        else if(section == 3){
            return "DICTATION"
        }
        else{
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 55.0
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if(indexPath.section == 0){
            let cell: CelulaNormal = (tableView.dequeueReusableCell(withIdentifier: "CelulaNormal", for: indexPath) as? CelulaNormal)!
            let cellRow = prime[indexPath.row]
        
            cell.lblizq?.text = cellRow.txtizq
            cell.lblder?.text = cellRow.txtder
            cell.accessoryType = .disclosureIndicator

            return cell
        }
        else if(indexPath.section == 1){
            let cell: CelulaNormal = (tableView.dequeueReusableCell(withIdentifier: "CelulaNormal", for: indexPath) as? CelulaNormal)!
            let cellRow = segu[indexPath.row]
            
            cell.lblizq?.text = cellRow.txtizq
            cell.lblder?.text = cellRow.txtder
            cell.accessoryType = .disclosureIndicator
            
            return cell
        }
        else if(indexPath.section == 2){
            let cell: CelulaSwitch = (tableView.dequeueReusableCell(withIdentifier: "CelulaSwitch", for: indexPath) as? CelulaSwitch)!
            let cellRow = terce[indexPath.row]
            
            cell.lblizq?.text = cellRow.txtizq
            
            
            return cell
        }
        else{
            let cell: CelulaSwitch = (tableView.dequeueReusableCell(withIdentifier: "CelulaSwitch", for: indexPath) as? CelulaSwitch)!
            let cellRow = cuar[indexPath.row]
            
            cell.lblizq?.text = cellRow.txtizq
            
            
            return cell
        }
            /*
        else if(indexPath.row < prime.count + segu.count){
            let cell: CelulaNormal = (tableView.dequeueReusableCell(withIdentifier: "CelulaNormal", for: indexPath) as? CelulaNormal)!
            let cellRow = segu[indexPath.row - prime.count]
         
            cell.lblizq?.text = cellRow.txtizq
            cell.lblder?.text = cellRow.txtder
         
            return cell
        }
        else{
            let cell: CelulaSwitch = (tableView.dequeueReusableCell(withIdentifier: "CelulaSwitch", for: indexPath) as? CelulaSwitch)!
            let cellRow = terce[indexPath.row - prime.count - segu.count]
         
            cell.lblizq?.text = cellRow.txtizq
         
         
            return cell*/
        }
    
}

