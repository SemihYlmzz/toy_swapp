import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../terms_acceptance.dart';

class TermsAcceptanceView extends StatelessWidget {
  const TermsAcceptanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final needAcceptance = context
        .select((TermsAcceptanceBloc bloc) => bloc.state.needTermAcceptance);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: Image.asset('assets/flame_logo.png', height: 128),
          ),
          Positioned(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            child: needAcceptance != null && needAcceptance
                ? const TermsOfUseAcceptancePopUp()
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
