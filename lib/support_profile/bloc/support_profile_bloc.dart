import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'support_profile_bloc.freezed.dart';
part 'support_profile_event.dart';
part 'support_profile_state.dart';

class SupportProfileBloc extends Bloc<SupportProfileEvent, SupportProfileState> {
  SupportProfileBloc() : super(const SupportProfileState()) {
    on<SupportProfileEvent>(_onSupportProfileEvent);
  }
  
  Future<void> _onSupportProfileEvent(
    SupportProfileEvent event,
    Emitter<SupportProfileState> emit,
    ) async {
    emit(state.copyWith(isLoading: true));
    
    await event.map(
      fetch: (e) async {
        print('Fetching data...');
      },
    );
    
    emit(state.copyWith(isLoading: false, failure: null));
  }
}
