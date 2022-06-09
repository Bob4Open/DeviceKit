//
//  DevicePlatform.swift
//  DeviceKit
//
//  Created by Bob4Open on 2022/6/7.
//

#if os(iOS) || os(tvOS)
    import UIKit
#else
    import Cocoa
#endif

protocol Generation {
    static func generation(_ platform: String) -> String
}

extension Generation {
    static func generation(_ platform: String) -> String {
        return platform
    }
}

//MARK: - Device
public class Device {
    open class var current: Device {
        get{
            let device = Device.shared
            device.model = device.identifier()
            return device
        }
    }
    
    fileprivate var model: String?
    fileprivate static let shared: Device = {
        struct Static {
            static let instance = Device()
        }
        return Static.instance
    }()
    
    public required init() { }
    
    public init(_ identifier: String) {
        self.model = identifier
    }
    
    fileprivate func identifier() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
}

extension Device {
    struct Ipod { }
    struct Ipad { }
    struct Iphone { }
    struct AirTag { }
    struct AirPods { }
    struct AppleTV { }
    struct HomePod { }
    struct AppleWatch { }
    
    struct Mac { }
    struct Imac { }
    struct MacPro { }
    struct MacMini { }
    struct MacBook { }
    struct MacBookAir { }
    struct MacBookPro { }
}

extension Device {
    public func generation() -> String {
        guard let identifier = self.model else {
            return ""
        }
        
        if identifier.hasPrefix("x86_64") || identifier.hasPrefix("arm64") {//适配：intel和M系列芯片
            #if os(iOS) || os(tvOS)// !! 注意：请使用真机，模拟器会固定返回simulator !!
                return "Simulator"
            #else
                return "Mac"
            #endif
        }
        if identifier.hasPrefix("iPhone") {
            return Iphone.generation(identifier)
        }
        if identifier.hasPrefix("iPad") {
            return Ipad.generation(identifier)
        }
        if identifier.hasPrefix("Watch") {
            return AppleWatch.generation(identifier)
        }
        if identifier.hasPrefix("AppleTV") {
            return AppleTV.generation(identifier)
        }
        if identifier.hasPrefix("iPod") {
            return Ipod.generation(identifier)
        }
        if identifier.hasPrefix("AudioAccessory") {
            return HomePod.generation(identifier)
        }
        if identifier.hasPrefix("AirPods") || identifier.hasPrefix("iProd") || identifier.hasPrefix("Audio") {
            return AirPods.generation(identifier)
        }
        if identifier.hasPrefix("AirTag") {
            return AirTag.generation(identifier)
        }
        if identifier.hasPrefix("iMac") {
            return Imac.generation(identifier)
        }
        if identifier.hasPrefix("Macmini") {
            return MacMini.generation(identifier)
        }
        if identifier.hasPrefix("MacPro") {
            return MacPro.generation(identifier)
        }
        if identifier.hasPrefix("MacBookAir") {
            return MacBookAir.generation(identifier)
        }
        if identifier.hasPrefix("MacBookPro") {
            return MacBookPro.generation(identifier)
        }
        if identifier.hasPrefix("MacBook") {
            return MacBook.generation(identifier)
        }
        if identifier.hasPrefix("Mac") {
            return Mac.generation(identifier)
        }
        
        print("Unknown Device Identifier: \(identifier)")

        return identifier
    }
}

