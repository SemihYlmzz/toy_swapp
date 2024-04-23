import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../profile/profile.dart';
import '../create_toy.dart';

extension CreateToyNavigateProfileOnCreate on CreateToyBlocListeners {
  BlocListener<CreateToyBloc, CreateToyState> navigateProfileOnCreate() {
    return BlocListener(
      listener: (context, state) {
        final isToyCreated = state.isToyCreated;

        if (!isToyCreated) {
          return;
        }
        if (!context.canPop()) {
          return;
        }
        ProfileGoRoute.instance.go(context);
        context.pop();
      },
    );
  }
}
