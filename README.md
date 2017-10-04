# PrivatePod

This project demonstrates how to create private cocoapod.

## Tutorial

- Create your podspec file

```ruby
pod spec create '<Your Pod Name>'
```
A Podspec file, or Spec, describes a version of a Pod library. It includes details about where the source files are located, which files to use, the build settings to apply, dependencies, frameworks used and other general metadata such as the name, version and description for the Pod.

- Podspec version

A Podspec is essentially a snapshot in time of your CocoaPod as denoted by a version number. When you update a pod, you will also need to update the Podspec’s version. You can change it to any version that is suitable to you but make sure that it is the same version as your Git tag version.

## Example

To run the example project, run `pod install` from the Example directory first.

## Installation

### CocoaPods

To integrate PrivatePod into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

target '<Your Target Name>' do
pod 'PrivatePod', :git => 'https://github.com/powerwolf543/PrivatePod.git'
end
```

Then, run the following command:

```bash
$ pod install
```

### Import module

```swift
import PrivatePod
```

## Requirements

- iOS 10+
- Xcode 9+
- Swift 4+
- CocoaPods 1.3.1+

## Version

- v 1.0.0

## Author

Nixon Shih, powerwolf543@gmail.com

## License

PrivatePod is available under the MIT license. See the LICENSE file for more info.
