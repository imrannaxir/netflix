import 'package:flutter/material.dart';
import 'Models/content_model.dart';
import 'route_names.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  bool isOriginals;
  ContentList(
      {required this.title,
      required this.contentList,
      this.isOriginals = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                //    fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                RouteNames.detailScreen,
              );
            },
            child: Container(
              height: isOriginals ? 500.0 : 220.0,
              child: ListView.builder(
                itemCount: contentList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Content content = contentList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      height: isOriginals ? 400.0 : 200.0,
                      width: isOriginals ? 200.0 : 130.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            content.imageUrl,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
