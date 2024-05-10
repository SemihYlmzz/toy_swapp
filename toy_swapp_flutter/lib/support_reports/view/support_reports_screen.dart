import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../support_reports.dart';

class SupportReportsScreen extends StatelessWidget {
  const SupportReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supportReportsBlocListeners = SupportReportsBlocListeners();
  
    return BlocProvider(
      create: (context) => SupportReportsBloc(),
      child: MultiBlocListener(
        listeners: [
          supportReportsBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SupportReportsBloc, SupportReportsState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SupportReportsView(),
            );
          },
        ),
      ),
    );
  }
}
