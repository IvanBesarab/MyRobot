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
	
	func turnLeft() {
		for _ in 0..<3 {
			turnRight()
		}
	}
	
	func doubleMove() {
		move()
		move()
	}
	
	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L1C" // level name

		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
		
		// loop to search candy
		move()
		returnDoubleCookies(needToDouble: true)
		
		let numberFromMyHead = 7
		
		moveSteps(stepsCount: numberFromMyHead)
		move(numberFromMyHead)
		foo(argh1: numberFromMyHead, argh2: false)
		
		var steps = 0
		for _ in 0..<10 {
			steps = steps + 1
			move()
		}
		print("robot make \(steps) steps")
	}
	
	func moveSteps(stepsCount: Int) {
		for _ in 0..<stepsCount {
			move()
		}
	}
	
	func move(_ stepsCount: Int) {
		for _ in 0..<stepsCount {
			move()
		}
	}
	
	func returnDoubleCookies(needToDouble: Bool) {
		while candyPresent {
			pick()
			move()
			put()
			if needToDouble {
				put()
			}
			returnBack()
		}
	}
	
	func returnBack() {
		turnRight()
		turnRight()
		move()
		turnRight()
		turnRight()
	}
	
	func foo(argh1: Int, argh2: Bool) {
		move()
		turnLeft()
	}
	
	
	
}
