import 'package:opentelemetry/src/experimental_sdk.dart' as sdk;
import 'package:opentelemetry/src/experimental_api.dart' as api;

import 'state/meter_shared_state.dart';

class Meter implements api.Meter {
  // ignore: unused_field
  final MeterSharedState _state;

  Meter(this._state);

  @override
  api.Counter<T> createCounter<T extends num>(String name,
      {String description, String unit}) {
    return sdk.Counter<T>();
  }
}
