import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/bloc/base/base_bloc.dart';
import 'package:quran_app/core/extensions/theme_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Static current page for global access
int currentPage = 0;

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({super.key});

  void _onNavItemTapped(int index, BuildContext context) {
    HapticFeedback.mediumImpact();
    currentPage = index;
    context.read<BaseBloc>().add(SetStateBaseBlocEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc, BaseState>(
      builder: (context, state) {
        final selectedIndex = currentPage;
        
        return Padding(
          padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 10.h),
          child: Container(
            height: 65.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: context.theme.cardColor.withOpacity(0.85),
              borderRadius: BorderRadius.circular(30.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
              border: Border.all(
                color: context.theme.dividerColor.withOpacity(0.1),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  icon: CupertinoIcons.house_fill,
                  outlineIcon: CupertinoIcons.house,
                  label: 'الرئيسية',
                  index: 0,
                  selectedIndex: selectedIndex,
                  context: context,
                ),
                _buildNavItem(
                  icon: CupertinoIcons.square_grid_2x2_fill,
                  outlineIcon: CupertinoIcons.square_grid_2x2,
                  label: 'الأقسام',
                  index: 1,
                  selectedIndex: selectedIndex,
                  context: context,
                ),
                _buildNavItem(
                  icon: CupertinoIcons.gear_alt_fill,
                  outlineIcon: CupertinoIcons.gear_alt,
                  label: 'الإعدادات',
                  index: 2,
                  selectedIndex: selectedIndex,
                  context: context,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required IconData outlineIcon,
    required String label,
    required int index,
    required int selectedIndex,
    required BuildContext context,
  }) {
    final isSelected = selectedIndex == index;

    return Expanded(
      child: BottomNavItem(
        icon: icon,
        outlineIcon: outlineIcon,
        label: label,
        selected: isSelected,
        onTap: () => _onNavItemTapped(index, context),
      ),
    );
  }
}

class BottomNavItem extends StatefulWidget {
  const BottomNavItem({
    required this.icon,
    required this.outlineIcon,
    required this.label,
    super.key,
    this.selected = false,
    this.onTap,
  });

  final IconData icon;
  final IconData outlineIcon;
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.15).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    if (widget.selected) _controller.value = 1.0;
  }

  @override
  void didUpdateWidget(BottomNavItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selected != widget.selected) {
      if (widget.selected) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: Icon(
              widget.selected ? widget.icon : widget.outlineIcon,
              size: 24.sp,
              color: widget.selected ? context.primaryColor : context.gray1.withOpacity(0.6),
            ),
          ),
          if (widget.selected)
            SlideTransition(
              position: _slideAnimation,
              child: Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: context.primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 10.sp,
                    fontFamily: 'ios-1',
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
