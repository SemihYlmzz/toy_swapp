import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_constants/shared_constants.dart';

import '../startup.dart';

class CompanyCopyright extends StatelessWidget {
  const CompanyCopyright({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.copyright),
        SharedGap.gap4,
        Text(
          StartupConstantStrings.companyName,
          style: GoogleFonts.bangers(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
