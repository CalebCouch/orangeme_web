import 'package:flutter/material.dart';
import '/styles/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatefulWidget {
  final String icon;
  final String title;
  final String subtext;

  const InfoCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtext});

  @override
  State<InfoCard> createState() => _InfoCard();
}

class _InfoCard extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 350),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.background,
            border: Border.all(color: AppColors.textSecondary)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
              width: 48,
              child: SvgPicture.asset(
                widget.icon,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: AppTextStyles.heading2,
            ),
            const SizedBox(height: 12),
            Text(
              widget.subtext,
              style: AppTextStyles.textXL.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ));
  }
}
