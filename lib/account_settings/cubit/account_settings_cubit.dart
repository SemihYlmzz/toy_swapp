import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

part 'account_settings_cubit_state.dart';
part 'account_settings_cubit.freezed.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsCubitState> {
  AccountSettingsCubit() : super(const AccountSettingsCubitState());

  void updateViewState(AccountSettingsViewState viewState) {
    emit(state.copyWith(currentViewState: viewState));
  }
}
