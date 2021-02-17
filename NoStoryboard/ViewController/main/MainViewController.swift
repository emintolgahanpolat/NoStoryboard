//
//  MainViewController.swift
//  NoStoryboard
//
//  Created by Emin Tolgahan Polat on 1.02.2021.
//

import UIKit

class MainViewController: UIViewController {

    
    public static func open(_ parent:UIViewController, title:String?, modalPresentationStyle: UIModalPresentationStyle = .fullScreen){
        let vc = MainViewController()
        vc.title = title
        vc.modalPresentationStyle = modalPresentationStyle
        if let nc =  parent.navigationController {
            nc.pushViewController(vc, animated: true)
        }else{
            parent.present(vc, animated: true, completion: nil)
        }
     
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("MainViewController")
        title = "My App"
        // Do any additional setup after loading the view.
    }

   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       // self.navigationController?.navigationBar.isHidden = false
    }

    @IBAction func nextPage(_ sender: Any) {
        MainViewController.open(self,title:"One View Controller",modalPresentationStyle: .automatic)
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
