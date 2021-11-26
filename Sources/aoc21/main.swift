import Advent21
import AoCUtils
import ArgumentParser
import Foundation

struct Select: ParsableCommand {
    @Option(name: .shortAndLong, help: "The day to run")
    var day: Int = 1

    @Option(name: .shortAndLong, help: "Which part to run: 1 or 2, leave blank for all")
    var part: Int = 1

    @Flag(name: .shortAndLong, help: "Runs all days and parts. Ignores other options")
    var all = false

    lazy var problems: Problems = {
        Problems([
            Day01.self,
            Day02.self,
            Day03.self,
            Day04.self,
            Day05.self,
            Day06.self,
            Day07.self,
            Day08.self,
            Day09.self,
            Day10.self,
            Day11.self,
            Day12.self,
            Day13.self,
            Day14.self,
            Day15.self,
            Day16.self,
            Day17.self,
            Day18.self,
            Day19.self,
            Day20.self,
            Day21.self,
            Day22.self,
            Day23.self,
            Day24.self,
            Day25.self,
        ])
    }()

    mutating func run() throws {
        let result: String

        if all {
            result = problems.solveAll()
        } else {
            guard day > 0 && day <= problems.count else {
                throw ValidationError("Please enter a day number between 1 and \(problems.count)")
            }

            switch part {
            case 1:
                result = problems.solve(day, part: .one)
            case 2:
                result = problems.solve(day, part: .two)
            default:
                result = problems.solve(day)
            }
        }

        print(result)
    }
}

Select.main()
