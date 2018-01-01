//
//  MoneyPile.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation

final class MoneyPile {
	
	let value: Int
	var quantity: Int
	var nextPile: MoneyPile?
	
	init(value: Int, quantity: Int, nextPile: MoneyPile?) {
		self.value = value
		self.quantity = quantity
		self.nextPile = nextPile
	}
	
	func canWithdraw(amount: Int) -> Bool {
		
		var amount = amount
		
		func canTakeSomeBill(want: Int) -> Bool {
			return (want / self.value) > 0
		}
		
		var quantity = self.quantity
		
		while canTakeSomeBill(want: amount) {
			
			if quantity == 0 {
				break
			}
			
			amount -= self.value
			quantity -= 1
		}
		
		guard amount > 0 else {
			return true
		}
		
		if let next = self.nextPile {
			return next.canWithdraw(amount: amount)
		}
		
		return false
	}
}
