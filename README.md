# PrivatePod

This project demonstrates how to create private cocoapod.

## Tutorial

### Quickly create [pod-template](https://github.com/cocoapods/pod-template)

Run the following command:

```ruby
pod lib create '<Your Pod Name>'
```

It will actually help give you a jump start by providing a standard directory structure with a bunch of boilerplate files necessary for a high quality pod. pod lib create isn't the only way to create your pod, but it is the easiest.

### Create your podspec file manually

Ｒun the following command:

```ruby
pod spec create '<Your Pod Name>'
```

A Podspec file, or Spec, describes a version of a Pod library. It includes details about where the source files are located, which files to use, the build settings to apply, dependencies, frameworks used and other general metadata such as the name, version and description for the Pod.

### Podspec information

- version

A Podspec is essentially a snapshot in time of your CocoaPod as denoted by a version number. When you update a pod, you will also need to update the Podspec’s version. You can change it to any version that is suitable to you but make sure that it is the same version as your Git tag version.

For example:

```ruby
s.version = "1.0.0"
```

- source

Replace this URL with the Git download URL from the “Create your podspec file manually” section of the 'Podspec' you created above. In general, it’s best to use either a http: or https: URL to make it easier for other users to consume. You can use an SSH URL if you want, but you’ll need to make sure that everyone on your team — and whoever else needs access to the CocoaPod — already has their public/private key pairs setup with your Git host.

For example:

```ruby
s.source = { :git => "https://github.com/powerwolf543/PrivatePodExample.git", :tag => s.version }
```

- source_files

Here you specify the public source files based on file extensions; in this case, you specify .swift as the extension.

For example:

```ruby
s.source_files = "PrivatePod/*.swift"
```

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
