## NoStoryboard


1. Select the “Main.storyboard” file in the main folder, left-click and hit delete.
2. General > Deployment Info > Main Interface it says "Main" inside. Delete it.
3. Navigate to the Info.Plist file on the left side. Under the keys, Application Scene Manifest > Scene Configuration > Application Session Role > Item 0 (Default Configuration), select the string “Storyboard Name” and delete it with the minus button.
4. Open [SceneDelegate.swift](https://github.com/emintolgahanpolat/NoStoryboard/blob/main/NoStoryboard/SceneDelegate.swift) 
  
```
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    window = UIWindow(frame: windowScene.coordinateSpace.bounds)
    window?.windowScene = windowScene
    let vc = TabBarController() // View Controller 
    window?.rootViewController = vc
    window?.makeKeyAndVisible()
  }
```

3. New File > Cocoa Touch Class > Selected "Subcclass of : UIViewController" > Checked "Also create XIB file"
  
## 🤘 That’s it !
