//
//  TauntStringWrapper.swift
//  TauntStringWrapper
//
//  Created by Александр Борискин on 11.12.2019.
//

import Foundation

@propertyWrapper
public struct TauntStringWrapper<Value> {

    private var value: Value
    
    public init(wrappedValue: Value) {
        self.value = wrappedValue
    }

    public var wrappedValue: Value {
        get { value }
        set {
            value = newValue
            print("\(newValue), ты, пидор!")
        }
    }
}
