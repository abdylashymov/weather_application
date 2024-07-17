import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_application/theme/app_colors.dart';
import 'package:weather_application/theme/app_text_styles.dart';

class WeatherTab extends StatelessWidget {
  const WeatherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: TabBar(
              labelStyle: AppTextStyles.size16w700,
              unselectedLabelStyle: AppTextStyles.size16w400,
              indicatorColor: AppColors.primaryText,
              tabs: const [
                Tab(
                  text: 'Today',
                ),
                Tab(
                  text: 'Tomorrow',
                ),
                Tab(
                  text: 'Next 7 days >',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 24,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 110,
                  child: Card(
                    color: AppColors.white.withOpacity(0.5),
                    surfaceTintColor: AppColors.white.withOpacity(0.7),
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '13:00',
                              style: AppTextStyles.size14w400,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            SvgPicture.asset(
                              'assets/icons/rainy.svg',
                              height: 40,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '19 °',
                              style: AppTextStyles.size14w700,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
