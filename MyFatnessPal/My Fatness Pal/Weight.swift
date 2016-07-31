
import Foundation

struct Weight {
    // Too bad there's no fixed-point type.
    // Gonna use Doubles unless that causes annoyances.
    
    let pounds: Double
    
    
    // Testing convenience
    static func weightsFromArray(_ floatWeights: [Double]) -> [Weight] {
        var weights = [Weight]()
        
        for w in floatWeights {
            let weight = Weight(pounds: w)
            weights.append(weight)
        }
        return weights
    }
}


extension Weight: CustomStringConvertible {
    var description: String {
        return "\(pounds) lbs"
    }
}


