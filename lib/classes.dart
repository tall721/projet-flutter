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

// 13. Héritage et Polymorphisme
class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}