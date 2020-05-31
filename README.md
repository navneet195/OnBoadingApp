# OnBoadingApp
A iOS onboarding component to add easily on your project.

[![Watch the video](https://github.com/navneet195/OnBoadingApp/blob/master/Screen%20Recording%202020-05-31%20at%204.36.58%20PM.mov)

# Requirements
`OS X 10.15.5+`
`Xcode 11.5 or above`

# Usage
Drag and drop ***Introductions and Common*** folder on your app.
For this example, ensure 3 pngs exist (provided in the example repo) in the project's asset catalog, in this case 1.png, 2.png and 3.png

Use the following code in your AppDelegate.swift or similar.

```
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
               let isFirst = UserDefaults.standard.bool(forKey:"FirstTimecome" )
               if  !isFirst
               {
                   UserDefaults.standard.set(true, forKey: "FirstTimecome")
                   let mGetStartedVC = GetStartedVC(nibName: "GetStartedVC", bundle: nil)
                   let navigationController = UINavigationController(rootViewController: mGetStartedVC)
                   self.window!.rootViewController = navigationController
               }
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
```

# License
This software is Open Source under the MIT license, see LICENSE for details.
