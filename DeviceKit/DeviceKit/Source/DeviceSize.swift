//
//  DeviceSize.swift
//  DeviceKit
//
//  Created by Bob4Open on 2022/6/2.
//
// 

import Foundation

enum DeviceSize: String, CaseIterable {
    case iPhone_Size_3_5 = "3.5"
    case iPhone_Size_4 = "4.0"
    case iPhone_Size_4_7 = "4.7"
    case iPhone_Size_5_4 = "5.4"
    case iPhone_Size_5_5 = "5.5"
    case iPhone_Size_5_8 = "5.8"
    case iPhone_Size_6_1 = "6.1"
    case iPhone_Size_6_5 = "6.5"
    case iPhone_Size_6_7 = "6.7"
    case iPad_Size_7_9 = "7.9"
    case iPad_Size_8_3 = "8.3"
    case iPad_Size_9_7 = "9.7"
    case iPad_Size_10_2 = "10.2"
    case iPad_Size_10_5 = "10.5"
    case iPad_Size_10_9 = "10.9"
    case iPad_Size_11 = "11.0"
    case iPad_Size_12_9 = "12.9"
}

enum DeviceName: String, CaseIterable {
    case iPhone_1g = "iPhone 1G" //320x480
    case iPhone_3g = "iPhone 3G" //320x480
    case iPhone_3gs = "iPhone 3GS" // 320x480
    case iPhone_4 = "iPhone 4" // 640x960
    case iPhone_4s = "iPhone 4S" // 640x960
    case iPhone_5 = "iPhone 5" //640x1136
    case iPhone_5s = "iPhone 5S" //640x1136
    case iPhone_5c = "iPhone 5C" //640x1136
    case iPhone_se_1rd_generation = "iPhone SE (1rd generation)"
    case iPhone_se_2rd_generation = "iPhone SE (2rd generation)"
    case iPhone_se_3rd_generation = "iPhone SE (3rd generation)"
    case iPhone_6 = "iPhone 6"
    case iPhone_6_plus = "iPhone 6 Plus"
    case iPhone_6s = "iPhone 6S"
    case iPhone_6s_plus = "iPhone 6S Plus"
    case iPhone_7 = "iPhone 7"
    case iPhone_7_plus = "iPhone 7 Plus"
    case iPhone_8 = "iPhone 8"
    case iPhone_8_plus = "iPhone 8 Plus"
    case iPhone_x = "iPhone X"
    case iPhone_xr = "iPhone Xr"
    case iPhone_xs = "iPhone Xs"
    case iPhone_xs_max = "iPhone Xs Max"
    case iPhone_11 = "iPhone 11"
    case iPhone_11_pro = "iPhone 11 Pro"
    case iPhone_11_pro_max = "iPhone 11 Pro Max"
    case iPhone_12 = "iPhone 12"
    case iPhone_12_mini = "iPhone 12 Mini"
    case iPhone_12_pro = "iPhone 12 Pro"
    case iPhone_12_pro_max = "iPhone 12 Pro Max"
    case iPhone_13 = "iPhone 13"
    case iPhone_13_mini = "iPhone 13 Mini"
    case iPhone_13_pro = "iPhone 13 Pro"
    case iPhone_13_pro_max = "iPhone 13 Pro Max"
    case iPad_mini_2 = "iPad Mini 2"
    case iPad_mini_3 = "iPad Mini 3"
    case iPad_mini_4 = "iPad Mini 4"
    case iPad_mini_5 = "iPad Mini 5"
    case iPad_mini_6 = "iPad Mini 6"
    case iPad_5 = "iPad 5"
    case iPad_6 = "iPad 6"
    case iPad_7 = "iPad 7"
    case iPad_8 = "iPad 8"
    case iPad_9 = "iPad 9"
    case iPad_air_1 = "iPad Air 1"
    case iPad_air_2 = "iPad Air 2"
    case iPad_air_3 = "iPad Air 3"
    case iPad_air_4 = "iPad Air 4"
    case iPad_air_5 = "iPad Air 5"
    case iPad_pro_9_7_inch = "iPad Pro 9.7 inch"
    case iPad_pro_10_5_inch = "iPad Pro 10.5 inch"
    case iPad_pro_11_inch_1rd_generation = "iPad Pro 11 inch 1rd generation"
    case iPad_pro_11_inch_2rd_generation = "iPad Pro 11 inch 2rd generation"
    case iPad_pro_11_inch_3rd_generation = "iPad Pro 11 inch 3rd generation"
    case iPad_pro_12_9_inch_1rd_generation = "iPad Pro 12.9 inch 1rd generation"
    case iPad_pro_12_9_inch_2rd_generation = "iPad Pro 12.9 inch 2rd generation"
    case iPad_pro_12_9_inch_3rd_generation = "iPad Pro 12.9 inch 3rd generation"
    case iPad_pro_12_9_inch_4rd_generation = "iPad Pro 12.9 inch 4rd generation"
    case iPad_pro_12_9_inch_5rd_generation = "iPad Pro 12.9 inch 5rd generation"
}

