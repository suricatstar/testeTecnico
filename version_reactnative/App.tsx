import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet } from 'react-native';

const App: React.FC = () => {
  const [somatic, setSomatic] = useState<number>(0);
  const [inputValue, setInputValue] = useState<string>('');

  const divisiveis = (numero: number): void => {
    let somatorio = 0;
    for (let i = 3; i < numero; i++) {
      if (i % 3 === 0 || i % 5 === 0) {
        somatorio += i;
      }
    }

    setSomatic(somatorio);
  };

  return (
    <View style={styles.container}>
      <TextInput
        style={styles.input}
        placeholder="Digite um valor"
        keyboardType="numeric"
        value={inputValue}
        onChangeText={(text) => setInputValue(text)}
      />
      <Button
        title="Calcular"
        onPress={() => divisiveis(parseInt(inputValue, 10) || 0)}
      />
      <View style={styles.resultContainer}>
        <Text style={styles.resultText}>Resultado: {somatic}</Text>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    margin: 10,
    padding: 8,
    textAlign: 'center',
  },
  resultContainer: {
    margin: 8,
  },
  resultText: {
    fontWeight: 'bold',
    fontSize: 23,
  },
});

export default App;
