
List<int> nombres = [1, 2, 3, 4, 5];
void ajouterNombre() {
  nombres.add(6);
  print("Liste après ajout: $nombres");
}

// 6. Utilisation des Maps
Map<String, dynamic> etudiant = {
  'nom': 'Cheikh',
  'age': 20,
  'classe': 'Dfe'
};

void ajouterNote() {
  etudiant['note'] = 85;
  print("Map après ajout: $etudiant");
}