//MARK: - iOS Device
extension Device.Ipad: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "iPad1,1"   {return "iPad 1st generation"}
        if platform == "iPad2,1"   {return "iPad 2nd generation"}
        if platform == "iPad2,2"   {return "iPad 2nd generation"}
        if platform == "iPad2,3"   {return "iPad 2nd generation"}
        if platform == "iPad2,4"   {return "iPad 2nd generation"}
        if platform == "iPad2,5"   {return "iPad mini"}
        if platform == "iPad2,6"   {return "iPad mini"}
        if platform == "iPad2,7"   {return "iPad mini"}
        if platform == "iPad3,1"   {return "iPad 3rd generation"}
        if platform == "iPad3,2"   {return "iPad 3rd generation"}
        if platform == "iPad3,3"   {return "iPad 3rd generation"}
        if platform == "iPad3,4"   {return "iPad 4th generation"}
        if platform == "iPad3,5"   {return "iPad 4th generation"}
        if platform == "iPad3,6"   {return "iPad 4th generation"}
        if platform == "iPad4,1"   {return "iPad Air 1st generation"}
        if platform == "iPad4,2"   {return "iPad Air 1st generation"}
        if platform == "iPad4,3"   {return "iPad Air 1st generation"}
        if platform == "iPad4,4"   {return "iPad mini 2nd generation"}
        if platform == "iPad4,5"   {return "iPad mini 2nd generation"}
        if platform == "iPad4,6"   {return "iPad mini 2nd generation"}
        if platform == "iPad4,7"   {return "iPad mini 3rd generation"}
        if platform == "iPad4,8"   {return "iPad mini 3rd generation"}
        if platform == "iPad4,9"   {return "iPad mini 3rd generation"}
        if platform == "iPad5,1"   {return "iPad mini 4th generation"}
        if platform == "iPad5,2"   {return "iPad mini 4th generation"}
        if platform == "iPad5,3"   {return "iPad Air 2nd generation"}
        if platform == "iPad5,4"   {return "iPad Air 2nd generation"}
        if platform == "iPad6,3"   {return "iPad Pro 9.7-inch"}
        if platform == "iPad6,4"   {return "iPad Pro 9.7-inch"}
        if platform == "iPad6,7"   {return "iPad Pro 12.9-inch 1st generation"}
        if platform == "iPad6,8"   {return "iPad Pro 12.9-inch 1st generation"}
        if platform == "iPad6,11"  {return "iPad 5th generation"}
        if platform == "iPad6,12"  {return "iPad 5th generation"}
        if platform == "iPad7,1"   {return "iPad Pro 12.9-inch 2nd generation"}
        if platform == "iPad7,2"   {return "iPad Pro 12.9-inch 2nd generation"}
        if platform == "iPad7,3"   {return "iPad Pro 10.5-inch"}
        if platform == "iPad7,4"   {return "iPad Pro 10.5-inch"}
        if platform == "iPad7,5"   {return "iPad 6th generation"}
        if platform == "iPad7,6"   {return "iPad 6th generation"}
        if platform == "iPad7,11"  {return "iPad 7th generation"}
        if platform == "iPad7,12"  {return "iPad 7th generation"}
        if platform == "iPad8,1"   {return "iPad Pro 11-inch 1st generation"}
        if platform == "iPad8,2"   {return "iPad Pro 11-inch 1st generation"}
        if platform == "iPad8,3"   {return "iPad Pro 11-inch 1st generation"}
        if platform == "iPad8,4"   {return "iPad Pro 11-inch 1st generation"}
        if platform == "iPad8,5"   {return "iPad Pro 12.9-inch 3rd generation"}
        if platform == "iPad8,6"   {return "iPad Pro 12.9-inch 3rd generation"}
        if platform == "iPad8,7"   {return "iPad Pro 12.9-inch 3rd generation"}
        if platform == "iPad8,8"   {return "iPad Pro 12.9-inch 3rd generation"}
        if platform == "iPad8,9"   {return "iPad Pro 11-inch 2nd generation"}
        if platform == "iPad8,10"  {return "iPad Pro 11-inch 2nd generation"}
        if platform == "iPad8,11"  {return "iPad Pro 12.9-inch 4th generation"}
        if platform == "iPad8,12"  {return "iPad Pro 12.9-inch 4th generation"}
        if platform == "iPad11,1"  {return "iPad mini 5th generation"}
        if platform == "iPad11,2"  {return "iPad mini 5th generation"}
        if platform == "iPad11,3"  {return "iPad Air 3rd generation"}
        if platform == "iPad11,4"  {return "iPad Air 3rd generation"}
        if platform == "iPad11,6"  {return "iPad 8th generation"}
        if platform == "iPad11,7"  {return "iPad 8th generation"}
        if platform == "iPad12,1"  {return "iPad 9th generation"}
        if platform == "iPad12,2"  {return "iPad 9th generation"}
        if platform == "iPad13,1"  {return "iPad Air 4th generation"}
        if platform == "iPad13,2"  {return "iPad Air 4th generation"}
        if platform == "iPad13,4"  {return "iPad Pro 11-inch 3rd generation"}
        if platform == "iPad13,5"  {return "iPad Pro 11-inch 3rd generation"}
        if platform == "iPad13,6"  {return "iPad Pro 11-inch 3rd generation"}
        if platform == "iPad13,7"  {return "iPad Pro 11-inch 3rd generation"}
        if platform == "iPad13,8"  {return "iPad Pro 12.9-inch 5th generation"}
        if platform == "iPad13,9"  {return "iPad Pro 12.9-inch 5th generation"}
        if platform == "iPad13,10" {return "iPad Pro 12.9-inch 5th generation"}
        if platform == "iPad13,11" {return "iPad Pro 12.9-inch 5th generation"}
        if platform == "iPad14,1"  {return "iPad mini 6th generation"}
        if platform == "iPad14,2"  {return "iPad mini 6th generation"}
        if platform == "iPad13,16" {return "iPad Air 5th generation"}
        if platform == "iPad13,17" {return "iPad Air 5th generation"}
        return platform
    }
}

