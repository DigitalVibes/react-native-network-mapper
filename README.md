
# react-native-network-mapper

This is a WIP package, refrain from using unless a proper release happens

## Getting started

`$ npm install react-native-network-mapper --save`

### Mostly automatic installation

`$ react-native link react-native-network-mapper`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-network-mapper` and add `RNNetworkMapper.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNetworkMapper.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.psychapps.RNNetworkMapperPackage;` to the imports at the top of the file
  - Add `new RNNetworkMapperPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-network-mapper'
  	project(':react-native-network-mapper').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-network-mapper/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-network-mapper')
  	```


## Usage
```javascript
import RNNetworkMapper from 'react-native-network-mapper';

// TODO: What to do with the module?
RNNetworkMapper;
```
  