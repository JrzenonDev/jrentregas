import React, { useState, useEffect } from 'react';
import { Button, Text, View } from 'react-native';

export default function Home(props) {
  console.log('props: ', props);
  return(
    <View>
      <Text>Home do app</Text>
      <Button
        title='Login'
        onPress={() => props.navigation.navigate('Login', {
          id: 86
        }) }
      />
    </View>
  );
}