import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';

/// 关于我们页面中的功能点项
class AboutFeatureItem extends StatelessWidget {
  const AboutFeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String desc;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PremiumCard(
      padding: EdgeInsets.all(12.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, size: 24.sp, color: color),
          ),
          SizedBox(height: 12.h),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            desc,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.hintColor,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