////MARK: -- iOS Device

extension Device.Iphone: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "iPhone1,1"   {return "iPhone"}
        if platform == "iPhone1,2"   {return "iPhone 3G"}
        if platform == "iPhone2,1"   {return "iPhone 3GS"}
        if platform == "iPhone3,1"   {return "iPhone 4"}
        if platform == "iPhone3,2"   {return "iPhone 4"}
        if platform == "iPhone3,3"   {return "iPhone 4"}
        if platform == "iPhone4,1"   {return "iPhone 4s"}
        if platform == "iPhone5,1"   {return "iPhone 5"}
        if platform == "iPhone5,2"   {return "iPhone 5"}
        if platform == "iPhone5,3"   {return "iPhone 5c"}
        if platform == "iPhone5,4"   {return "iPhone 5c"}
        if platform == "iPhone6,1"   {return "iPhone 5s"}
        if platform == "iPhone6,2"   {return "iPhone 5s"}
        if platform == "iPhone7,2"   {return "iPhone 6"}
        if platform == "iPhone7,1"   {return "iPhone 6 Plus"}
        if platform == "iPhone8,1"   {return "iPhone 6s"}
        if platform == "iPhone8,2"   {return "iPhone 6s Plus"}
        if platform == "iPhone8,4"   {return "iPhone SE"}
        if platform == "iPhone9,1"   {return "iPhone 7"}
        if platform == "iPhone9,3"   {return "iPhone 7"}
        if platform == "iPhone9,2"   {return "iPhone 7 Plus"}
        if platform == "iPhone9,4"   {return "iPhone 7 Plus"}
        if platform == "iPhone10,1"  {return "iPhone 8"}
        if platform == "iPhone10,4"  {return "iPhone 8"}
        if platform == "iPhone10,2"  {return "iPhone 8 Plus"}
        if platform == "iPhone10,5"  {return "iPhone 8 Plus"}
        if platform == "iPhone10,3"  {return "iPhone X"}
        if platform == "iPhone10,6"  {return "iPhone X"}
        if platform == "iPhone11,2"  {return "iPhone XS"}
        if platform == "iPhone11,4"  {return "iPhone XS Max"}
        if platform == "iPhone11,6"  {return "iPhone XS Max"}
        if platform == "iPhone11,8"  {return "iPhone XR"}
        if platform == "iPhone12,1"  {return "iPhone 11"}
        if platform == "iPhone12,3"  {return "iPhone 11 Pro"}
        if platform == "iPhone12,5"  {return "iPhone 11 Pro Max"}
        if platform == "iPhone12,8"  {return "iPhone SE (2nd generation)"}
        if platform == "iPhone13,1"  {return "iPhone 12 mini"}
        if platform == "iPhone13,2"  {return "iPhone 12"}
        if platform == "iPhone13,3"  {return "iPhone 12 Pro"}
        if platform == "iPhone13,4"  {return "iPhone 12 Pro Max"}
        if platform == "iPhone14,2"  {return "iPhone 13 Pro"}
        if platform == "iPhone14,3"  {return "iPhone 13 Pro Max"}
        if platform == "iPhone14,4"  {return "iPhone 13 mini"}
        if platform == "iPhone14,5"  {return "iPhone 13"}
        if platform == "iPhone14,6"  {return "iPhone SE (3rd generation)"}
        return platform
    }
}

