
# react-native-ask-for-review

<div align="center">
	<img src="https://imgur.com/f7a4eEX.png" />
</div>


## Getting started

`$ npm install react-native-ask-for-review --save`

### Mostly automatic installation

`$ react-native link react-native-ask-for-review`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ask-for-review` and add `RNAskForReview.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAskForReview.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNAskForReviewPackage;` to the imports at the top of the file
  - Add `new RNAskForReviewPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-ask-for-review'
  	project(':react-native-ask-for-review').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-ask-for-review/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-ask-for-review')
  	```


## Usage
```javascript
import AskForReview from 'react-native-ask-for-review';

// Call it in your App.js
AskForReview();
```
  
