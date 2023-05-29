//
//  AttributedString.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 29.05.2023.
//

import UIKit

var attributedString: NSMutableAttributedString {
    let attributes: [NSAttributedString.Key : Any] =
                    [NSAttributedString.Key.font: UIFont(name: "Papyrus", size: 30)!,
                     NSAttributedString.Key.foregroundColor: UIColor.white,
                     NSAttributedString.Key.backgroundColor: UIColor.orange
                    ]
    return NSMutableAttributedString(string: " Hello World! ", attributes: attributes)
}
