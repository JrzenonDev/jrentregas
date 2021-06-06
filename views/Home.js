import React from 'react';
import { Text, View, Image, TouchableOpacity } from 'react-native';
import Css, { css } from '../assets/css/Css';

export default function Home({ navigation }) {
  return(
    <View style={css.container2}>

      <TouchableOpacity style={css.btnHome} onPress={() => navigation.navigate('Login') } >
        <Image style={css.imgBtn} source={require('../assets/img/login.png')} />
      </TouchableOpacity>


      <TouchableOpacity onPress={() => navigation.navigate('Rastreio', {id: 86}) } >
        <Image style={css.imgBtn} source={require('../assets/img/rastreiamento.png')} />
      </TouchableOpacity>

    </View>
  );
}