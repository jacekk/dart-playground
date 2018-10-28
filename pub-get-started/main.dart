import 'package:args/args.dart';

// $ dart pub-get-started/main.dart -m test -n 66 -- more --flags here
// Options: {mode, line-number, verbose}
// Arguments: [-m, test, -n, 66, --, more, --flags, here]
// Rest: [more, --flags, here]
// Verbose: false
// Mode: test
// Line number: 66

void main(List<String> arguments) {
  final parser = new ArgParser()
    ..addOption('line-number', abbr: 'n', defaultsTo: '10')
    ..addFlag('verbose', abbr: 'v', negatable: true)
    ..addOption('mode', abbr: 'm', allowed: ['debug', 'test', 'release']);

  ArgResults result = parser.parse(arguments);

  print('Options: ${result.options}');
  print('Arguments: ${result.arguments}');
  print('Rest: ${result.rest}');

  print('Verbose: ${result["verbose"]}');
  print('Mode: ${result["mode"]}');
  print('Line number: ${result["line-number"]}');
}
