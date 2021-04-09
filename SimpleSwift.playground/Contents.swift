print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    let operation = args.last!
    
    if (operation == "count") {
        return args.count - 1
        
    } else if (operation == "avg") {
        var sum = 0
        for i in 0..<args.count - 1 {
            sum += Int(args[i])!
        }
        if (sum == 0) {
            return 0
        }
        return sum / (args.count - 1)
        
    } else if (operation == "fact") {
        if (args[0] == "fact") {
            return 0
        }
        var mult = Int(args[0])!
        var retVal: Int = 1
        while mult > 0 {
            retVal *= mult
            mult -= 1
        }
        return retVal
        
    } else {
        let operation = args[1]

        if (operation == "+") {
            return Int(args[0])! + Int(args[2])!
        }
        if (operation == "-") {
            return Int(args[0])! - Int(args[2])!
        }
        if (operation == "*") {
            return Int(args[0])! * Int(args[2])!
        }
        if (operation == "/") {
            return Int(args[0])! / Int(args[2])!
        }
        if (operation == "%") {
            return Int(args[0])! % Int(args[2])!
        }
        
    }
    return -1 // no solution found
}

func calculate(_ arg: String) -> Int {
    var newArgs: [String] = []
    for x in arg {
        if (x == " ") {
            continue
        }
        if (x == "c") {
            newArgs.append("count")
            break
        }
        if (x == "a") {
            newArgs.append("avg")
            break
        }
        if (x == "f") {
            newArgs.append("fact")
            break
        }

        newArgs.append(String(x))

    }
    return(calculate(newArgs))
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers
/*
calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5
*/
 
// Implement calculate([String]) and calculate(String)
// to use floating-point values
/*
func calculate(_ args: [String]) -> Double {
    return -1.0
}
func calculate(_ arg: String) -> Double {
    return -1.0
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5
*/

// sources:
// https://stackoverflow.com/questions/30992191/factorials-in-swift
