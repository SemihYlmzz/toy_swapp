// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_constants/shared_constants.dart';
// import 'package:shared_widgets/shared_widgets.dart';
// import 'package:styled_text/styled_text.dart';

// import '../terms_of_use.dart';

// class TermsOfUseView extends StatelessWidget {
//   const TermsOfUseView({
//     required this.openTermsOfService,
//     required this.openDevangsPrivacyPolicy,
//     required this.openToySwappPrivacyPolicy,
//     super.key,
//   });
//   final VoidCallback openTermsOfService;
//   final VoidCallback openDevangsPrivacyPolicy;
//   final VoidCallback openToySwappPrivacyPolicy;

//   @override
//   Widget build(BuildContext context) {
//     return BaseScaffold(
//       safeArea: true,
//       appBar: const TermsOfUseAppBar(),
//       body: BaseColumn(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 250,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 220,
//                   margin: SharedPaddings.all12,
//                   decoration: BoxDecoration(
//                     color: Colors.white12,
//                     borderRadius: SharedBorderRadius.circular16,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: SharedPaddings.all16,
//                         child: StyledText(
//                           textAlign: TextAlign.center,
//                           style: Theme.of(context).textTheme.bodyLarge,
//                           text: context.termsOfUseL10n.termsOfUseText(
//                             TermsOfUseStrings.termsOfUseTag,
//                             TermsOfUseStrings.devangsTag,
//                             TermsOfUseStrings.toySwappTag,
//                           ),
//                           tags: {
//                             TermsOfUseStrings.termsOfUseTag:
//                                 StyledTextActionTag(
//                               (text, attrs) => openTermsOfService(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Theme.of(context).colorScheme.primary,
//                               ),
//                             ),
//                             TermsOfUseStrings.devangsTag: StyledTextActionTag(
//                               (text, attrs) => openDevangsPrivacyPolicy(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Theme.of(context).colorScheme.primary,
//                               ),
//                             ),
//                             TermsOfUseStrings.toySwappTag: StyledTextActionTag(
//                               (text, attrs) => openToySwappPrivacyPolicy(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Theme.of(context).colorScheme.primary,
//                               ),
//                             ),
//                           },
//                         ),
//                       ),
//                       Text(context.termsOfUseL10n.requiredToContinueText),
//                     ],
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       context.read<TermsOfUseBloc>().add(
//                             const TermsOfUseEvent.acceptTerms(),
//                           );
//                     },
//                     child: Text(context.termsOfUseL10n.accept),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
