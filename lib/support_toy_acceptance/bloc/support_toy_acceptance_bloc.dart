import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'support_toy_acceptance_bloc.freezed.dart';
part 'support_toy_acceptance_event.dart';
part 'support_toy_acceptance_state.dart';

class SupportToyAcceptanceBloc extends Bloc<SupportToyAcceptanceEvent, SupportToyAcceptanceState> {
  SupportToyAcceptanceBloc() : super(const SupportToyAcceptanceState()) {
    on<SupportToyAcceptanceEvent>(_onSupportToyAcceptanceEvent);
  }
  
  Future<void> _onSupportToyAcceptanceEvent(
    SupportToyAcceptanceEvent event,
    Emitter<SupportToyAcceptanceState> emit,
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
