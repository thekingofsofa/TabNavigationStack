# TabNavigationStack
SwiftUI example of navigation implementation NavigationStack-TabView-NavigationStack burger.

You may already know that you can't put new NavigationStack inside other NavigationStack, so we can't make burger like in UIKit where we could navigate inside each tab and also on top of tab view.

Well here's a solution to make this happen in SwiftUI, I am placing "top" NavigationStack with Color.clear initial view right after TabView in ZStack.

For earlier iOS versions (16,17) we have to use Introspect library to remove that's NavigationStack's white background, because SwiftUI don't bring that possibility.

Also I am disabling hit testing on top navigation view when there are no views on top, should be clear from the code, so check it out and have a nice day.
