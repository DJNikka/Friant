//
//  UIOutlinedLabel.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/21/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class UIOutlinedLabel: UILabel {

    var outlineWidth: CGFloat = 1
    var outlineColor: UIColor = UIColor.black
    
    
    override func drawText(in rect: CGRect) {
        
        
//        let attributes = [NSStrokeWidthAttributeName: -3.0,
//                          NSStrokeColorAttributeName: UIColor.yellow,
//                          NSForegroundColorAttributeName: UIColor.red] as [String : Any]
//        
//        
//     attributedText = NSAttributedString(string: "string to both stroke and fill", attributes: attributes)
       
        
               let strokeTextAttributes = [
            NSStrokeColorAttributeName : UIColor.black,
            NSForegroundColorAttributeName : UIColor.white,
            NSStrokeWidthAttributeName : -4.0,
            NSFontAttributeName : UIFont.boldSystemFont(ofSize: 30)
            ] as [String : Any]
    

        
        
//        let strokeTextAttributes = [NSStrokeColorAttributeName : outlineColor, NSStrokeWidthAttributeName : -1 * outlineWidth] as [String : Any]
    
    }
  
    
}
