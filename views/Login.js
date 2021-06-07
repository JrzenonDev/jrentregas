import React, { useState, useEffect } from 'react';
import { KeyboardAvoidingView, Platform, TextInput, TouchableOpacity, Text, View, Image } from 'react-native';
import Css, { css } from '../assets/css/Css';

export default function Login() {

  const [display, setDisplay] = useState('none')

  return(
    <KeyboardAvoidingView
      behavior={Platform.OS === "ios" ? "padding" : "height"}
      style={[css.container, css.dakbg]}
    >

      <View>
        <Image style={css.img} source={require('../assets/img/logo.png')} />
      </View>

      <View>

        <Text style={css.login__msg(display)}>Usuário ou senha inválidos</Text>
        {/* <Text style={showMsg ? css.login__msg : [css.login__msg, css.hidden]}>Usuário ou Senha inválidos</Text> */}

      </View>

      <View style={css.login__form}>
        <TextInput style={css.login__input} placeholder="Usuário" />
        <TextInput style={css.login__input} placeholder="Senha:" secureTextEntry={true} />
        <TouchableOpacity style={css.login__button} onPress={() => setDisplay('flex')} >
          <Text style={css.login__buttonText}>Entrar</Text>
        </TouchableOpacity>
      </View>

    </KeyboardAvoidingView>
  );
}