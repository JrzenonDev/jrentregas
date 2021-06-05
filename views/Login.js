import React, { useState, useEffect } from 'react';
import { Text, View } from 'react-native';

export default function Login(props) {
  return(
    <View>
      <Text>Login do app modificado {props.route.params.id}</Text>
    </View>
  );
}