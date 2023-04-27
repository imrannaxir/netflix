import 'package:flutter/material.dart';
import 'package:netflix/Models/content.dart';
import 'package:netflix/Models/my_list.dart';
import 'package:netflix/Models/originals.dart';
import 'Models/trending.dart';
import 'content_header.dart';
import 'content_list.dart';
import 'custom_app_bar.dart';
import 'previews.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: PreferredSize(
        preferredSize: Size(size.width, 50),
        child: CustomAppBar(scrollOffset: _scrollOffset),
      ),
      body: myCustomScrollView(),
      floatingActionButton: myFloatingActionButton(),
    );
  }

  Widget myCustomScrollView() {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const SliverToBoxAdapter(
          child: ContentHeader(featuredContent: sintelContent),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          sliver: SliverToBoxAdapter(
            child: Previews(
              title: 'Previews',
              contentList: previews,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ContentList(
            title: 'My List',
            contentList: myList,
          ),
        ),
        SliverToBoxAdapter(
          child: ContentList(
            title: 'Netflix Originals',
            contentList: originals,
            isOriginals: true,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 20),
          sliver: SliverToBoxAdapter(
            child: ContentList(
              title: 'Trending',
              contentList: trending,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ContentList(
            title: 'Top 10 Movies in Pakistan Today',
            contentList: myList,
          ),
        ),
        SliverToBoxAdapter(
          child: ContentList(
            title: 'TV Action & Adventure',
            contentList: originals,
            isOriginals: true,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 20),
          sliver: SliverToBoxAdapter(
            child: ContentList(
              title: 'New Release',
              contentList: trending,
            ),
          ),
        ),
      ],
    );
  }

  Widget myFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.grey[850],
      child: const Icon(
        Icons.cast,
        size: 34,
      ),
      onPressed: () => print('Cast'),
    );
  }
}