enum DeviceModel: String, CaseIterable {
    //-----------iPhone-----------
    case iPhone_model_2_1 //(iPhone 3GS 产品型号：国行 - A1325；国际版 - A1303）
    case iPhone_model_3_1 //(iPhone 4 GSM 产品型号：A1332)
    case iPhone_model_3_2 //(iPhone 4 8G 新制程版，目前新出的国行 8G 版均为此型号，型号同为：A1332)
    case iPhone_model_3  //(iPhone 4 CDMA 产品型号：A1349 )
    case iPhone_model_4_1 //(iPhone 4S 产品型号：A1387(电信版&国际版)；A1431(联通专用型号))
    case iPhone_model_5_1 //(iPhone 5 产品型号：A1428 - 3G+4G+GSM)
    case iPhone_model_5_2 //(iPhone 5 产品型号：A1429；中国电信定制版 - A1442 - 3G+4G+GSM+CDMA)
    case iPhone_model_5_3 //(iPhone 5C 产品型号：A1532 A1456 CDMA)
    case iPhone_model_5_4 //(iPhone 5C 产品型号：A1526 A1529 A1507 GSM)
    case iPhone_model_6_1 //(iPhone 5S 产品型号：A1533 A1453 CDMA)
    case iPhone_model_6_2 //(iPhone 5S 产品型号：A1528 A1530 A1457 GSM)
    case iPhone_model_7_1 //(iPhone 6 Plus)
    case iPhone_model_7_2 //(iPhone 6  产品型号：A1549 A1586 A1589)
    case iPhone_model_8_1 //(iPhone 6S 产品型号：A1633 A1688 A1700)
    case iPhone_model_8_2 //(iPhone 6S Plus 产品型号：A1634 A1687 A1699)
    case iPhone_model_8_3 //(iPhone SE 产品型号：A1723、A1662、A1724)
    case iPhone_model_8_4 //(iPhone SE产品型号：A1723、A1662、A1724)
    case iPhone_model_9_1 //(iPhone 7 产品型号：A1660 A1779 A1780)
    case iPhone_model_9_2 //(iPhone 7 Plus 产品型号：A1661 A1785 A1786)
    case iPhone_model_9_3 //(iPhone 7 产品型号：A1778)
    case iPhone_model_9_4 //(iPhone 7 Plus 产品型号：A1784)
    case iPhone_model_10_1 //(iPhone 8 产品型号：A1863 A1906 A1907)
    case iPhone_model_10_2 //(iPhone 8 Plus 产品型号：A1864 A1898 A1899)
    case iPhone_model_10_3 //(iPhone X 产品型号：A1865 A1902)
    case iPhone_model_10_4 //(iPhone 8 产品型号：A1905)
    case iPhone_model_10_5 //(iPhone 8 Plus 产品型号：A1897)
    case iPhone_model_10_6 //(iPhone X 产品型号：A1865 A1901 A1902)
    case iPhone_model_11_2 //(iPhone XS 产品型号：A1920 A2097 A2098 A2099 A2100)
    case iPhone_model_11_4 //(iPhone XS Max 产品型号：A1920 A2097 A2098 A2100)
    case iPhone_model_11_6 //(iPhone XS Max 产品型号：A1921 A2101 A2102 A2104)
    case iPhone_model_11_8 //(iPhone XR 产品型号：A1984 A2105 A2106 A2107 A2108)
    case iPhone_model_12_1 //(iPhone 11 产品型号：A2111 A2223 A2221)
    case iPhone_model_12_3 //(iPhone 11 Pro 产品型号：A2160 A2217 A2215)
    case iPhone_model_12_5 //(iPhone 11 Pro Max 产品型号：A2161 A2220 A2218)
//    case iPhone_model_     //(iPhone SE（第二代）产品型号：A2298)
    case iPhone_model_13_1 //(iPhone 12 mini 产品型号：A2400 A2404)
    case iPhone_model_13_2 //(iPhone 12 产品型号：A2400 A2404)
    case iPhone_model_13_3 //(iPhone 12 Pro 产品型号：A2408 A2412)
    case iPhone_model_13_4 //(iPhone 12 Pro Max 产品型号：A2408 A2412)


