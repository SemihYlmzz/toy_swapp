import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'terms_of_use_bloc.freezed.dart';
part 'terms_of_use_event.dart';
part 'terms_of_use_state.dart';

class TermsOfUseBloc extends Bloc<TermsOfUseEvent, TermsOfUseState> {
  TermsOfUseBloc() : super(const TermsOfUseState()) {
    on<TermsOfUseEvent>(_onTermsOfUseEvent);
  }
  
  Future<void> _onTermsOfUseEvent(
    TermsOfUseEvent event,
    Emitter<TermsOfUseState> emit,
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
