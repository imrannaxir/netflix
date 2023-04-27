import 'package:flutter/material.dart';
import 'package:netflix/Models/content.dart';
import 'package:netflix/vertical_icon_button.dart';
import 'detail_row.dart';

class DetailScreen extends StatefulWidget {
  static const String id = 'detail_screen';
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: PreferredSize(
      //   preferredSize: Size(size.width, 50),
      //   child: CustomAppBar(scrollOffset: _scrollOffset),
      // ),
      body: myCustomScrollView(),
    );
  }

  Widget myCustomScrollView() {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const SliverToBoxAdapter(
          child: DetailHeader(featuredContent: detailContent),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.black,
                ),
                label: const Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.download,
                  size: 30,
                  color: Colors.black,
                ),
                label: const Text(
                  'Download',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                  icon: Icons.add,
                  title: 'My List',
                  onTap: () => print('My List'),
                ),
                VerticalIconButton(
                  icon: Icons.thumb_up,
                  title: 'Rate',
                  onTap: () => print('My List'),
                ),
                VerticalIconButton(
                  icon: Icons.share,
                  title: 'Share',
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
