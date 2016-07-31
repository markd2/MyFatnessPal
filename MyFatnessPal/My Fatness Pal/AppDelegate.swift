import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let weights = Weight.weightsFromArray([50.5, 60.7, 100.3, 880.0])
        print("\(weights)")

    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }


}

