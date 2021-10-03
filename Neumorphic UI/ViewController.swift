//
//  ViewController.swift
//  Neumorphic Style
//
//  Created by usagimaru on 2021/10/03.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var view1: NeuView!
	@IBOutlet weak var view2: NeuView!
	@IBOutlet weak var view3: NeuView!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let bgColor = UIColor(displayP3Red: 0.86, green: 0.86, blue: 0.9, alpha: 1.0)
		
		self.view.backgroundColor = bgColor
		self.view1.backgroundColor = bgColor
		self.view2.backgroundColor = bgColor
		self.view3.backgroundColor = bgColor
		
		self.view1.layer.cornerRadius = 10
		self.view2.layer.cornerRadius = 16
		self.view3.layer.cornerRadius = self.view3.frame.height / 2
		
		self.view1.titleLabel?.text = "Neumorphic Style"
		self.view2.imageView?.image = UIImage(systemName: "command")
		self.view3.imageView?.image = UIImage(systemName: "heart.fill")
	}

}

