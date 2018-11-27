//
//  ThreadView.swift
//  MVVM-Binding-DigDeep
//
//  Created by Li, Havi X. -ND on 2018/11/27.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import UIKit

class ThreadView: UIView {
	var nameLabel: UILabel?
	var postsTableView: UITableView?
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.frame = frame
		setupUI()
	}
	
	private func setupUI() {
		nameLabel = UILabel()
		nameLabel?.frame = CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
		postsTableView = UITableView.init(frame: self.frame, style: .plain)
		addSubview(postsTableView!)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
