//Copyright © 2017 Outware Mobile. All rights reserved.

final class MainStoryboardController: StoryboardController {

  var storyboardName: String = "Main"

  func injectDependencies(in viewController: UIViewController) {

    switch viewController {

    case let viewController as ViewController:

      viewController.greeting = Greeting(message: "Hello, world!")
    default: break
    }
  }

}

struct Greeting {

  let message: String

  public init(message: String) {
    self.message = message
  }

}
