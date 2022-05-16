import * as React from 'react';
import { Text,Button, View } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';

function Home1() {
  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text>Home!</Text>
    </View>
  );
}

function Settings1() {
  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text>Settings!</Text>
    </View>
  );
}


const Tab = createBottomTabNavigator();


function MyTabs() {
  return (
    <Tab.Navigator>
      <Tab.Screen name="Home" component={Home1} />
      <Tab.Screen name="Settings" component={Settings1} />
    </Tab.Navigator>
  );
}

export default function Tabnavi() {
  return (
    <NavigationContainer>
      <MyTabs />
    </NavigationContainer>
  );
}
