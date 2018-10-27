String who = 'wOrlD';

void main() {
  List<String> splitted = who.split('');

  final uCFirst = (item) =>
      item == splitted.first ? item.toUpperCase() : item.toLowerCase();

  String formatted = splitted.map(uCFirst).join('');

  print('Hello, $formatted!');
}
