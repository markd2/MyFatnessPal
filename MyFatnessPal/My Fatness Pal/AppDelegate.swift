import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    var weights = Weight.weightsFromArray([259.1, 260, 258.2, 259.7, 258.3])
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        print(weights)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
}

