/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, { useState, useEffect } from 'react';
import type {PropsWithChildren} from 'react';
import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  useColorScheme,
  View,
  NativeModules
} from 'react-native';

function App(): JSX.Element {
  const [text, setText] = useState('');
  const {SendCpp_to_RN} = NativeModules;
  
  useEffect(() => {
    SendCpp_to_RN.fromCpp((_err: any, res:any) => setText(res))
  }, [])

  return (
    <SafeAreaView>
      <View>
        <Text>This is test</Text>
        <Text>{text}</Text>
      </View>
    </SafeAreaView>
  );
}

export default App;
