import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'network_connection_state.dart';

class NetworkConnectionCubit extends Cubit<NetworkConnectionState> {
  NetworkConnectionCubit() : super(const NetworkConnectionState()) {
    networkConnectionListener();
  }

  networkConnectionListener() {
    try {
      StreamSubscription subscription =
          Connectivity().onConnectivityChanged.listen(null);

      subscription.onData((result) async {
        ConnectivityStatus status =
            await InternetConnectionChecker().hasConnection
                ? ConnectivityStatus.connected
                : ConnectivityStatus.notConnected;

        if (!isClosed) {
          emit(state.copyWith(status: status));
        } else {
          subscription.cancel();
        }
      });
    } catch (e) {
      if (!isClosed) {
        emit(state.copyWith(status: ConnectivityStatus.none));
      }
    }
  }

  resetConnectionStatus() {
    if (!isClosed) {
      emit(state.copyWith(status: ConnectivityStatus.none));
    }
  }
}
