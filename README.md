[![Cocoapods](https://img.shields.io/badge/Tool-Cocoapods-brown.svg)](https://github.com/CocoaPods/CocoaPods)

# PrivatePod

This project demonstrates how to create private cocoapod.


- [Tutorial](#Tutorial)
- [Example](#Example)
- [Installation](#Installation)
- [Requirements](#Requirements)
- [Author](#Author)
- [License](#License)

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

- frameworks

If your pod is depending on other frameworks such as `UIKit`, `Foundation`, you can specify frameworks as the code below.

```ruby
s.frameworks= 'Foundation', 'UIKit'
```

- resources

You also can specify resources such as `storyboard`, `xib`, `image`, and `xcassets`. When you set this option, it will add resources in `Copy Bundle Resources` of `Build Phases`.

```ruby
s.resources = ["PrivatePod/*.xcassets", "PrivatePod/xib/*.xib"]
```

- subspec

`Subspecs` are a way of chopping up the functionality of a Podspec, allowing people to install a subset of your library.

```ruby
Pod::Spec.new do |s|

  s.name = "PrivatePod"
  s.source = { :git => "https://github.com/powerwolf543/PrivatePodExample.git", :tag => s.version }

  s.subspec 'SubPrivatePod' do |sp|
    sp.source_files  = 'PrivatePod/SubPrivatePod/*.swift'
  end
end
```

With the above example a Podfile using `pod 'PrivatePod'` results in the inclusion of the whole library, while `pod 'PrivatePod/SubPrivatePod'` can be used if you are interested only in the `SubPrivatePod` specific parts.

### Customize BuildSetting

You can write `Ruby` in the `podfile` that can help you to configure the `build setting` for each pods.

```Ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
        if target.name == 'PrivatePod'
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.2'
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'                
            end
        end
    end
end
```

## Example

The example project is under the `Example` folder. If you are the first time to build this project you need to run `pod install` from the Example directory first.

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
- Xcode 10+
- Swift 4.2+
- CocoaPods 1.5.3+

## Author

Nixon Shih, powerwolf543@gmail.com

## License

PrivatePod is available under the MIT license. See the LICENSE file for more info.
