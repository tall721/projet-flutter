import 'dart:async';

// 2. Déclaration de Variables
String nom = "John";
int age = 25;

// 3. Types de Variables
double pi = 3.14;
bool isFlutterAwesome = true;

// 4. Variables Finales et Constantes
final String nomComplet = "John Doe";
const int vitesseLumiere = 299792458;

// 5. Utilisation des Listes
List<int> nombres = [1, 2, 3, 4, 5];

// 6. Utilisation des Maps
Map<String, dynamic> etudiant = {
  'nom': 'John',
  'age': 20,
  'classe': '12A'
};

// 7. Définition et Appel de Fonctions
void bonjour(String nom) {
  print("Bonjour, $nom!");
}

// 8. Fonctions avec Paramètres et Valeurs de Retour
int addition(int a, int b) {
  return a + b;
}

// 9. Conditions
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est positif");
  } else if (nombre < 0) {
    print("$nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}

// 10. Boucles
void afficherNombres() {
  // Boucle for
  print("\nBoucle for de 1 à 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  
  print("\nBoucle while de 10 à 1:");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }
}

// 11. Gestion des Exceptions
double division(int a, int b) {
  if (b == 0) {
    throw Exception('Division par zéro impossible');
  }
  return a / b;
}

// 12. Classes
class Personne {
  String _nom;
  int _age;

  // 14. Getters et Setters
  String get nom => _nom;
  set nom(String value) => _nom = value;
  
  int get age => _age;
  set age(int value) => _age = value;

  Personne(this._nom, this._age);
}

// 13. Héritage
class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// 16. Asynchrone
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

// 18. Streams
Stream<int> createStream() {
  return Stream.periodic(Duration(seconds: 1), (count) => count);
}

// 19. Factorielle
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

// 20. Filtrage de Liste
List<int> filtrerPairs(List<int> liste) {
  return liste.where((nombre) => nombre % 2 == 0).toList();
}

// Fonction pour exécuter tous les tests
void executerTests() async {
  print("=== Début des tests ===\n");

  // Test des variables
  print("1. Test des variables:");
  print("Nom: $nom, Age: $age");
  print("Pi: $pi, Flutter est génial: $isFlutterAwesome");
  print("Nom complet: $nomComplet");
  print("Vitesse de la lumière: $vitesseLumiere m/s\n");
  
  // Test des listes
  print("2. Test des listes:");
  nombres.add(6);
  print("Liste avec 6 ajouté: $nombres\n");
  
  // Test des maps
  print("3. Test des maps:");
  etudiant['note'] = 85;
  print("Étudiant avec note: $etudiant\n");
  
  // Test des fonctions
  print("4. Test des fonctions:");
  bonjour(nom);
  print("Addition de 5 et 7: ${addition(5, 7)}\n");
  
  // Test des conditions
  print("5. Test des conditions:");
  verifierNombre(10);
  verifierNombre(-5);
  verifierNombre(0);
  print("");
  
  // Test des boucles
  print("6. Test des boucles:");
  afficherNombres();
  print("");
  
  // Test des classes
  print("7. Test des classes:");
  var personne1 = Personne("Alice", 30);
  var etudiant1 = Etudiant("Bob", 20, "Terminal");
  
  print("Personne: ${personne1.nom}, ${personne1.age}");
  print("Étudiant: ${etudiant1.nom}, ${etudiant1.age}, ${etudiant1.classe}\n");
  
  // Test asynchrone
  print("8. Test asynchrone:");
  String resultat = await fetchData();
  print("Résultat asynchrone: $resultat\n");
  
  // Test stream
  print("9. Test stream (5 premières valeurs):");
  await for (final value in createStream().take(5)) {
    print('Valeur du stream: $value');
  }
  print("");
  
  // Test factorielle
  print("10. Test factorielle:");
  print("Factorielle de 5: ${factorielle(5)}\n");
  
  // Test filtrage
  print("11. Test filtrage de liste:");
  var nombresFiltres = filtrerPairs([1, 2, 3, 4, 5, 6]);
  print("Nombres pairs: $nombresFiltres\n");

  print("=== Fin des tests ===");
}