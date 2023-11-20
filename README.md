# TabNavigationStack
SwiftUI example of navigation implementation NavigationStack-TabView-NavigationStack burger.

You may already know that you can't put new NavigationStack inside other NavigationStack, so we can't make burger like in UIKit where we could navigate inside each tab and also on top of tab view.
Well here's a solution to make this happen in SwiftUI, I am using overlay on top of TabView where top NavigationStack added, sad but we also need Introspect library to remove that's NavigationStack's white background.
Also I am disabling hit testing on top navigation view when there are no views on top, should be clear from the code, so check it out and have a nice day.
