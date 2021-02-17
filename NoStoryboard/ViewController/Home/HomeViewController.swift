//
//  HomeViewController.swift
//  NoStoryboard
//
//  Created by Emin Tolgahan Polat on 2.02.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var colorList :[UIColor] = (1...8).map( {_ in UIColor.random} )
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = true
        super.viewDidLoad()
        print("HomeViewController")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        
        let nib = UINib(nibName: "NewsCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "NewsCollectionViewCell")
        
        
        //        collectionView.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: "NewsCollectionViewCell")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
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
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as? NewsCollectionViewCell {
        //
        //             return cell
        //
        //         } else {
        //             return UICollectionViewCell()
        //         }
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as? UICollectionViewCell {
            cell.backgroundColor = colorList[indexPath.row]
            return cell
            
        }else {
            return UICollectionViewCell()
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    
}

fileprivate extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue < frame.height / 2 ? newValue : frame.height / 2
        }
    }
}
