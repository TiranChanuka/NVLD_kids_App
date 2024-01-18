import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';
 class DoodleDashHome extends StatelessWidget {
   const DoodleDashHome({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(
           color: primaryColor,
         ),
         title: Text(
           ' Drag-and-drop tasks',
           style: GoogleFonts.sourceSans3(
             fontSize: 24,
             fontWeight: FontWeight.w700,
             color: primaryColor,
           ),
         ),
       ),
     );
   }
 }
