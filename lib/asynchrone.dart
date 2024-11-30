Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}


// 18. Gestion des Futures et des Streams
Stream<int> createStream() {
  return Stream.periodic(Duration(seconds: 1), (count) => count);
}