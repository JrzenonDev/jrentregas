import React, { useState, useEffect } from 'react';
import { Text, View } from 'react-native';

export default function AreaRestrita(props) {
  return(
    <View>
      <Text>AreaRestrita do app modificado {props.route.params.id}</Text>
    </View>
  );
}