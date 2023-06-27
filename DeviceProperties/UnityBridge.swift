//
//  UnityBridge.swift
//  DeviceProperties
//
//  Created by Nonato Sousa on 27/06/23.
//

import Foundation

@_cdecl("getDeviceName")
public func getDeviceName() -> UnsafePointer<CChar>?{
    return convertToUnsafePointer(stringValue: DeviceProperties.getDeviceName())
}

@_cdecl("getLocalizedModel")
public func getLocalizedModel() -> UnsafePointer<CChar>?{
    return convertToUnsafePointer(stringValue: DeviceProperties.getLocalizedModel())
}

@_cdecl("getSystemVersion")
public func getSystemVersion() -> UnsafePointer<CChar>?{
    return convertToUnsafePointer(stringValue: DeviceProperties.getSystemVersion())
}

@_cdecl("getBatteryState")
public func getBatteryState() -> UnsafePointer<CChar>?{
    return convertToUnsafePointer(stringValue: DeviceProperties.getBatteryState())
}

@_cdecl("getBatteryLevel")
public func getBatteryLevel() -> Float{
    return DeviceProperties.getBatteryLevel()
}

@_cdecl("enableBatteryMonitoring")
public func enableBatteryMonitoring(enabled: Bool){
    DeviceProperties.enableBatteryMonitoring(enabled: enabled)
    
    print("Battering monitoring enabled: \(DeviceProperties.isBatteryMonitoringEnabled)")
}
