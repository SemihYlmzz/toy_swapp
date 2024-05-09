import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'support_reports_bloc.freezed.dart';
part 'support_reports_event.dart';
part 'support_reports_state.dart';

class SupportReportsBloc extends Bloc<SupportReportsEvent, SupportReportsState> {
  SupportReportsBloc() : super(const SupportReportsState()) {
    on<SupportReportsEvent>(_onSupportReportsEvent);
  }
  
  Future<void> _onSupportReportsEvent(
    SupportReportsEvent event,
    Emitter<SupportReportsState> emit,
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
