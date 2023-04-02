part of 'network_connection_cubit.dart';

enum ConnectivityStatus { connected, notConnected, none }

class NetworkConnectionState extends Equatable {
  const NetworkConnectionState({
    this.status = ConnectivityStatus.none,
  });

  final ConnectivityStatus status;

  @override
  List<Object> get props => [status];

  NetworkConnectionState copyWith({ConnectivityStatus? status}) {
    return NetworkConnectionState(status: status ?? this.status);
  }
}
