abstract class StateServies {
  static final List<String> states = [
    'flutter',
    'java',
    'python',
    'c++',
    'javascript',
    'html',
    'css',
    'dart',
    'kotlin',
    'swift',
    'ruby',
    'php',
    'sql',
    'go',
    'rust',
  ];

  static List<String> getSuggestion(String query) {
    List<String> catogryListitem = [];
    catogryListitem.addAll(states);
    catogryListitem.retainWhere(
      (element) => element.toLowerCase().contains(query.toLowerCase()),
    );
    return catogryListitem;
  }
}












