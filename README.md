# SpringboardExample
While writing XCTests we can uninstall the build at any time programatically using springboard.

<a href="https://ibb.co/0rTYLF6"><img src="https://i.ibb.co/0rTYLF6/Simulator-Screen-Shot-i-Phone-11-Pro-2022-04-14-at-00-06-40.png" alt="https://usaupload.com/6p1b/Simulator_Screen_Recording_-_iPhone_11_Pro_-_2022-04-13_at_16.03.51.mp4" border="0"></a>

<a href="https://usaupload.com/6p1b/Simulator_Screen_Recording_-_iPhone_11_Pro_-_2022-04-13_at_16.03.51.mp4" target="_blank" title="Download from USAupload | Upload Files for free">Check out demo video here</a>

Here is the source code for deleting app.

```
class Springboard {
    
    static let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
    class func deleteApp () {
        //terminate app and activate Springboard
        XCUIApplication().terminate()
        springboard.activate()
        
        //tap on app icon
        let appIcon = springboard.icons.matching(identifier: "SpringboardExample").firstMatch
        
        if appIcon.exists {
            
            appIcon.press(forDuration: 2.0)
            
            //Access first alert button (Remove App)
            let _ = springboard.buttons["Remove App"].waitForExistence(timeout: 1.0)
            springboard.buttons["Remove App"].tap()
            
            //Access second alert button (Delete App)
            let _ = springboard.alerts.buttons["Delete App"].waitForExistence(timeout: 1.0)
            springboard.buttons["Delete App"].tap()
            
            //Access second alert button (Delete)
            let _ = springboard.alerts.buttons["Delete"].waitForExistence(timeout: 1.0)
            springboard.buttons["Delete"].tap()
        }
        
    }
}
```

Usage

```
    func test_your_test_name() {
       //test details
       Springboard.deleteApp()
    }
    
```
