import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF11249F);
const Color secondaryColor = Color(0xFF8CE3A1);
const Color tertiaryColor = Color(0xFFF79F28);
const Color quaternaryColor = Color(0xFF4CAF50);
const Color whitecolor = Color(0xFFF2F2F2);
const Color cardColor= Color(0xFFFFFFFF);
const Color textColor= Color(0xFF2B2B2B);

// Gradients
const LinearGradient primaryGradient = LinearGradient(
  colors: [primaryColor, secondaryColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const LinearGradient secondaryGradient = LinearGradient(
  colors: [secondaryColor, primaryColor],  // Reversed order for variation
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);