import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    var floatWeights = [259.1, 260, 258.2, 259.7, 258.3]
    var dates = [(year: 2016, month: 7, day: 31),
                 (year: 2016, month: 7, day: 30),
                 (year: 2016, month: 7, day: 29),
                 (year: 2016, month: 7, day: 28),
                 (year: 2016, month: 7, day: 27)]
    var readings = [Reading]()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let readings = Reading.readingsFrom(floatWeights: floatWeights, dateTuples: dates)
        print("\(readings)")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
}

