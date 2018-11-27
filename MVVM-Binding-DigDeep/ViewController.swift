//
//  ViewController.swift
//  MVVM-Binding-DigDeep
//
//  Created by Li, Havi X. -ND on 2018/11/26.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var thread: Thread?
	var threadView: ThreadView?
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		setupUI()
	}
	
	fileprivate func setupUI() {
		thread = Thread()
		threadView = ThreadView.init(frame: UIScreen.main.bounds)
		view.addSubview(threadView!)
		threadView?.postsTableView?.dataSource = self
		threadView?.postsTableView?.delegate = self
	}


}

extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return (thread?.post?.count)!
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "postCell") as? PostCell
		if cell == nil {
			
			cell = PostCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "postCell")
		}
		let post = thread?.post![indexPath.row]
		cell?.bodyTextView?.text = post?.body!
		cell?.likeCountLabel?.text = "\(post?.likeCount ?? 0)"
		return cell!
		
	}
}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
}

