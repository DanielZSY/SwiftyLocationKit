
import UIKit

public protocol ZModelCopyables {
    
    init(instance: Self)
}
extension ZModelCopyables {
    public func copyable() -> Self {
        return Self.init(instance: self)
    }
}
/// 定位对象
public class ZModelLocation: NSObject, ZModelCopyables {
    
    /// 经度
    public var latitude: Double = 0
    /// 纬度
    public var longitude: Double = 0
    /// 国家
    public var country: String = ""
    /// 省
    public var province: String = ""
    /// 市
    public var city: String = ""
    /// 县
    public var state: String = ""
    /// 区
    public var area: String = ""
    /// 街道
    public var street: String = ""
    /// 要道
    public var thoroughfare: String = ""
    /// 国家简称 US
    public var countryCode: String = ""
    /// 国家编号
    public var countryNunber: String = ""
    /// 邮政编码
    public var postalCode: String = ""
    /// 具体地址 - 什么店
    public var address: String = ""
    /// 详细地址 - 街道 城市 省份 国家
    public var addressLines: [String]?
    /// 字典数据
    public var addressDictionary: [AnyHashable: Any]?
    
    public required override init() {
        super.init()
    }
    public required init(instance: ZModelLocation) {
        super.init()
        
        self.latitude = instance.latitude
        self.longitude = instance.longitude
        self.country = instance.country
        self.province = instance.province
        self.city = instance.city
        self.state = instance.state
        self.street = instance.street
        self.thoroughfare = instance.thoroughfare
        self.countryCode = instance.countryCode
        self.countryNunber = instance.countryNunber
        self.postalCode = instance.postalCode
        self.address = instance.address
        self.addressLines = instance.addressLines
    }
}
