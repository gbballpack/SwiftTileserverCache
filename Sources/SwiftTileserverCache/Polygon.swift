//
//  Polygon.swift
//  SwiftTileserverCache
//
//  Created by Florian Kostenzer on 05.11.19.
//

import Foundation

public struct Polygon: Codable, Hashable, Drawable {
    public var fillColor: String
    public var strokeColor: String
    public var strokeWidth: UInt8
    public var path: [[Double]]
    
    public var hashString: String {
        return "P\(hashValue)"
    }
    
    enum CodingKeys: String, CodingKey {
        case fillColor = "fill_color", strokeColor = "stroke_color", path, strokeWidth = "stroke_width"
    }
}
