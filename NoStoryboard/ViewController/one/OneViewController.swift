//
//  OneViewController.swift
//  NoStoryboard
//
//  Created by Emin Tolgahan Polat on 1.02.2021.
//

import UIKit

class OneViewController: UIViewController {

    public static func open(_ nc:UINavigationController, title:String?){
        let vc = OneViewController()
        vc.title = title
        
        nc.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OneViewController")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // self.navigationController?.navigationBar.isHidden = true
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
