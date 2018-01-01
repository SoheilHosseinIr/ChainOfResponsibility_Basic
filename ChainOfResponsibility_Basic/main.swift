//
//  main.swift
//  ChainOfResponsibility_Basic
//
//  Created by SoheilHossein on 1/1/18.
//  Copyright © 2018 SoheilHossein. All rights reserved.
//

import Foundation
/**
0)The Chain of Responsibility design pattern allows for a chain of different objects (that inherit from the same class/interface), to pass on the responsibility of executing a piece of logic to another object.
1)The chain of responsibility pattern is used to process varied requests, each of which may be dealt with by a different handler.
2)the chain of responsibility pattern creates a chain of receiver objects for a request. This pattern decouples sender and receiver of a request based on type of request.
3)Chain the receiving objects and pass the request along the chain until an object handles it.
Problem   :   Need to efficiently process the requests without hard-wiring handler relationships and precedence, or request-to-handler mappings.
Solving   :   Encapsulate the processing elements inside a "pipeline" abstraction; and have clients "launch and leave" their requests at the entrance to the pipeline.

Attention !!!:
	Do not use Chain of Responsibility when each request is only handled by one handler, or, when the client object knows which service object should handle the request.
*/



/** Method
/// Create piles of money and link them together 10 < 20 < 50 < 100.**
let ten = MoneyPile(value: 10, quantity: 6, nextPile: nil)
let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)

/// Build ATM.
var atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
print(atm.canWithdraw(amount: 310)) /// Cannot because ATM has only 300
print(atm.canWithdraw(amount: 100)) /// Can withdraw - 1x100
print(atm.canWithdraw(amount: 165)) /// Cannot withdraw because ATM doesn't has bill with value of 5
print(atm.canWithdraw(amount: 30))  /// Can withdraw - 1x20, 2x10

*/

/// Method1
/// from Git
let employee = Employee()
let boss = Boss()
let ceo = CEO()

employee.nextManagementLevel = boss
boss.nextManagementLevel = ceo

let expenditure = Expenditure(amount: 5)
employee.shouldApproveExpenditure(expenditure: expenditure)

expenditure.amount = 500
employee.shouldApproveExpenditure(expenditure: expenditure)

expenditure.amount = 5000
employee.shouldApproveExpenditure(expenditure: expenditure)

expenditure.amount = 50000
employee.shouldApproveExpenditure(expenditure: expenditure)






