// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../app/app.dart';
// import '../../sign_in/sign_in.dart';
// import '../terms_of_use.dart';

// extension TermsAcceptedNavigator on TermsOfUseBlocListeners {
//   BlocListener<AppBloc, AppState> termsAcceptedNavigator(
//     BuildContext screenContext, {
//     required DateTime lastUpdatedTermsDate,
//   }) {
//     return BlocListener(
//       listener: (context, state) {
//         final termsOfUseAcceptedDate =
//             state.appPreferences.termsOfUseAcceptance;

//         if (termsOfUseAcceptedDate == null) {
//           return;
//         }
//         if (termsOfUseAcceptedDate.isBefore(lastUpdatedTermsDate)) {
//           return;
//         }
//         SignInRouter.instance.go(screenContext);
//       },
//     );
//   }
// }
