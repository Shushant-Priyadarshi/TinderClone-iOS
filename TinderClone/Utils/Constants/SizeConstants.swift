//
//  SizeConstants.swift
//  TinderClone
//
//  Created by Shushant  on 25/08/25.
//

import SwiftUI

struct SizeConstants{
    static var screenCutOff:CGFloat{
        (UIScreen.main.bounds.width / 2) * 1.5
    }
    
    static var CardWidth: CGFloat {
       UIScreen.main.bounds.width - 20
    }
    
    static var CardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
     }
}
