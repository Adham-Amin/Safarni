import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safarni/core/functions/extentions.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:safarni/core/utils/app_styles.dart';
import 'package:safarni/features/intro/onbording/data/model/onbording_model.dart';
import 'package:safarni/features/intro/onbording/presentation/widgets/button_next.dart';
import 'package:safarni/features/intro/onbording/presentation/widgets/button_skip.dart';
import 'package:safarni/features/intro/onbording/presentation/widgets/onbording_item.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          12.hs,
          Row(
            children: [
              Text(
                'Safarni',
                style: AppStyles.textBold24.copyWith(color: AppColors.primary),
              ),
              Spacer(),
              ButtonSkip(
                currentPage: currentPage,
                pageController: pageController,
              ),
            ],
          ),
          16.hs,
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: OnbordingModel.onbordingList.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) => OnbordingItem(
                item: OnbordingModel.onbordingList[index],
                pageController: pageController,
              ),
            ),
          ),
          ButtonNext(currentPage: currentPage),
          16.hs,
        ],
      ),
    );
  }
}
