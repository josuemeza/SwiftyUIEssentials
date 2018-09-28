# SwiftyUIEssentials

[![CI Status](http://img.shields.io/travis/josuemeza/SwiftyUIEssentials.svg?style=flat)](https://travis-ci.org/josuemeza/SwiftyUIEssentials)
[![Version](https://img.shields.io/cocoapods/v/SwiftyUIEssentials.svg?style=flat)](http://cocoapods.org/pods/SwiftyUIEssentials)
[![License](https://img.shields.io/cocoapods/l/SwiftyUIEssentials.svg?style=flat)](http://cocoapods.org/pods/SwiftyUIEssentials)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyUIEssentials.svg?style=flat)](http://cocoapods.org/pods/SwiftyUIEssentials)
[![Readme Score](http://readme-score-api.herokuapp.com/score.svg?url=https://github.com/josuemeza/swiftyuiessentials)](http://clayallsopp.github.io/readme-score?url=https://github.com/josuemeza/swiftyuiessentials)

SwiftyUIEssentials is a collection of classes and extensions created by simplify the common actions on the iOS apps development.

With this pod you can define shadows, borders and gradients on Interface Builder or programatically and some other actions extended on `UIColor`, `UISearchBar` and  `UIView`

All the functionalities are documented on the [documentation page](https://josuemeza.com/pods/SwiftyUIEssentials/).

## Requirements

- iOS 10.0+
- Swift 3.2+

## Installation

SwiftyUIEssentials is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyUIEssentials'
```

**Note:** Cocoapods version 1.5 generates errors between Interface Builder and designable values. It is recommended to use Cocoapods 1.4.

## Usage

### SEBorderView

#### In-code

Import SwiftyUIEssentials and make a `SEBorderView`. You can use `border` method to set color, width and radius, or manually with each attribute.

```swift
let view = SEBorderView()
// With method
view.border(.red, width: 5, radius: 20)
// With attributes
view.borderColor = .red
view.borderWidth = 5
view.borderRadius = 20
```

#### Interface builder

Create a `UIView` and set the custom class to `SEBorderView`. On Attribute inspector you can set all values.

![SEBorderView](https://josuemeza.com/pods/doc-assets/img/SEBorderView-sample.gif)

### SEShadowView

#### In-code

Import SwiftyUIEssentials and make a `SEShadowView`. You can use `shadow` method to set color, opacity, offset and radius, or manually with each attribute.

```swift
let view = SEShadowView()
// With method
view.shadow(color: .red, opacity: 20, offset: CGSize(width: 5, height: 5), radius: 20)
// With attributes
view.shadowColor = .red
view.shadowOpacity = 20
view.shadowOffset = CGSize(width: 5, height: 5)
view.shadowRadius = 20
```

#### Interface builder

Create a `UIView` and set the custom class to `SEShadowView`. On Attribute inspector you can set all values.

![SEShadowView](https://josuemeza.com/pods/doc-assets/img/SEShadowView-sample.gif)

### SEGradientView

#### In-code

Import SwiftyUIEssentials and make a `SEGradientView`. You can use `gradient` method to set start and end color and start and end point, or manually with each attribute.

```swift
let view = SEGradientView()
CGPoint(x: 0, y: 0.5)
// With method
view.gradient(startColor: .yellow, endColor: .red, startPoint: 
CGPoint(x: 0, y: 0.5), endPoint: 
CGPoint(x: 1, y: 0.5))
// With attributes
view.gradientStartColor = .yellow
view.gradientEndColor = .red
view.gradientStartPoint = GPoint(x: 0, y: 0.5)
view.gradientEndPoint = CGPoint(x: 1, y: 0.5)
```

#### Interface builder

Create a `UIView` and set the custom class to `SEGradientView`. On Attribute inspector you can set all values.

![SEGradientView](https://josuemeza.com/pods/doc-assets/img/SEGradientView-sample.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Josue Meza Peña, contacto@josuemeza.com

## License

SwiftyUIEssentials is available under the MIT license. See the LICENSE file for more info.
