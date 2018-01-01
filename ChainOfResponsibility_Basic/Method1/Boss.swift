//
//  Boss.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation

class Boss : Chain {
	
	private var _nextManagementLevel : Chain?
	var nextManagementLevel : Chain{
		set{
			_nextManagementLevel = newValue
		}
		get{
			return _nextManagementLevel!
		}
	}
	
	func shouldApproveExpenditure(expenditure : Expenditure) {
		if expenditure.amount > 101 && expenditure.amount < 1000 {
			print("Your boss can approve this expenditure")
		} else {
			if _nextManagementLevel != nil{
				nextManagementLevel.shouldApproveExpenditure(expenditure: expenditure)
			}
		}
	}
}
