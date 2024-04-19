import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../errors/errors.dart';
import '../account_settings.dart';

extension AccountSettingsDisplayNavigatorOnSuccessUpdate
    on AccountSettingsBlocListeners {
  BlocListener<AccountSettingsBloc, AccountSettingsState>
      displayNavigatorOnSuccessUpdate() {
    return BlocListener(
      listener: (context, state) {
        final isValueUpdated = state.isValueUpdated;

        if (!isValueUpdated) {
          return;
        }
        context.read<AccountSettingsCubit>().updateViewState(
              AccountSettingsViewState.navigation,
            );
      },
    );
  }
}
