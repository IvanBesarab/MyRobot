//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {

	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L55H" // level name
		
		super.viewDidLoad()
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
		
		put()
		turnRight()
		while frontIsClear {
			twoPointLeft()
		}
		turnRight()
		turnRight()
		while frontIsClear {
			move()
		}
		put()
		turnLeft()
		while frontIsClear {
			twoPointRight()
		}
		
	}
	
	func twoPointRight() {
		move()
		turnLeft()
		move()
		put()
		turnRight()
	}
	
	func twoPointLeft() {
		move()
		turnLeft()
		move()
		put()
		turnRight()
	}
	
	func turnLeft() {
		turnRight()
		turnRight()
		turnRight()
	}
	
}
