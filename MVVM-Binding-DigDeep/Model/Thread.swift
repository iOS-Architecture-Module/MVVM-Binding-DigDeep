//
//  Thread.swift
//  MVVM-Binding-DigDeep
//
//  Created by Li, Havi X. -ND on 2018/11/26.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation

class Thread {
	var name: String?
	var post: [Post]?
	
	init() {
		let post1 = Post()
		post1.body = "this is an test one"
		post1.likeCount = 2
		let post2 = Post()
		post2.body = "this is an test two"
		post2.likeCount = 3
		post = [post1, post2]
	}
}
