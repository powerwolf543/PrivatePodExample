# PrivatePod

This project demonstrates how to create private cocoapod.

## Tutorial

- Create your podspec file

```ruby
pod spec create '<Your Pod Name>'
```
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

## Version

- v 1.0.0

## License

MIT