extension Device.Ipod: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "iPod1,1"  {return "iPod Touch"}
        if platform == "iPod2,1"  {return "iPod touch 2"}
        if platform == "iPod3,1"  {return "iPod touch 3"}
        if platform == "iPod4,1"  {return "iPod touch 4"}
        if platform == "iPod5,1"  {return "iPod Touch 5"}
        if platform == "iPod7,1"  {return "iPod touch 6"}
        if platform == "iPod9,1"  {return "iPod touch 7"}
        return platform
    }
}

extension Device.HomePod: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "AudioAccessory1,1"  {return "HomePod"}
        if platform == "AudioAccessory1,2"  {return "HomePod"}
        if platform == "AudioAccessory5,1"  {return "HomePod mini"}
        return platform
    }
}

extension Device.AirPods: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "AirPods1,1"      {return "AirPods (1st generation)"}
        if platform == "AirPods1,2"      {return "AirPods (2nd generation)"}
        if platform == "AirPods2,1"      {return "AirPods (2nd generation)"}
        if platform == "AirPods1,3"      {return "AirPods (3rd generation)"}
        if platform == "Audio2,1"        {return "AirPods (3rd generation)"}
        if platform == "AirPods2,2"      {return "AirPods Pro"}
        if platform == "AirPodsPro1,1"   {return "AirPods Pro"}
        if platform == "iProd8,1"        {return "AirPods Pro"}
        if platform == "iProd8,6"        {return "AirPods Max"}
        if platform == "AirPodsMax1,1"   {return "AirPods Max"}
        return platform
    }
}

extension Device.AppleTV: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "AppleTV1,1"   {return "Apple TV (1st generation)"}
        if platform == "AppleTV2,1"   {return "Apple TV (2nd generation)"}
        if platform == "AppleTV3,1"   {return "Apple TV (3rd generation)"}
        if platform == "AppleTV5,3"   {return "Apple TV (4th generation) "}
        if platform == "AppleTV6,2"   {return "Apple TV 4K (1st generation)"}
        if platform == "AppleTV11,1"  {return "Apple TV 4K (2nd generation)"}
        return platform
    }
}

