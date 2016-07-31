import Foundation

struct Reading {
    var weight: Weight
    var when: (year: Int, month: Int, day: Int)
    
    // Testing convenience
    static func readingsFrom(floatWeights: [Double],
                             dateTuples: [(year: Int, month: Int, day: Int)]) -> [Reading] {
//        assert(floatWeights.count == dateTuples.count)
        
        let weights = Weight.weightsFromArray(floatWeights)
        
        var readings = [Reading]()
        
        for thing in zip(weights, dateTuples) {
            let reading = Reading(weight: thing.0, when: thing.1)
            readings.append(reading)
        }
        return readings
    }
}


extension Reading: CustomStringConvertible {
    var description: String {
        return "\(weight) on \(when)"
    }
}


