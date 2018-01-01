//
//  CEO.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation

class CEO : Chain {
	
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
		if expenditure.amount > 1001 && expenditure.amount < 10000 {
			print("The CEO can approve this expenditure")
		} else {
			print("This expenditure is too large and won't get approved")
		}
	}
}
