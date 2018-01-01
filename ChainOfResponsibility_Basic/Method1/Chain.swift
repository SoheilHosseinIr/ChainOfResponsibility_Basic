//
//  Chain.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation

protocol Chain{
	
	var nextManagementLevel : Chain{ get set }
	func shouldApproveExpenditure(expenditure : Expenditure)
}
