import Foundation
import AoCUtils

public struct Day04 {
    let input: String

    init(_ input: String) {
        self.input = input
    }
}

extension Day04: Problem {
    public init() throws {
        let string = try Input.string(from: .urlForInput(4))
        self = Self.init(string)
    }

    public func title() throws -> String {
        throw UtilsError.notImplemented
    }

    public func part1() throws -> String {
        throw UtilsError.notImplemented
    }

    public func part2() throws -> String {
        throw UtilsError.notImplemented
    }
}
