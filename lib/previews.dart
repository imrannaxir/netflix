import 'package:flutter/material.dart';

import 'Models/content_model.dart';
import 'route_names.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  const Previews({
    required this.title,
    required this.contentList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //  SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RouteNames.detailScreen,
            );
          },
          child: Container(
            height: 165,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 8,
              ),
              itemCount: contentList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final Content content = contentList[index];
                return GestureDetector(
                  // onTap: () {
                  //   Navigator.pushNamed(
                  //     context,
                  //     RouteNames.detailScreen,
                  //   );
                  // },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              content.imageUrl,
                            ),
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: content.color!,
                            width: 3,
                          ),
                          // border: Border.all(
                          //   color: content.color,
                          //   width: 4,
                          // ),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.black45,
                              Colors.transparent,
                            ],
                            stops: [0, 0.25, 1],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topLeft,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: content.color!,
                            width: 3,
                          ),
                          // border: Border.all(
                          //   color: content.color,
                          //   width: 4,
                          // ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: SizedBox(
                          height: 30,
                          child: Image.asset(
                            content.titleImageUrl!,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
