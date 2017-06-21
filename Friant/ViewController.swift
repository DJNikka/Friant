//
//  ViewController.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/20/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collection.dataSource = self
        collection.delegate = self
        
    }
    
    @IBAction func MakeCall(_ sender: Any) {
        
        let url:NSURL = NSURL(string: "tel://5104213354")!
//        UIApplication.shared.openURL(url as URL)
  
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
      
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriantCell", for: indexPath) as? FriantCell {
            
            let friant = Friant(name: "Friant", furnitureId: indexPath.row)
            cell.configureCell(friant: friant)
            
            return cell
            
            //If there are more than 15 pieces to display, it will not load all. Improves performance
      
        } else {
            
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 15
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 335, height: 140)
        
    }
    
    
    }


