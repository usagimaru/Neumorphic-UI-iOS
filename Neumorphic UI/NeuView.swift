//
//  NeuView.swift
//  Neumorphic Style
//
//  Created by usagimaru on 2021/10/03.
//

import UIKit

class NeuView: UIView {
	
	private(set) var darkShadowLayer = CALayer()
	private(set) var lightShadowLayer = CALayer()
	
	@IBOutlet weak var titleLabel: UILabel?
	@IBOutlet weak var imageView: UIImageView?
	
	
	// MARK: -

	override init(frame: CGRect) {
		super.init(frame: frame)
		_init()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		_init()
	}
	
	private func _init() {
		self.layer.insertSublayer(self.darkShadowLayer, at: 0)
		self.layer.insertSublayer(self.lightShadowLayer, at: 0)
		setupStyles()
	}
	
	
	// MARK: -
	
	func setupStyles() {
		self.clipsToBounds = false
		self.layer.cornerCurve = .continuous
		
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		self.darkShadowLayer.needsDisplayOnBoundsChange = true
		self.darkShadowLayer.shadowColor = UIColor.black.cgColor
		self.darkShadowLayer.shadowOffset = CGSize(width: 10, height: 10)
		self.darkShadowLayer.shadowRadius = 10
		self.darkShadowLayer.shadowOpacity = 0.15
		
		self.lightShadowLayer.needsDisplayOnBoundsChange = true
		self.lightShadowLayer.shadowColor = UIColor.white.cgColor
		self.lightShadowLayer.shadowOffset = CGSize(width: -7, height: -7)
		self.lightShadowLayer.shadowRadius = 10
		self.lightShadowLayer.shadowOpacity = 0.5
		
		#if DEBUG
//		self.layer.borderWidth = 1
//		self.layer.borderColor = UIColor.red.cgColor
		#endif
		
		CATransaction.commit()
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		// Reset sublayer‘s properties.
		
		// Frame
		self.darkShadowLayer.frame = self.bounds
		self.lightShadowLayer.frame = self.bounds
		
		// Set order of sublayers.
		self.layer.insertSublayer(self.darkShadowLayer, at: 0)
		self.layer.insertSublayer(self.lightShadowLayer, at: 0)
		
		// Apply background colors.
		self.darkShadowLayer.backgroundColor = self.layer.backgroundColor
		self.lightShadowLayer.backgroundColor = self.layer.backgroundColor
		
		// Apply corner properties.
		self.darkShadowLayer.cornerRadius = self.layer.cornerRadius
		self.darkShadowLayer.cornerCurve = self.layer.cornerCurve
		self.lightShadowLayer.cornerRadius = self.layer.cornerRadius
		self.lightShadowLayer.cornerCurve = self.layer.cornerCurve
	}

}
