int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

// 20. Filtrage de Liste
List<int> filtrerPairs(List<int> liste) {
  return liste.where((nombre) => nombre % 2 == 0).toList();
}