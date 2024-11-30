void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est positif");
  } else if (nombre < 0) {
    print("$nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}

// 10. Boucles (for, while)
void afficherNombresFor() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void afficherNombresWhile() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// 11. Gestion des Exceptions
double division(int a, int b) {
  if (b == 0) {
    throw Exception('Division par zéro impossible');
  }
  return a / b;
}