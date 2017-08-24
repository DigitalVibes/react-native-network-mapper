import React from 'react';
import { StyleSheet, Text, View } from 'react-native';

import RNNetworkMapper from 'react-native-network-mapper';

export default class App extends React.Component {
  render() {
    let devices = RNNetworkMapper.connectedDevices;
    return (
      <View style={styles.container}>
        <Text>{devices}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
