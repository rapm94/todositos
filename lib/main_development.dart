import 'package:todositos/app.dart';
import 'package:todositos/app/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.development,
    name: 'Development',
    values: FlavorValues(
      restBaseUrl: 'https://dummyjson.com',
    ),
  );
  runTodositoApp();
}