    //--------iPod Touch--------
    case iPod_model_4_1 //(iPod touch 4 产品型号：A1367)
    case iPod_model_5_1 //(iPod touch 5 产品型号：A1421)
    case iPod_model_7_1 //(iPod Touch 6G)

    //--------iPad--------
    case iPad_model_2_1 //(产品型号：A1395 - iPad 2 Wi-Fi)
    case iPad_model_2_2 //(产品型号：A1396 - iPad 2 Wi-Fi+3G+GSM)
    case iPad_model_2_3 //(产品型号：A1397 - iPad 2 Wi-Fi+3G+GSM+CDMA)
    case iPad_model_2_4 //(产品型号：iPad 2 Wi-Fi rev_a 新制程版)
    case iPad_model_2_5 //(产品型号：A1432 - iPad Mini Wi-Fi)
    case iPad_model_2_6 //(产品型号：A1454 - iPad Mini Wi-Fi+3G+4G+GSM)
    case iPad_model_2_7 //(产品型号：A1455 - iPad Mini Wi-Fi+3G+4G+GSM+CDMA)
    case iPad_model_3_1 //(产品型号：A1416 NewPad - iPad 3 Wi-Fi)
    case iPad_model_3_2 //(产品型号：A1403 NewPad - iPad 3 Wi-Fi+3G+GSM+CDMA)
    case iPad_model_3_3 //(产品型号：A1430 NewPad - iPad 3 Wi-Fi+3G+GSM)
    case iPad_model_3_4 //(产品型号：A1458 - iPad 4 Wi-Fi)
    case iPad_model_3_5 //(产品型号：A1459 - iPad 4 Wi-Fi+3G+4G+GSM)
    case iPad_model_3_6 //(产品型号：A1460 - iPad 4 Wi-Fi+3G+4G+GSM+CDMA)
    case iPad_model_4_1 //(iPad Air)
    case iPad_model_4_2 //(iPad Air)
    case iPad_model_4_3 //(iPad Air)
    case iPad_model_4_4 //(产品型号：A1489 - iPad Mini 2 )
    case iPad_model_4_5 //(iPad Mini 2)
    case iPad_model_4_6 //(iPad Mini 2)
    case iPad_model_4_7 //(iPad Mini 3)
    case iPad_model_4_8 //(iPad Mini 3)
    case iPad_model_4_9 //(iPad Mini 3)
    case iPad_model_5_1 //(iPad Mini 4)
    case iPad_model_5_2 //(iPad Mini 4)
    case iPad_model_5_3 //(iPad Air2)
    case iPad_model_5_4 //(iPad Air 2)
}

enum DevelopResolution: String, CaseIterable {
    case resolution_320_480 = "320 X 480"
    case resolution_640_960 = "640 X 960"
    case resolution_640_1136 = "640 X 1136"
    case resolution_750_1334 = "750 X 1334"
    case resolution_886_1920 = "886 X 1920"
    case resolution_900_1200 = "900 X 1200"
    case resolution_1080_1920 = "1080 X 1920"
    case resolution_1200_1600 = "1200 X 1600"
}

enum OrignalResolution: String, CaseIterable {
    case resolution_640_1136 = "640 X 1136"
    case resolution_750_1334 = "750 X 1334"
    case resolution_1080_1920 = "1080 X 1920"
    case resolution_1125_2436 = "1125 X 2436"
    case resolution_1242_2208 = "1242 X 2208"
    case resolution_1242_2688 = "1242 X 2688"
    case resolution_1536_2048 = "1536 X 2048"
    case resolution_1668_2224 = "1668 X 2224"
    case resolution_1668_2388 = "1668 X 2388"
    case resolution_2048_2732 = "2048 X 2732"
}

