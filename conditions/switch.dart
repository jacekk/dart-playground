import 'package:args/args.dart';

// $ dart switch.dart -p 69
// Been better
// $ dart switch.dart -p 30
// GTFO!

void jsAlikeSwitch(int pts) {
  // "Case expressions must be constant." for each `case` line below.

  // switch (true) {
  //   case pts >= 90:
  //     print('Very good');
  //     break;
  //   case pts >= 75:
  //     print('Nice');
  //     break;
  //   case pts >= 50:
  //     print('Been better');
  //     break;
  //   case pts >= 40:
  //     print('Shame on you');
  //     break;
  //   default:
  //     print('GTFO!');
  // }
}

void fancySwitch(int pts) {
  var mapping = {
    'Very good': pts >= 90,
    'Nice': pts >= 75,
    'Been better': pts >= 50,
    'Shame on you': pts >= 40,
    'GTFO!': true,
  };

  var matchedKeys = mapping.keys.where((item) => mapping[item]);

  print(matchedKeys.first);
}

void main(List<String> arguments) {
  final parser = new ArgParser()
    ..addOption('points', abbr: 'p');

  ArgResults args = parser.parse(arguments);
  int pts = int.tryParse(args['points'], radix: 10);

  jsAlikeSwitch(pts);
  fancySwitch(pts);
}
