import { StatusBar } from 'expo-status-bar';
import React, { useState, useEffect } from 'react';
import { Text, View, Button, Alert } from 'react-native';
import {css} from './assets/css/Css';
import Page from './views/Page';

export default function App() {

  const [product, setProduct] = useState('carro');
  const [quantity, setQuantity] = useState(0);

  // controla efeitos colateriais, corre a func quando muda a quantity
  useEffect(() => {
    Alert.alert('Um novo produto foi adicionado');
  }, [quantity]);

  const props = {
    empresa: 'JR Dev',
    name: 'José Roberto',
    produto: product,
    quantidade: quantity
  };

  return (
    <View style={css.container}>
      <Text>{product}</Text>
      <Page {...props} />
      <Button title='Adicionar produtos' onPress={() => setQuantity(quantity + 1)} />
      <StatusBar style="auto" />
    </View>
  );
}