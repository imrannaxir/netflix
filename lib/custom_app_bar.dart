// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({
    super.key,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset('assets/images/netflix_logo0.png'),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarutton(
                    title: 'TV Shows',
                    onTap: () {
                      print('TV Shows');
                    },
                  ),
                  _AppBarutton(
                    title: 'Movies',
                    onTap: () {
                      print('Movies');
                    },
                  ),
                  _AppBarutton(
                    title: 'My List',
                    onTap: () {
                      print('My List');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarutton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const _AppBarutton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
