//
//  General.swift
//  Prueva1
//
//  Created by PABLO CRUZ MENDEZ on 17/10/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class General: UIViewController {

    @IBAction func ver(_ sender: Any) {
        //let actoresvc = Tabla(primeras: primersegmento)
        let actoresvc = Tabla(primeras: primersegmento, segundas: segundosegmento, terceras: tercersegmento, cuartas: cuartosegmento)
        

        let navigationControler = UINavigationController(rootViewController: actoresvc)
        present(navigationControler, animated: true, completion: nil)
        navigationController?.pushViewController(actoresvc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargar()
        setupBarButtonsItem()
        // Do any additional setup after loading the view.
    }
    
    private func setupBarButtonsItem(){
        let cancelBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelPressed))
        navigationItem.setLeftBarButton(cancelBarButton, animated: false)
    }
    
    @objc private func cancelPressed(){
        dismiss(animated : true, completion: nil)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal var primersegmento: [CelulaN] = []
    internal var segundosegmento: [CelulaN] = []
    internal var tercersegmento: [CelulaS] = []
    internal var cuartosegmento: [CelulaS] = []
    
    private func cargar(){
        let lin1_1 = CelulaN(txtizq: "Keyboards", txtder: "3")
        let lin1_2 = CelulaN(txtizq: "Hardware Keyboard", txtder: "")
        primersegmento = [lin1_1, lin1_2]
        let lin2_1 = CelulaN(txtizq: "Text Replacement", txtder: "")
        let lin2_2 = CelulaN(txtizq: "One Handed Keyboard", txtder: "Off")
        segundosegmento = [lin2_1, lin2_2]
        let lin3_1 = CelulaS(txtizq: "Auto-Capitalization")
        let lin3_2 = CelulaS(txtizq: "Auto-Correction")
        let lin3_3 = CelulaS(txtizq: "Check Spelling")
        let lin3_4 = CelulaS(txtizq: "Enable Caps Lock")
        let lin3_5 = CelulaS(txtizq: "Predictive")
        let lin3_6 = CelulaS(txtizq: "Smart Punctuation")
        let lin3_7 = CelulaS(txtizq: "Character Preview")
        let lin3_8 = CelulaS(txtizq: "'.' Shorcut")
        tercersegmento = [lin3_1, lin3_2, lin3_3, lin3_4, lin3_5, lin3_6, lin3_7, lin3_8]
        let lin4_1 = CelulaS(txtizq: "Enable Dictation")
        cuartosegmento = [lin4_1]
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
