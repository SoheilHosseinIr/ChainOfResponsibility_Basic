//
//  Expenditure.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation
class Expenditure {
	
	private var _amount = Int()
	var amount : Int{
		get{
			return _amount
		}
		
		set {
			_amount = newValue
		}
	}
	
	init(amount : Int) {
		self.amount = amount
	}
}
