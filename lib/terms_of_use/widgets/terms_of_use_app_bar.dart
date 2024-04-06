import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../terms_of_use.dart';

class TermsOfUseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TermsOfUseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final termsVersion = context.select(
      (TermsOfUseBloc bloc) => bloc.state.appMetadata?.termsVersions,
    );
    return AppBar(
      title: Text(
        '${context.termsOfUseLocalization.termsOfUse}'
        ' ${termsVersion?.termsVersionNumber}',
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
