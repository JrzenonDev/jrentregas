import React from 'react';
import { View, Text } from 'react-native';
import {css} from '../assets/css/Css';

export default function Page(props) {
  return(
    <View style={css.textPage}>
      <Text>
        Empresa: {props.empresa}, nome: {props.name}.
        Comprou o produto: {props.produto} com a quantidade de: {props.quantidade}
      </Text>
    </View>
  );
}