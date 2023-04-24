import 'package:todositos/app.dart';
import 'package:todositos/app/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.staging,
    name: 'Staging',
    values: FlavorValues(
      restBaseUrl: 'https://dummyjson.com',
    ),
  );
  runTodositoApp();
}
