import 'package:flutter/material.dart';
import '/styles/constants.dart';

class ButtonGhostMD extends StatefulWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isEnabled;

  const ButtonGhostMD({
    super.key,
    required this.label,
    this.onTap,
    this.isEnabled = true,
  });

  @override
  CustomStatefulButtonState createState() => CustomStatefulButtonState();
}

class CustomStatefulButtonState extends State<ButtonGhostMD> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = widget.isEnabled
        ? (_isHovering ? AppColors.offBlack : AppColors.black)
        : AppColors.black;

    return Material(
      child: InkWell(
        onTap: widget.isEnabled ? widget.onTap : null,
        onHover: (hovering) {
          setState(() => _isHovering = hovering);
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 64, minHeight: 32),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: backgroundColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.label,
                textAlign: TextAlign.center,
                style: widget.isEnabled
                    ? AppTextStyles.labelMD
                    : AppTextStyles.labelMD.copyWith(color: AppColors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
