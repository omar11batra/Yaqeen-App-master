import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/util/ThemeColors.dart';
import 'package:quran_app/gen/fonts.gen.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: AppColors.background,
  canvasColor: AppColors.surface,
  cardColor: AppColors.surface,
  dividerColor: AppColors.divider,
  shadowColor: AppColors.shadow,
  primaryColor: AppColors.gold,
  primaryColorLight: AppColors.goldLight,
  primaryColorDark: AppColors.goldDark,
  primarySwatch: MaterialColor(AppColors.gold.value, {
    50: AppColors.gold.withOpacity(.05),
    100: AppColors.gold.withOpacity(.1),
    200: AppColors.gold.withOpacity(.2),
    300: AppColors.gold.withOpacity(.3),
    400: AppColors.gold.withOpacity(.4),
    500: AppColors.gold,
    600: AppColors.gold.withOpacity(.6),
    700: AppColors.gold.withOpacity(.7),
    800: AppColors.gold.withOpacity(.8),
    900: AppColors.gold.withOpacity(.9),
  }),
  disabledColor: AppColors.disabled,
  focusColor: AppColors.focus,
  highlightColor: AppColors.highlight,
  hintColor: AppColors.secondaryText,
  hoverColor: AppColors.hover,
  splashColor: AppColors.splash,
  unselectedWidgetColor: AppColors.disabled,
  fontFamily: FontFamily.ios1,

  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.gold,
    onPrimary: Colors.white,
    secondary: AppColors.emerald,
    onSecondary: Colors.white,
    error: AppColors.error,
    onError: Colors.white,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    outline: AppColors.outline,
    tertiary: AppColors.success,
  ),

  // APP BAR
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.background.withOpacity(0.8),
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: AppColors.onBackground, size: 22),
    titleTextStyle: TextStyle(
      color: AppColors.onBackground,
      fontSize: 20.sp,
      fontWeight: FontWeight.w800,
      fontFamily: FontFamily.ios1,
      letterSpacing: 0.5,
    ),
  ),

  // ICONS
  iconTheme: const IconThemeData(
    color: AppColors.onBackground,
  ),
  primaryIconTheme: const IconThemeData(color: AppColors.onBackground),

  // TEXT
  textTheme: TextTheme(
    // Display Styles (Largest)
    displayLarge: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 57.sp,
      height: 1.12,
      letterSpacing: -0.25,
      color: AppColors.onBackground,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 45.sp,
      height: 1.16,
      color: AppColors.onBackground,
    ),
    displaySmall: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 36.sp,
      height: 1.22,
      color: AppColors.onBackground,
    ),

    // Headline Styles
    headlineLarge: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 32.sp,
      height: 1.25,
      color: AppColors.onBackground,
    ),
    headlineMedium: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 28.sp,
      height: 1.29,
      color: AppColors.onBackground,
    ),
    headlineSmall: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 24.sp,
      height: 1.33,
      color: AppColors.onBackground,
    ),

    // Title Styles
    titleLarge: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 22.sp,
      height: 1.27,
      color: AppColors.onBackground,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w700,
      fontSize: 16.sp,
      height: 1.50,
      letterSpacing: 0.15,
      color: AppColors.onBackground,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      height: 1.43,
      letterSpacing: 0.1,
      color: AppColors.onBackground,
    ),

    // Label Styles
    labelLarge: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      height: 1.43,
      letterSpacing: 0.1,
      color: AppColors.onBackground,
    ),
    labelMedium: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
      height: 1.33,
      letterSpacing: 0.5,
      color: AppColors.onBackground,
    ),
    labelSmall: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 11.sp,
      height: 1.45,
      letterSpacing: 0.5,
      color: AppColors.onBackground,
    ),

    // Body Styles
    bodyLarge: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      height: 1.50,
      letterSpacing: 0.15,
      color: AppColors.onBackground,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      height: 1.43,
      letterSpacing: 0.25,
      color: AppColors.onBackground,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.ios1,
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
      height: 1.33,
      letterSpacing: 0.4,
      color: AppColors.onBackground,
    ),
  ),

  // INPUTS & FORMS
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surface,
    hintStyle: TextStyle(color: AppColors.secondaryText, fontSize: 14.sp),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.outline),
      borderRadius: BorderRadius.circular(16.r),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.outline),
      borderRadius: BorderRadius.circular(16.r),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
      borderRadius: BorderRadius.circular(16.r),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.error),
      borderRadius: BorderRadius.circular(16.r),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.error, width: 2),
      borderRadius: BorderRadius.circular(16.r),
    ),
  ),

  // BUTTONS
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.gold,
      foregroundColor: Colors.white,
      elevation: 2,
      shadowColor: AppColors.gold.withOpacity(0.3),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
      disabledBackgroundColor: AppColors.disabled,
      disabledForegroundColor: AppColors.secondaryText,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.gold,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
      side: const BorderSide(color: AppColors.gold, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.gold,
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
    ),
  ),

  // BOTTOM NAVIGATION
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.surface,
    elevation: 8,
    selectedItemColor: AppColors.gold,
    unselectedItemColor: AppColors.secondaryText,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 12.sp,
      fontFamily: FontFamily.ios1,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 11.sp,
      fontFamily: FontFamily.ios1,
    ),
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),

  // CARD
  cardTheme: CardThemeData(
    color: AppColors.surface,
    shadowColor: AppColors.shadow.withOpacity(0.05),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    elevation: 4,
    margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
  ),

  // BOTTOM SHEET
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: AppColors.surface,
    modalBackgroundColor: AppColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
    ),
    elevation: 12,
  ),

  // TOOLTIP
  tooltipTheme: TooltipThemeData(
    decoration: BoxDecoration(
      color: AppColors.gold,
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle:
        const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    waitDuration: const Duration(milliseconds: 350),
    showDuration: const Duration(seconds: 2),
    preferBelow: true,
    verticalOffset: 20,
  ),

  // BADGE
  badgeTheme: const BadgeThemeData(
    backgroundColor: AppColors.gold,
    textColor: Colors.white,
    largeSize: 18,
    smallSize: 10,
    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
  ),

  // BANNER
  bannerTheme: const MaterialBannerThemeData(
    backgroundColor: AppColors.warning,
    contentTextStyle: TextStyle(color: AppColors.onBackground),
    padding: EdgeInsets.all(12),
  ),

  // MENU
  menuTheme: MenuThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.surface),
      shadowColor: WidgetStateProperty.all(AppColors.shadow),
      surfaceTintColor:
          WidgetStateProperty.all(AppColors.gold.withOpacity(0.1)),
    ),
  ),

  // DATA TABLE
  dataTableTheme: DataTableThemeData(
    headingRowColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.12)),
    dataRowColor: WidgetStateProperty.all(AppColors.surface),
    dividerThickness: 0.6,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.outline),
    ),
  ),

  // EXPANSION TILE
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: AppColors.surface,
    collapsedBackgroundColor: AppColors.surface,
    textColor: AppColors.onBackground,
    iconColor: AppColors.gold,
    collapsedIconColor: AppColors.secondaryText,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),

  // POPUP MENU
  popupMenuTheme: PopupMenuThemeData(
    color: AppColors.surface,
    textStyle: const TextStyle(color: AppColors.onBackground),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 10,
  ),

  // SCROLLBAR
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.65)),
    trackColor: WidgetStateProperty.all(AppColors.surface),
    radius: const Radius.circular(10),
    thickness: WidgetStateProperty.all(6),
  ),

  // SEGMENTED BUTTON
  segmentedButtonTheme: SegmentedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.surface),
      foregroundColor: WidgetStateProperty.all(AppColors.onBackground),
      overlayColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.11)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  ),

  // DROPDOWN MENU
  dropdownMenuTheme: DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.surface),
      elevation: WidgetStateProperty.all(8),
      shadowColor: WidgetStateProperty.all(AppColors.shadow),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    textStyle: const TextStyle(color: AppColors.onBackground),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.surface,
      hintStyle: TextStyle(color: AppColors.secondaryText),
    ),
  ),

  // SEARCH BAR (Material 3)
  searchBarTheme: SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(AppColors.surface),
    hintStyle: WidgetStateProperty.all(
      const TextStyle(color: AppColors.secondaryText),
    ),
    textStyle:
        WidgetStateProperty.all(const TextStyle(color: AppColors.onBackground)),
    elevation: WidgetStateProperty.all(1),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  ),

  // DRAWER
  navigationDrawerTheme: NavigationDrawerThemeData(
    backgroundColor: AppColors.surface,
    elevation: 2,
    indicatorColor: AppColors.gold.withOpacity(0.13),
    iconTheme: WidgetStateProperty.all(
      const IconThemeData(color: AppColors.secondaryText),
    ),
    labelTextStyle:
        WidgetStateProperty.all(const TextStyle(color: AppColors.onBackground)),
  ),

  // NAVIGATION RAIL
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: AppColors.surface,
    selectedIconTheme: const IconThemeData(color: AppColors.gold),
    unselectedIconTheme: const IconThemeData(color: AppColors.secondaryText),
    selectedLabelTextStyle:
        const TextStyle(color: AppColors.gold, fontWeight: FontWeight.bold),
    unselectedLabelTextStyle: const TextStyle(color: AppColors.secondaryText),
    indicatorColor: AppColors.gold.withOpacity(0.14),
  ),

  // NAVIGATION BAR
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: AppColors.surface,
    elevation: 1,
    labelTextStyle: WidgetStateProperty.all(
      const TextStyle(color: AppColors.gold, fontWeight: FontWeight.bold),
    ),
    iconTheme:
        WidgetStateProperty.all(const IconThemeData(color: AppColors.gold)),
    indicatorColor: AppColors.gold.withOpacity(0.18),
  ),

  // TIME PICKER
  timePickerTheme: TimePickerThemeData(
    backgroundColor: AppColors.surface,
    dialHandColor: AppColors.gold,
    dialBackgroundColor: AppColors.gold.withOpacity(0.11),
    hourMinuteColor: AppColors.gold.withOpacity(0.09),
    hourMinuteTextColor: AppColors.onBackground,
    entryModeIconColor: AppColors.gold,
    helpTextStyle: const TextStyle(
      color: AppColors.onBackground,
      fontWeight: FontWeight.bold,
    ),
  ),

  // DATE PICKER
  datePickerTheme: DatePickerThemeData(
    backgroundColor: AppColors.surface,
    headerBackgroundColor: AppColors.gold.withOpacity(0.13),
    headerForegroundColor: AppColors.gold,
    dayForegroundColor: WidgetStateProperty.all(AppColors.onBackground),
    dayOverlayColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.11)),
    yearForegroundColor: WidgetStateProperty.all(AppColors.secondaryText),
  ),
  // ACTION ICONS (AppBar, menus)
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (context) =>
        const Icon(Icons.arrow_back, color: AppColors.onBackground),
    closeButtonIconBuilder: (context) =>
        const Icon(Icons.close, color: AppColors.onBackground),
    drawerButtonIconBuilder: (context) =>
        const Icon(Icons.menu, color: AppColors.onBackground),
    endDrawerButtonIconBuilder: (context) =>
        const Icon(Icons.menu_open, color: AppColors.onBackground),
    // يمكنك تخصيص style إذا احتجت
  ),

  // ADAPTATIONS (نادراً ما تستخدمها)
  // adaptations: [],

  // ELEVATION OVERLAY (للدعم الحقيقي للدارك مود فقط غالبًا)
  applyElevationOverlayColor: false,

  // BOTTOM APP BAR
  bottomAppBarTheme: const BottomAppBarTheme(
    color: AppColors.surface,
    elevation: 6,
    shape: CircularNotchedRectangle(),
    shadowColor: AppColors.shadow,
  ),

  // CHIP THEME
  chipTheme: ChipThemeData(
    backgroundColor: AppColors.surface,
    selectedColor: AppColors.gold.withOpacity(0.19),
    disabledColor: AppColors.disabled,
    labelStyle: const TextStyle(color: AppColors.onBackground),
    secondaryLabelStyle: const TextStyle(color: AppColors.gold),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    secondarySelectedColor: AppColors.gold,
    brightness: Brightness.light,
    deleteIconColor: AppColors.error,
  ),

  // COLOR SCHEME SEED (إذا تريد ColorScheme ديناميكي)
  // colorSchemeSeed: AppColors.gold,

  // DIVIDER THEME
  dividerTheme: const DividerThemeData(
    color: AppColors.divider,
    space: 1,
    thickness: 0.7,
    indent: 0,
    endIndent: 0,
  ),

  // EXTENSIONS (لإضافة ThemeExtension مخصص لك، مثال):
  // extensions: <ThemeExtension<dynamic>>[MyCustomExtension(...)],

  // FILLED BUTTON THEME (Material 3)
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.gold,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),

  // FLOATING ACTION BUTTON THEME
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.gold,
    foregroundColor: Colors.white,
    elevation: 7,
    shape: CircleBorder(),
  ),

  // FONT FAMILY FALLBACK
  fontFamilyFallback: const [FontFamily.ios1, FontFamily.ios2],

  // ICON BUTTON THEME (Material3)
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(AppColors.gold),
      backgroundColor: WidgetStateProperty.all(AppColors.surface),
      overlayColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      shadowColor: WidgetStateProperty.all(AppColors.gold.withOpacity(0.12)),
      surfaceTintColor:
          WidgetStateProperty.all(AppColors.onSurface.withOpacity(0.12)),
      iconColor: WidgetStateProperty.all(AppColors.onSurface),
    ),
  ),

  // MATERIAL TAP TARGET SIZE
  materialTapTargetSize: MaterialTapTargetSize.padded,

  // MENU BAR/BUTTON (Material3)
  menuBarTheme: MenuBarThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.surface),
      elevation: WidgetStateProperty.all(8),
      shadowColor: WidgetStateProperty.all(AppColors.shadow),
    ),
  ),
  menuButtonTheme: MenuButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(AppColors.gold),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  ),

  // PAGE TRANSITIONS
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
    },
  ),

  // PLATFORM (لتحديد المنصة يدوياً لو لديك منطق خاص)
  // platform: TargetPlatform.android,

  // SEARCH VIEW THEME (Material3)
  searchViewTheme: SearchViewThemeData(
    backgroundColor: AppColors.surface,
    headerHintStyle: const TextStyle(
      color: AppColors.secondaryText,
      fontWeight: FontWeight.w400,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    barPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    constraints: const BoxConstraints(
      minWidth: 200,
      maxWidth: 600,
      minHeight: 100,
      maxHeight: 400,
    ),
    dividerColor: AppColors.divider,
    elevation: 1,
    headerHeight: 50,
    headerTextStyle: const TextStyle(
      color: AppColors.onBackground,
      fontWeight: FontWeight.w500,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shrinkWrap: true,
    side: const BorderSide(color: AppColors.divider),
    surfaceTintColor: AppColors.surface,
  ),

  // SECONDARY HEADER COLOR (نادراً تستخدمه)
  secondaryHeaderColor: AppColors.gold.withOpacity(0.12),

  // SPLASH FACTORY (تأثير الضغط)
  splashFactory: InkRipple.splashFactory,

  // TEXT SELECTION THEME (لون التحديد والمؤشر)
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColors.gold,
    selectionColor: AppColors.gold.withOpacity(0.16),
    selectionHandleColor: AppColors.gold,
  ),

  // TOGGLE BUTTONS
  toggleButtonsTheme: ToggleButtonsThemeData(
    color: AppColors.secondaryText,
    selectedColor: Colors.white,
    fillColor: AppColors.gold,
    borderColor: AppColors.outline,
    selectedBorderColor: AppColors.gold,
    borderRadius: BorderRadius.circular(8),
    textStyle: const TextStyle(fontWeight: FontWeight.w500),
  ),

  // TYPOGRAPHY (تخصيص كامل لأنماط النصوص حسب المنصة)
  typography: Typography.material2021(),

  // USE SYSTEM COLORS (نادراً تحتاجها)
  useSystemColors: false,
);
