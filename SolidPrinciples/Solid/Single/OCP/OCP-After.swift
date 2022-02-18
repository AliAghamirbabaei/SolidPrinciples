//
//  OCP-After.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/17/22.
//

import Foundation

fileprivate protocol PaymentProtocol {
    func makePayment(amount: Double)
}

fileprivate class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform action
    }
}

fileprivate class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform action
    }
}

fileprivate class MasterCardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // perform action
    }
}

fileprivate class PaymentManager {
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
