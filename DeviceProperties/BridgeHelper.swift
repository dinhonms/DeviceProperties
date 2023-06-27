//
//  BridgeHelper.swift
//  DeviceProperties
//
//  Created by Nonato Sousa on 27/06/23.
//

import Foundation

func convertToUnsafePointer(stringValue: String) -> UnsafePointer<CChar>?{
    let str = strdup(stringValue)
    
    return UnsafePointer(str)
}