extension Device.AppleWatch: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "Watch1,1"  {return "Apple Watch (1st generation) (38mm)"}
        if platform == "Watch1,2"  {return "Apple Watch (1st generation) (42mm)"}
        if platform == "Watch2,6"  {return "Apple Watch Series 1 (38mm)"}
        if platform == "Watch2,7"  {return "Apple Watch Series 1 (42mm)"}
        if platform == "Watch2,3"  {return "Apple Watch Series 2 (38mm)"}
        if platform == "Watch2,4"  {return "Apple Watch Series 2 (42mm)"}
        if platform == "Watch3,1"  {return "Apple Watch Series 3 (38mm)"}
        if platform == "Watch3,2"  {return "Apple Watch Series 3 (42mm)"}
        if platform == "Watch3,3"  {return "Apple Watch Series 3 (38mm)"}
        if platform == "Watch3,4"  {return "Apple Watch Series 3 (42mm)"}
        if platform == "Watch4,1"  {return "Apple Watch Series 4 (40mm)"}
        if platform == "Watch4,2"  {return "Apple Watch Series 4 (44mm)"}
        if platform == "Watch4,3"  {return "Apple Watch Series 4 (40mm)"}
        if platform == "Watch4,4"  {return "Apple Watch Series 4 (44mm)"}
        if platform == "Watch5,1"  {return "Apple Watch Series 5 (40mm)"}
        if platform == "Watch5,2"  {return "Apple Watch Series 5 (44mm)"}
        if platform == "Watch5,3"  {return "Apple Watch Series 5 (40mm)"}
        if platform == "Watch5,4"  {return "Apple Watch Series 5 (44mm)"}
        if platform == "Watch5,9"  {return "Apple Watch SE (40mm)"}
        if platform == "Watch5,10" {return "Apple Watch SE (44mm)"}
        if platform == "Watch5,11" {return "Apple Watch SE (40mm)"}
        if platform == "Watch5,12" {return "Apple Watch SE (44mm)"}
        if platform == "Watch6,1"  {return "Apple Watch Series 6 (40mm)"}
        if platform == "Watch6,2"  {return "Apple Watch Series 6 (44mm)"}
        if platform == "Watch6,3"  {return "Apple Watch Series 6 (40mm)"}
        if platform == "Watch6,4"  {return "Apple Watch Series 6 (44mm)"}
        if platform == "Watch6,6"  {return "Apple Watch Series 7 (41mm)"}
        if platform == "Watch6,7"  {return "Apple Watch Series 7 (45mm)"}
        if platform == "Watch6,8"  {return "Apple Watch Series 7 (41mm)"}
        if platform == "Watch6,9"  {return "Apple Watch Series 7 (45mm)"}
        return platform
    }
}

extension Device.AirTag: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "AirTag1,1"  {return "AirTag"}
        return platform
    }
}

//MARK: - Mac Device
extension Device.Mac: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "Mac13,1"   {return "Mac Studio (M1 Max, 2022) "}
        if platform == "Mac13,2"   {return "Mac Studio (M1 Ultra, 2022)"}
        return platform
    }
}

extension Device.Imac: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "iMac9,1"      {return "iMac (20-inch, 2009)"}
        if platform == "iMac9,2"      {return "iMac (24-inch, 2009)"}
        if platform == "iMac10,1"     {return "iMac (21.5-inch, 2009)"}
        if platform == "iMac10,2"     {return "iMac (27-inch, 2009)"}
        if platform == "iMac11,2"     {return "iMac (21.5-inch, 2010)"}
        if platform == "iMac11,3"     {return "iMac (27-inch, 2010)"}
        if platform == "iMac12,1"     {return "iMac (21.5-inch, 2011)"}
        if platform == "iMac12,2"     {return "iMac (27-inch, 2011)"}
        if platform == "iMac13,1"     {return "iMac (21.5-inch, 2012)"}
        if platform == "iMac13,2"     {return "iMac (27-inch, 2012)"}
        if platform == "iMac14,1"     {return "iMac (21.5-inch, 2013)"}
        if platform == "iMac14,2"     {return "iMac (27-inch, 2013)"}
        if platform == "iMac14,4"     {return "iMac (21.5-inch, 2014)"}
        if platform == "iMac15,1"     {return "iMac (Retina 5K, 27-inch, Middle 2015)"}
        if platform == "iMac16,1"     {return "iMac (Retina 4K, 21.5-inch, Late 2015)"}
        if platform == "iMac16,2"     {return "iMac (21.5-inch, Late 2015)"}
        if platform == "iMac17,1"     {return "iMac (Retina 5K, 27-inch, Late 2015)"}
        if platform == "iMac18,1"     {return "iMac (21.5-inch, 2017)"}
        if platform == "iMac18,2"     {return "iMac (Retina 4K, 21.5-inch, 2017)"}
        if platform == "iMac18,3"     {return "iMac (Retina 5K, 27-inch, 2017)"}
        if platform == "iMacPro1,1"   {return "iMac Pro (2017)"}
        if platform == "iMac19,1"     {return "iMac (Retina 5K, 27-inch, 2019)"}
        if platform == "iMac19,2"     {return "iMac (Retina 5K, 21.5-inch, 2019)"}
        if platform == "iMac20,1"     {return "iMac (Retina 5K, 27-inch, 2020)"}
        if platform == "iMac20,2"     {return "iMac (Retina 5K, 27-inch, 2020)"}
        if platform == "iMac21,1"     {return "iMac (24-inch, M1, 2021)"}
        if platform == "iMac21,2"     {return "iMac (24-inch, M1, 2021)"}
        return platform
    }
}

