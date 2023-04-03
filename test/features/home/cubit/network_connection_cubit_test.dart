import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:movies_app_surge/features/home/cubit/network_connection_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  late NetworkConnectionCubit networkConnectionCubit;

  setUp(() {
    networkConnectionCubit = NetworkConnectionCubit();
  });

  test('emits [ConnectivityStatus.none] as the initial state of the Cubit', () {
    expect(networkConnectionCubit.state.status, ConnectivityStatus.none);
  });

  blocTest<NetworkConnectionCubit, NetworkConnectionState>(
    'emits [ConnectivityStatus.none] when connection is resetted.',
    build: () => networkConnectionCubit,
    act: (cubit) => cubit.resetConnectionStatus(),
    expect: () => [
      const NetworkConnectionState(status: ConnectivityStatus.none),
    ],
  );
}
