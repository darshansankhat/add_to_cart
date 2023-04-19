import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Data_scrren extends StatefulWidget {
  const Data_scrren({Key? key}) : super(key: key);

  @override
  State<Data_scrren> createState() => _Data_scrrenState();
}

class _Data_scrrenState extends State<Data_scrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("All Product",style: GoogleFonts.anton(fontSize: 30,color: Colors.blue),),
        ),
      ),
    );
  }
}
