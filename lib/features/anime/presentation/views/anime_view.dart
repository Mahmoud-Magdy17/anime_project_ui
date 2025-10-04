import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_project/core/utils/app_colors.dart';
import '../../domain/entities/anime_all_details.dart';
import 'widgets/anime_header_image.dart';
import 'widgets/anime_view_body.dart';
import 'widgets/hideable_bottom_nav_bar.dart';

class AnimeView extends StatefulWidget {
  const AnimeView({super.key, required this.animeAllDetails});
  final AnimeAllDetails animeAllDetails;

  @override
  State<AnimeView> createState() => _AnimeViewState();
}

class _AnimeViewState extends State<AnimeView> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final direction = _scrollController.position.userScrollDirection;

    if (direction == ScrollDirection.reverse && _isVisible) {
      setState(() => _isVisible = false);
    } else if (direction == ScrollDirection.forward && !_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = (screenHeight / 5) * 3;

    return Scaffold(
      
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.secondLevelColor,
      appBar: _buildAppBar(),
      bottomNavigationBar: HideableBottomNavBar(isVisible: _isVisible),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(top: imageHeight - 40),
              child: AnimeViewBody(animeAllDetails: widget.animeAllDetails),
            ),
            AnimeHeader(
              imagePath: widget.animeAllDetails.animeImagePath,
              title: widget.animeAllDetails.animeName,
              imageHeight: imageHeight,
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      foregroundColor: AppColors.whiteColor,
      leading: const Icon(Icons.arrow_back_ios, size: 32),
    );
  }
}

