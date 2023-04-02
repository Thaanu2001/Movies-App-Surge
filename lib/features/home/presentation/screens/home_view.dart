import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../movie_list/presentation/screens/movie_list_page.dart';
import '../../cubit/network_connection_cubit.dart';
import '../widgets/header.dart';
import '../widgets/no_connectivity_popup.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkConnectionCubit, NetworkConnectionState>(
      listener: (context, state) {
        if (state.status == ConnectivityStatus.notConnected) {
          noConnectivityPopup(context);
          context.read<NetworkConnectionCubit>().resetConnectionStatus();
        }
      },
      child: Scaffold(
        appBar: customAppBar(),
        body: const MovieListPage(),
      ),
    );
  }
}
