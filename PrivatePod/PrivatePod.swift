//
//  PrivatePod.swift
//  Pods-ExPrivatePod
//
//  Created by Nixon.Shih on 2018/12/11.
//

import Foundation

public extension Bundle {
    
    static var privatePod: Bundle {
        return Bundle(for: PrivatePod.self)
    }
}

public class PrivatePod {}
