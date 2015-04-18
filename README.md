# Rabbit-Objc

### Cocoapods

In the pod file , please add the Rabbit

```
pod "Rabbit"
```

It will be like

```
platform :ios, '8.0'
pod 'Rabbit'
```

and then install the cocoapods

```
pod install
```

### Carthage (iOS 8 or later)

In the `Cartfile` ,

```
github "Rabbit-Converter/Rabbit-Objc" >= 0.1.2
```
And then update the Carthage

```
carthage update
```

You can find the framework , under the `Carthage/Build/iOS/RabbitConverter.framework` . 

- Drag and Drop to yoru framwork. 
- Unselected the `Copy Item If Needed`

In the `Run Script` > `Input Files` , add

```
$(SRCROOT)/Carthage/Build/iOS/RabbitConverter.framework
```

In the code , you can call

```objc
#import <RabbitConverter/RabbitConverter.h>
```

### Usages

```
[Rabbit zg2uni:@"Zawgyi Text"];
[Rabbit uni2zg:@"Unicode Text"];
```

### License

MIT
