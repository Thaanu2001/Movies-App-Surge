import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../movie_list/presentation/screens/movie_list_page.dart';
import '../../cubit/network_connection_cubit.dart';
import '../widgets/header.dart';
import '../widgets/no_connectivity_popup.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  bool isConnectivityPopupOpen = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkConnectionCubit, NetworkConnectionState>(
      listener: (context, state) {
        if (state.status == ConnectivityStatus.notConnected &&
            !isConnectivityPopupOpen) {
          isConnectivityPopupOpen = true;
          context.read<NetworkConnectionCubit>().resetConnectionStatus();
          noConnectivityPopup(context)
              .then((value) => isConnectivityPopupOpen = false);
        }
      },
      child: Scaffold(
        appBar: customAppBar(),
        body: const MovieListPage(),
      ),
    );
  }
}
