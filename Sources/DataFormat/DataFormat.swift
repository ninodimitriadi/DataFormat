// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol DataFormatting {
    func format(data: String) -> String
}

final public class DataFormat: DataFormatting {
    
    public init() {}
    
    public func format(data: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        guard let date = dateFormatter.date(from: data) else {
            return "nil"
        }
        
        let dateForRerurnFormatter = DateFormatter()
        dateForRerurnFormatter.dateFormat = "EEEE, d MMM yyyy"
        
        return dateForRerurnFormatter.string(from: date)
    }
}
