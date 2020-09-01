
# react-native-ask-for-review

##  Ask for ⭐️⭐️⭐️⭐️⭐️ nicely

This React Native package basicly triggers system-provided rating prompt with following Apple's practices.

For more information:

[Relevant Human interface guideline](https://developer.apple.com/design/human-interface-guidelines/ios/system-capabilities/ratings-and-reviews/)

[Requesting App Store Review Documentation](https://developer.apple.com/documentation/storekit/skstorereviewcontroller/requesting_app_store_reviews)


<div align="center">
	<img src="https://imgur.com/f7a4eEX.png" />
</div>


## Getting started

`npm install react-native-ask-for-review --save`

or

`yarn add react-native-ask-for-review`

than 

`cd ios && pod install`

### Mostly automatic installation

`react-native link react-native-ask-for-review`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ask-for-review` and add `RNAskForReview.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAskForReview.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

  	```


## 🧠 Usage
```javascript
import AskForReview from 'react-native-ask-for-review';

// Call it in your App.js
AskForReview();
```

 ### 🗺 Road Map

- [ ] Solution for Android side 🤔
