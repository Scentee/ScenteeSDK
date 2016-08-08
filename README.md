ScenteeSDK for iOS
===

This SDK is for iOS application to emit a fragrant spray via Scentee device.

HOW TO USE IT
---

### Import ScenteeSDK.framework ###

Choose the `ScenteeSDK.framework` you downloaded from
`Target` > `General` > `Linked frameworks and Libraries` > `+` > `Add Other...`

`ScenteeSDK.framework` is a directory, not a file.

### Other Setting in Xcode ###

Add following value at
`Target` > `Build Settings` > `Architectures` > `Build Active Architecture Only` > `Debug`

    No

### How To Emit Fragment Splay  ###

**AppDelegate.swift**

```diff
+ import ScenteeSDK

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
+     ScenteeSDK.scentee().initialize()
      return true
  }
```

**ViewController.swift**

```diff
+ @IBAction func buttonTapped(sender: AnyObject) {
+     do {
+         try ScenteeSDK.catchException {
+             ScenteeSDK.scentee().puffAndFlashLedWithRed(255, green: 255, blue: 255, special: 1, time: 5000)
+         }
+     }
+     catch {
+         let alert: UIAlertController = UIAlertController(title: "Puff failed..", message: "Make sure the device is connected.", preferredStyle: .Alert)
+         let yesAction = UIAlertAction(title: "OK", style: .Default) { action in print("OK") }
+         alert.addAction(yesAction)
+         self.presentViewController(alert, animated: true, completion: nil)
+     }
+ }
```

Reference
---

Initialize ScenteeSDK.

```swift
ScenteeSDK.scentee.initialize()
```

Judges the condition of connection of Scentee device.

```swift
let result = ScenteeSDK.scentee.checkDeviceState()
```

+ `result` :
   + `true` :
     Connected correct
   + `false` :
     Connected wrong

Judges the condition of Scentee device in detail.

```swift
let state = ScenteeSDK.scentee.checkDetailedDeviceState()
```

+ `state` :
   + `0` :
     OK
   + `1` :
     NO DEVICE
   + `2` :
     COMMUNICATION ERROR
   + `3` :
     NETWORK ERROR
   + `17` :
     NO TANK
   + `18` :
     ERROR TANK
   + `111` :
     MIC INITIALIZATION ERROR

Emit fragment

```swift
ScenteeSDK.scentee().puffAndFlashLedWithRed(255, green: 255, blue: 255, special: 1, time: 5000)
```

+   `red` :
    LED Color of Scentee device (RGB  Red 0〜255)

+   `blue` :
    LED Color of Scentee device  (RGB Blue 0〜255)

+   `green` :
    LED Color of Scentee device  (RGB Green 0〜255)

+   `special` :
   + `0` :
     Lighting Scentee device For The LED Color by RGB
   + `1` :
     Lighting Scentee device For Rainbow

+   `time` :
  Term of emitting (millisecond)

+   `misc` :
  Append Data (40 characters)

Only Lighting Without Emitting

```swift
ScenteeSDK.scentee().flashLedWithRed(255, green: 255, blue: 255, special: 1, time: 5000)
```

+   `red` :
    LED Color of Scentee device (RGB  Red 0〜255)

+   `blue` :
    LED Color of Scentee device  (RGB Blue 0〜255)

+   `green` :
    LED Color of Scentee device  (RGB Green 0〜255)

+   `special` :
   + `0` :
     Lighting Scentee device For The LED Color by RGB
   + `1` :
     Lighting Scentee device For Rainbow

+   `time` :
    Term of emitting (millisecond)

Get The Information of Scentee cartridge ID

```swift
let tankId = ScenteeSDK.scentee.getTankId()
```

---

Copyright &copy; 2016 Scentee. All rights reserved.
