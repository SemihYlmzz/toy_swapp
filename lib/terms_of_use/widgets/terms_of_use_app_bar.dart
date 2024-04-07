import 'package:flutter/material.dart';
import '../terms_of_use.dart';

class TermsOfUseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TermsOfUseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.termsOfUseL10n.termsOfUse),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
