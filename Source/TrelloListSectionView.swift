//
//  TrelloListSectionView.swift
//  TrelloNavigation
//
//  Created by 宋宋 on 15/11/11.
//  Copyright © 2015年 Qing. All rights reserved.
//

import UIKit

public class TrelloListSectionView: UIView {
    
    private var titleLabel: UILabel
    
    public var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    override public func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let path = UIBezierPath()
        path.addSquare(center: CGPoint(x: 15, y: 10), width: 5.0)
        path.addSquare(center: CGPoint(x: 15, y: 15), width: 5.0)
        path.addSquare(center: CGPoint(x: 15, y: 20), width: 5.0)
        TrelloLightGray.setFill()
        path.fill()

    }

    override public init(frame: CGRect) {
        titleLabel = UILabel(frame: CGRect(x: 50.0, y: 20.0, width: frame.size.width - 60.0, height: 20.0))
        titleLabel.textColor = TrelloLightGray
        titleLabel.font = UIFont.boldSystemFontOfSize(14.0)
        super.init(frame: frame)
        backgroundColor = TrelloGray
        let bottomLine = UIView(frame: CGRect(x: 0, y: height - 1.0, width: width, height: 1.0))
        bottomLine.backgroundColor = TrelloLightGray
        addSubviews(titleLabel, bottomLine)
        
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.TopLeft, .TopRight], cornerRadii: CGSize(width: 5, height: 5))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.CGPath
        layer.mask = maskLayer
        
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


