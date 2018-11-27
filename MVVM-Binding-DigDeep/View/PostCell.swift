//
//  PostCell.swift
//  MVVM-Binding-DigDeep
//
//  Created by Li, Havi X. -ND on 2018/11/27.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import UIKit

class PostCell: UITableViewCell {
	var bodyTextView: UITextView?
	var likeCountLabel: UILabel?
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.frame = CGRect.init(x: 0, y: 0, width: (UIScreen.main.bounds.width), height: 100)
		setupUI()
	}
	
	fileprivate func setupUI() {
		bodyTextView = UITextView.init(frame: CGRect.init(x: 0, y: 80, width: (UIScreen.main.bounds.width)-50, height: 20))
		addSubview(bodyTextView!)
		likeCountLabel = UILabel.init(frame: CGRect.init(x: (UIScreen.main.bounds.width)-50, y: 80, width: 50, height: 20))
		addSubview(likeCountLabel!)
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
