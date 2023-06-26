//
//  Utils.swift
//  ios_chadopedia_app
//
//  Created by fan on 2023/6/24.
//

import Foundation
import UIKit

// 從 Gomaji搬過來的
private var cachedFormatters = [String: DateFormatter]()

func printLog(_ format: Any, _ args: [CVarArg] = [], file: String = #file, function: String = #function, line: Int = #line) {
    let filename = URL(string: file)?.lastPathComponent.components(separatedBy: ".").first
    let string = composeBoxString(title: "☘️ \(filename ?? "").\(function) [line: \(line)]", sections: [
        ("\(format)", [])
    ])

    #if DEBUG
        Swift.print(string)
    #endif
}

func composeBoxString(title: String, sections: [(String, [String])]) -> String {
    return "\(title) \(DateFormatter.cached(withFormat: "HH:mm:ss").string(from: Date()))\n" + sections.reduce("") {
        "\($0)  ├─ \($1.0)\n" + $1.1.reduce("") {
            "\($0)  │ \($1)\n"
        }
    }
}

extension DateFormatter {
    @objc public static func cached(withFormat format: String) -> DateFormatter {
        if let cachedFormatter = cachedFormatters[format] { return cachedFormatter }
        let formatter = DateFormatter()
        formatter.dateFormat = format
        cachedFormatters[format] = formatter
        return formatter
    }
}