extension Device.MacMini: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "Macmini3,1"  {return "Mac mini (2009)"}
        if platform == "Macmini4,1"  {return "Mac mini (2010)"}
        if platform == "Macmini5,1"  {return "Mac mini (2011)"}
        if platform == "Macmini5,2"  {return "Mac mini (2011)"}
        if platform == "Macmini6,1"  {return "Mac mini (2012)"}
        if platform == "Macmini6,2"  {return "Mac mini (2012)"}
        if platform == "Macmini7,1"  {return "Mac mini (2014)"}
        if platform == "Macmini8,1"  {return "Mac mini (2018)"}
        if platform == "Macmini9,1"  {return "Mac mini (M1, 2020)"}
        return platform
    }
}

extension Device.MacBookAir: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "MacBookAir2,1"    {return "MacBook Air (2009)"}
        if platform == "MacBookAir3,1"    {return "MacBook Air (11-inch, 2010)"}
        if platform == "MacBookAir3,2"    {return "MacBook Air (13-inch, 2010)"}
        if platform == "MacBookAir4,1"    {return "MacBook Air (11-inch, 2011)"}
        if platform == "MacBookAir4,2"    {return "MacBook Air (13-inch, 2011)"}
        if platform == "MacBookAir5,1"    {return "MacBook Air (11-inch, 2012)"}
        if platform == "MacBookAir5,2"    {return "MacBook Air (13-inch, 2012)"}
        if platform == "MacBookAir6,1"    {return "MacBook Air (11-inch, 2013/2014)"}
        if platform == "MacBookAir6,2"    {return "MacBook Air (13-inch, 2013/2014)"}
        if platform == "MacBookAir7,1"    {return "MacBook Air (11-inch, 2015)"}
        if platform == "MacBookAir7,2"    {return "MacBook Air (13-inch, 2015/2017)"}
        if platform == "MacBookAir8,1"    {return "MacBook Air (Retina, 13-inch, 2018)"}
        if platform == "MacBookAir8,2"    {return "MacBook Air (Retina, 13-inch, 2019)"}
        if platform == "MacBookAir9,1"    {return "MacBook Air (Retina, 13-inch, 2020)"}
        if platform == "MacBookAir10,1"   {return "MacBook Air (M1, 2020)"}
        return platform
    }
}

