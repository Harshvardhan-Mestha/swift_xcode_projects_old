
import UIKit
import PlaygroundSupport
import AVFoundation


let hrs = DateFormatter()
hrs.dateFormat  = "zzz"

let h = hrs.string(from: Date(timeIntervalSinceNow: 1))
let m = h.replacingOccurrences(of: "GMT+", with: "", options: NSString.CompareOptions.literal, range: nil)
let r = m.replacingOccurrences(of: ":", with: "", options: NSString.CompareOptions.literal, range: nil)
print(h)


hrs.timeZone = TimeZone(abbreviation: "EDT")


let  h1 = hrs.string(from: Date(timeIntervalSinceNow: 1))
let m1 = h1.replacingOccurrences(of: "GMT+", with: "", options: NSString.CompareOptions.literal, range: nil)
let r1 = m1.replacingOccurrences(of: ":", with: "", options: NSString.CompareOptions.literal, range: nil)
print(h1)
//HH:mm:ss zzz


