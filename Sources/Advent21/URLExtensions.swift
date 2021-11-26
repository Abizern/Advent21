import Foundation

extension URL {
    public static func urlForInput(_ day: Int) -> URL {
        let fileName = "day" + String(format: "%02d", day)
        return Bundle.module.url(forResource: fileName, withExtension: "txt")!
    }
}