extension Device.MacBookPro: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "MacBookPro4,1"   {return "MacBook Pro (15-inch, Early 2008)"}
        if platform == "MacBookPro4,2"   {return "MacBook Pro (17-inch, Early 2008)"}
        if platform == "MacBookPro5,1"   {return "MacBook Pro (15-inch, Late 2008)"}
        if platform == "MacBookPro5,2"   {return "MacBook Pro (17-inch, 2009)"}
        if platform == "MacBookPro5,3"   {return "MacBook Pro (15-inch, 2009)"}
        if platform == "MacBookPro5,5"   {return "MacBook Pro (13-inch, 2009)"}
        if platform == "MacBookPro6,1"   {return "MacBook Pro (17-inch, 2010)"}
        if platform == "MacBookPro6,2"   {return "MacBook Pro (15-inch, 2010)"}
        if platform == "MacBookPro8,1"   {return "MacBook Pro (13-inch, 2011)"}
        if platform == "MacBookPro8,2"   {return "MacBook Pro (15-inch, 2011)"}
        if platform == "MacBookPro8,3"   {return "MacBook Pro (17-inch, 2011)"}
        if platform == "MacBookPro9,1"   {return "MacBook Pro (15-inch, 2012)"}
        if platform == "MacBookPro9,2"   {return "MacBook Pro (13-inch, 2012)"}
        if platform == "MacBookPro10,1"  {return "MacBook Pro (Retina, 15-inch, 2012/2013)"}
        if platform == "MacBookPro10,2"  {return "MacBook Pro (Retina, 13-inch, 2012/2013)"}
        if platform == "MacBookPro11,1"  {return "MacBook Pro (Retina, 13-inch, Late 2013/Middle 2014)"}
        if platform == "MacBookPro11,2"  {return "MacBook Pro (Retina, 15-inch, Late 2013/Middle 2014)"}
        if platform == "MacBookPro11,3"  {return "MacBook Pro (Retina, 15-inch, Late 2013/Middle 2014)"}
        if platform == "MacBookPro11,4"  {return "MacBook Pro (Retina, 15-inch, Middle 2015)"}
        if platform == "MacBookPro11,5"  {return "MacBook Pro (Retina, 15-inch, Middle 2015)"}
        if platform == "MacBookPro12,1"  {return "MacBook Pro (13-inch, Early 2015)"}
        if platform == "MacBookPro13,1"  {return "MacBook Pro (13-inch, 2016, Thunderbolt * 2)"}
        if platform == "MacBookPro13,2"  {return "MacBook Pro (13-inch, 2016, Thunderbolt * 4)"}
        if platform == "MacBookPro13,3"  {return "MacBook Pro (15-inch, 2016)"}
        if platform == "MacBookPro14,1"  {return "MacBook Pro (13-inch, 2017, Thunderbolt * 2)"}
        if platform == "MacBookPro14,2"  {return "MacBook Pro (13-inch, 2017, Thunderbolt * 4)"}
        if platform == "MacBookPro14,3"  {return "MacBook Pro (15-inch, 2017)"}
        if platform == "MacBookPro15,1"  {return "MacBook Pro (15-inch, 2018)"}
        if platform == "MacBookPro15,3"  {return "MacBook Pro (15-inch, 2019)"}
        if platform == "MacBookPro15,2"  {return "MacBook Pro (13-inch, 2019, Thunderbolt * 2)"}
        if platform == "MacBookPro15,4"  {return "MacBook Pro (13-inch, 2019, Thunderbolt * 4)"}
        if platform == "MacBookPro16,1"  {return "MacBook Pro (16-inch, 2019)"}
        if platform == "MacBookPro16,4"  {return "MacBook Pro (16-inch, 2019)"}
        if platform == "MacBookPro16,2"  {return "MacBook Pro (13-inch, 2020, Thunderbolt * 4)"}
        if platform == "MacBookPro16,3"  {return "MacBook Pro (13-inch, 2020, Thunderbolt * 2)"}
        if platform == "MacBookPro17,1"  {return "MacBook Pro (13-inch, M1, 2020)"}
        if platform == "MacBookPro18,3"  {return "MacBook Pro (14-inch, 2021)"}
        if platform == "MacBookPro18,4"  {return "MacBook Pro (14-inch, 2021)"}
        if platform == "MacBookPro18,1"  {return "MacBook Pro (16-inch, 2021)"}
        if platform == "MacBookPro18,2"  {return "MacBook Pro (16-inch, 2021)"}
        return platform
    }
}

extension Device.MacBook: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "MacBook10,1"  {return "MacBook (Retina, 12-inch, 2017)"}
        if platform == "MacBook9,1"   {return "MacBook (Retina, 12-inch, 2016)"}
        if platform == "MacBook8,1"   {return "MacBook (Retina, 12-inch, 2015)"}
        if platform == "MacBook7,1"   {return "MacBook (13-inch, 2010)"}
        if platform == "MacBook6,1"   {return "MacBook (13-inch, 2009)"}
        if platform == "MacBook5,2"   {return "MacBook (13-inch, 2009)"}
        if platform == "MacBook5,2"   {return "MacBook (13-inch, 2009)"}
        return platform
    }
}

extension Device.MacPro: Generation {
    static func generation(_ platform: String) -> String {
        if platform == "MacPro4,1"  {return "Mac Pro (2009)"}
        if platform == "MacPro5,1"  {return "Mac Pro (2012)"}
        if platform == "MacPro6,1"  {return "Mac Pro (2013)"}
        if platform == "MacPro7,1"  {return "Mac Pro (2019)"}
        return platform
    }
}





