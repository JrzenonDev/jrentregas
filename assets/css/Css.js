import { StyleSheet } from 'react-native';

const css = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
  container2: {
    flex: 1,
    flexDirection: "row",
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
  textPage: {
    backgroundColor: "orange",
    padding: 20,
  },
  img: {
    width: 100,
    height: 100
  },
  btnHome: {
    marginRight: 50
  },
  dakbg: {
    backgroundColor: "#333"
  },
  login__msg: (text='none') =>({
    fontWeight: "bold",
    fontSize: 22,
    color: "red",
    marginTop: 10,
    marginBottom: 15,
    display: text
  }),
  login__form: {
    width: "80%"
  },
  login__input: {
    backgroundColor: "#fff",
    fontSize: 19,
    padding: 7,
    marginBottom: 15
  },
  login__button: {
    padding: 12,
    backgroundColor: "#f58634",
    alignSelf: "center",
    borderRadius: 5
  },
  login__buttonText: {
    fontWeight: "bold",
    fontSize: 22,
    color: "#333"
  },
  img__logomarca: {
    width: 100,
    height: 100,
    marginBottom: 30
  }
});

export {css};