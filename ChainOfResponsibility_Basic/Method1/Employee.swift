//
//  Employee.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation

class Employee : Chain {
	
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
		if expenditure.amount > 0 && expenditure.amount < 100 {
			print("An employee can approve this expenditure")
		} else {
			if _nextManagementLevel != nil{
				nextManagementLevel.shouldApproveExpenditure(expenditure: expenditure)
			}
		}
	}
}
