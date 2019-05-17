//
//  RoundedViews.swift
//  ArtableJhonnyB
//
//  Created by junaid on 18/05/2019.
//  Copyright © 2019 junaid. All rights reserved.
//

import Foundation
import UIKit
class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}

class RoundedShadowView : UIView
{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = AppColors.Blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = .zero
        layer.shadowRadius = 3
    }
}

class RoundedView : UIView
{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
