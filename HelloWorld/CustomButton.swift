//
//  CustomButton.swift
//  HelloWorld
//
//  Created by Nivedita Chellam on 10/14/21.
//

import Foundation
import UIKit

class CustomButton: UIButton {

    var myValue: Int

    override init(frame: CGRect) {
        // set myValue before super.init is called
        self.myValue = 0

        super.init(frame: frame)

        // set other operations after super.init, if required
        layer.shadowRadius = 5.0

        // autolayout solution
        let width = 400
        let height = 100
        self.frame.size = CGSize(width: width, height: height)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
