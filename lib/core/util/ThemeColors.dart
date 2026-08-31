import 'package:flutter/material.dart';

class AppColors {
  // BASE COLORS (used for both light and dark themes)
  // Main brand color - Refined Gold (Shimmering)
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldLight = Color(0xFFFFEFA1);
  static const Color goldDark = Color(0xFF996515);

  // Accent color - Emerald Green (Spiritual & Elegant)
  static const Color emerald = Color(0xFF064E3B);
  static const Color emeraldLight = Color(0xFF10B981);

  // Accent color - Royal Blue
  static const Color blue = Color(0xFF1E3A8A);

  // Error color
  static const Color error = Color(0xFFB91C1C);

  // Success color
  static const Color success = Color(0xFF059669);

  // ----------------- LIGHT MODE COLORS -----------------
  // Background: Soft Cream / Off-White
  static const Color background = Color(0xFFFDFBF7);
  
  // Surface: Pure White or Ultra-Soft Cream
  static const Color surface = Color(0xFFFFFFFF);

  // Text/Icon colors
  static const Color onBackground = Color(0xFF1F2937);
  static const Color onSurface = Color(0xFF1F2937);
  static const Color secondaryText = Color(0xFF6B7280);

  // UI Elements
  static const Color outline = Color(0xFFE5E7EB);
  static const Color disabled = Color(0xFFD1D5DB);
  static const Color shadow = Color(0x0F000000);
  static const Color divider = Color(0xFFF3F4F6);

  // Interactive
  static const Color focus = Color(0xFF93C5FD);
  static const Color highlight = Color(0x1AD4AF37);
  static const Color hover = Color(0x0AD4AF37);
  static const Color splash = Color(0x1AD4AF37);

  // Status
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);

  // ----------------- DARK MODE COLORS -----------------
  // Background: Deep Midnight / Emerald-tinted Black
  static const Color darkBackground = Color(0xFF020617);
  
  // Surface: Deep Charcoal with subtle tint
  static const Color darkSurface = Color(0xFF0F172A);

  // Text/Icon colors (dark)
  static const Color darkOnBackground = Color(0xFFF9FAFB);
  static const Color darkOnSurface = Color(0xFFF9FAFB);
  static const Color darkSecondaryText = Color(0xFF9CA3AF);

  // UI Elements (dark)
  static const Color darkOutline = Color(0xFF1E293B);
  static const Color darkDisabled = Color(0xFF334155);
  static const Color darkShadow = Color(0x66000000);
  static const Color darkDivider = Color(0xFF1E293B);

  // Interactive (dark)
  static const Color darkFocus = Color(0xFF3B82F6);
  static const Color darkHighlight = Color(0x1AD4AF37);
  static const Color darkHover = Color(0x0AD4AF37);
  static const Color darkSplash = Color(0x1AD4AF37);

  // Status (dark)
  static const Color darkWarning = Color(0xFFF59E0B);
  static const Color darkInfo = Color(0xFF60A5FA);

  // Icon Backgrounds
  static const Color iconBgLight = Color(0xFFF3F4F6);
  static const Color iconBgDark = Color(0x1A6B7280);
  static const Color iconBgActive = gold;
}
