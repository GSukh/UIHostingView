# UIHostingView

UIHostingView is a lightweight SwiftUI View wrapper that enables the seamless integration of SwiftUI content within UIKit components.

## Overview

UIHostingView simplifies the process of incorporating SwiftUI views into your UIKit-based user interfaces. It encapsulates the necessary logic involving UIHostingController, making it easier to manage the lifecycle and interaction between UIKit and SwiftUI.

## Features

- **Seamless Integration**: UIHostingView allows you to effortlessly embed SwiftUI views into UIKit interfaces.
- **Automatic Management**: The view handles UIHostingController attachment and detachment from the parent UIViewController.
- **Enhanced UI**: Combine the power of SwiftUI's declarative syntax with the flexibility of UIKit components.
- **Performance**: Enjoy efficient performance with optimized interoperability between the two frameworks.

## Installation

To integrate UIHostingView into your project, follow these steps:

1. Add the `UIHostingView.swift` file to your project.
2. Ensure that your project targets iOS 14.0 and above.

## Usage

1. Import `UIHostingView` in your Swift file:

```swift
import UIHostingView
```

2. Create a UIHostingView instance and provide your SwiftUI view:

```swift
let hostingView = UIHostingView(view: YourSwiftUIView())
```

3. Add hostingView to your view hierarchy, just like any other UIKit view:

```swift
yourParentView.addSubview(hostingView)
```

## Requirements
iOS 14.0+
Swift 5.0+

## License
UIHostingView is available under the MIT license. See the LICENSE file for more info.

## Acknowledgements
UIHostingView was inspired by the desire to bridge the gap between SwiftUI and UIKit seamlessly.

## Contact
For any inquiries or questions, feel free to reach out at grigoriy.sukhorukov@gmail.com
