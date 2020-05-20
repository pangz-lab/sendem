import 'package:sendem/app/provider/app_provider_interface.dart';

class DataPersistenceProvider implements AppProviderInterface {
  Map<String, Object> collection;
  DataPersistenceProvider(this.collection);

  dynamic getInstance(String instance) {
    return this.collection[instance];
  }
}