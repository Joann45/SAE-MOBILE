import 'package:flutter_test/flutter_test.dart';
import 'package:sae_mobile/models/provider.dart';

void main() {
  test('Test du chargement des restaurants', () async {
    await ProviderService.loadRestaurants();
    // ...vous pouvez ajouter des assertions si vous avez des données de retour attendues...
  });
}
