import 'package:flutter/material.dart';
import '../../../../constant.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_navigatio_bar.dart';
import 'widgets/line_widget.dart';
import 'widgets/list_view_image.dart';
import 'widgets/list_view_text.dart';
import 'widgets/recommendation_movies.dart';
import 'widgets/search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kPrimaryColor,
      ),
      child: const Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 15),
          SearchBarWidget(),
          SizedBox(height: 15),
          ListViewOfText(),
          LineWidget(paddingLeft: 16, paddingRight: 330),
          SizedBox(height: 15),
          CustomListViewOfImages(),
          SizedBox(height: 15),
          Stack(
            clipBehavior: Clip.none,
            children: [
              RecommendationMovies(),
              Positioned(
                top: 70,
                left: 0,
                child: CustomNavigationBar(
                  colorIcon1: kBlueColor,
                  colorText1: kBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
