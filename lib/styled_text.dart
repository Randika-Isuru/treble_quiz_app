import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.text,
      {super.key,
      this.textColor = Colors.black,
      this.textAlign = TextAlign.center});
  final String text;
  final Color textColor;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.readexPro(
          color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class LargeText extends StatelessWidget {
  const LargeText(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.textAlign = TextAlign.center});
  final String text;
  final Color textColor;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.macondo(color: textColor, fontSize: 20),
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText(this.text,
      {super.key,
      this.textColor = Colors.white,
      this.textAlign = TextAlign.center});
  final String text;
  final Color textColor;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.almarai(color: textColor, fontSize: 16),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText(this.text,
      {super.key,
      this.textColor = Colors.black,
      this.textAlign = TextAlign.center});
  final String text;
  final Color textColor;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.almarai(color: textColor, fontSize: 12),
    );
  }
}