struct ResolutionRatio {
    var width: Int = 0
    var height: Int = 0
    var resolutionRatio: String?
    var ratio: Float = 0
}

class IOSDevice {
    var size: DeviceSize?
    var modelType: DeviceName?
    var orignalResolution: OrignalResolution?
    var developResolution: DevelopResolution?
    var resolutionRatio: ResolutionRatio?
    
    init(_ modelType: DeviceName) {
        self.modelType = modelType
        self.updateModelType()
         
    }
    
    func updateModelType() {
        switch modelType {
        case .iPhone_5, .iPhone_5s, .iPhone_5c:
            size = .iPhone_Size_4
            orignalResolution = .resolution_640_1136
            developResolution = .resolution_1080_1920
        case .iPhone_se_1rd_generation: //4inch
            size = .iPhone_Size_4
            orignalResolution = .resolution_640_1136
            developResolution = .resolution_1080_1920
        case .iPhone_se_2rd_generation, .iPhone_se_3rd_generation, .iPhone_6, .iPhone_6s, .iPhone_7, .iPhone_8: //4.7inch
            size = .iPhone_Size_4_7
            orignalResolution = .resolution_750_1334
            developResolution = .resolution_750_1334
        case .iPhone_6_plus, .iPhone_6s_plus, .iPhone_7_plus, .iPhone_8_plus: //5.5inch
            size = .iPhone_Size_5_5
            orignalResolution = .resolution_1242_2208
            developResolution = .resolution_1080_1920
        case .iPhone_x, .iPhone_xs, .iPhone_11_pro, .iPhone_12_mini, .iPhone_12, .iPhone_12_pro, .iPhone_13_mini, .iPhone_13, .iPhone_13_pro: //5.8inch
            size = .iPhone_Size_5_8
            orignalResolution = .resolution_1125_2436
            developResolution = .resolution_886_1920
        case .iPhone_xr, .iPhone_xs_max, .iPhone_11, .iPhone_11_pro_max, .iPhone_12_pro_max, .iPhone_13_pro_max: //6.5inch
            size = .iPhone_Size_6_5
            orignalResolution = .resolution_1242_2688
            developResolution = .resolution_886_1920
        case .iPad_mini_2, .iPad_mini_3, .iPad_mini_4, .iPad_mini_5, .iPad_5, .iPad_6: //9.7inch
            size = .iPad_Size_9_7
            orignalResolution = .resolution_1536_2048
            developResolution = .resolution_900_1200
        case .iPad_pro_10_5_inch, .iPad_7, .iPad_8, .iPad_9, .iPad_air_1, .iPad_air_2, .iPad_air_3: // 10.5inch
            size = .iPad_Size_10_5
            orignalResolution = .resolution_1668_2224
            developResolution = .resolution_1200_1600
        case .iPad_mini_6, .iPad_air_4, .iPad_air_5, .iPad_pro_11_inch_1rd_generation:
            size = .iPad_Size_11
            orignalResolution = .resolution_1668_2388
            developResolution = .resolution_1200_1600
        case .iPad_pro_9_7_inch:
            break
        case .iPad_pro_11_inch_2rd_generation:
            size = .iPad_Size_12_9
            orignalResolution = .resolution_2048_2732
            developResolution = .resolution_1200_1600
        case .iPad_pro_11_inch_3rd_generation:
            break
        case .iPad_pro_12_9_inch_1rd_generation, .iPad_pro_12_9_inch_2rd_generation, .iPad_pro_12_9_inch_3rd_generation, .iPad_pro_12_9_inch_4rd_generation, .iPad_pro_12_9_inch_5rd_generation:
            size = .iPad_Size_12_9
            orignalResolution = .resolution_2048_2732
            developResolution = .resolution_1200_1600
        case .none:
            break
        case .iPhone_1g, .iPhone_3g, .iPhone_3gs, .iPhone_4, .iPhone_4s:
            size = .iPhone_Size_3_5
            orignalResolution = .resolution_2048_2732
            developResolution = .resolution_1200_1600
        }
    }
}
