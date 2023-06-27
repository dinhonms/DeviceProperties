//
//  File.swift
//  SwiftCodeKit
//
//  Created by Nonato Sousa on 27/06/23.
//

import Foundation
import UIKit

public class DeviceProperties{
    private static let device = UIDevice()
    
    public static func getDeviceName() -> String{
        return device.name
    }
    
    public static func getLocalizedModel() -> String{
        return device.localizedModel
    }
    
    public static func getSystemVersion() -> String{
        return device.systemVersion
    }
    
    public static func getBatteryState() -> String {
        switch device.batteryState{
        case .charging:
            return "charging"
        case .unknown:
            return "unknown"
        case .unplugged:
            return "unplugged"
        case .full:
            return "full"
        @unknown default:
            return "unknown"
        }
    }
    
    public static func getBatteryLevel() -> Float{
        return device.batteryLevel
    }

    public static func enableBatteryMonitoring(enabled: Bool){
        device.isBatteryMonitoringEnabled = enabled
    }
    
    public static var isBatteryMonitoringEnabled: Bool{
        return device.isBatteryMonitoringEnabled
    }
}
