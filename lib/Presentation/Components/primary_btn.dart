import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Declarations/Constants/constants.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({Key? key, required this.btnText, required this.btnFun})
      : super(key: key);
  final String btnText;
  final Function btnFun;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => btnFun(),
      style: getBtnStyle(context),
      child: Text(
        btnText,
        style:  GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white, 
        ),
      ),
    );
  }

  getBtnStyle(context) => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius / 2),
        backgroundColor: primaryColor,
        fixedSize: Size(MediaQuery.of(context).size.width - 40, 50),
      );
}
