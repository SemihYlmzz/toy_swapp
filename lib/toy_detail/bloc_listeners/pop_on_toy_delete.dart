import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toy_swapp/profile/profile.dart';
import '../toy_detail.dart';

extension ToyDetailPopOnToyDelete on ToyDetailBlocListeners {
  BlocListener<ToyDetailBloc, ToyDetailState> popOnToyDelete() {
    return BlocListener(
      listener: (context, state) {
        final isToyDeleted = state.isToyDeleted;

        if (!isToyDeleted) {
          return;
        }
        if (!context.canPop()) {
          return;
        }
        ProfileGoRoute.instance.go(context);
      },
    );
  }
}
