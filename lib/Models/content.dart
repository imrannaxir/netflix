import 'package:flutter/material.dart';
import 'package:netflix/Models/content_model.dart';

const Content sintelContent = Content(
  name: 'Peaky Blinders',
  imageUrl: 'Assets/images/peaky_blinders.jpg',
  // Imran
//  titleImageUrl: 'Assets/images/sintel_title.png',
  // videoUrl: Assets.sintelVideoUrl,
//   description:
//       'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);
const Content detailContent = Content(
  name: 'Sintel',
  imageUrl: 'Assets/images/sintel.jpg',
  titleImageUrl: 'Assets/images/sintel_title.png',
  // videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

const List<Content> previews = [
  Content(
    name: 'Fifty Shade Of grey',
    imageUrl: 'assets/images/fifty_shades_grey.jpg',
    color: Colors.pink,
    titleImageUrl: 'assets/images/fifty_shades_of_grey_title.png',
  ),
  Content(
    name: 'Titanic',
    imageUrl: 'assets/images/titanic.jpg',
    color: Colors.blueAccent,
    titleImageUrl: 'assets/images/titanic_title.png',
  ),
  Content(
    name: 'Game Of thrones',
    imageUrl: 'assets/images/game_of_thrones.jpg',
    color: Colors.white,
    titleImageUrl: 'assets/images/game_of_thrones_title.png',
  ),
  Content(
    name: 'The Witcher',
    imageUrl: 'assets/images/witcher.jpg',
    color: Colors.red,
    titleImageUrl: 'assets/images/witcher_title.jpg',
  ),
  Content(
    name: 'Avatar',
    imageUrl: 'assets/images/atla.jpg',
    color: Colors.orange,
    titleImageUrl: 'assets/images/atla_title.png',
  ),
  Content(
    name: 'Pathan',
    imageUrl: 'assets/images/pathan.jpg',
    color: Colors.cyan,
    titleImageUrl: 'assets/images/pathan_title.jpg',
  ),
  Content(
    name: 'The Crown',
    imageUrl: 'assets/images/crown.jpg',
    color: Colors.red,
    titleImageUrl: 'assets/images/crown_title.png',
  ),
  Content(
    name: 'Violet Evergarden',
    imageUrl: 'assets/images/violet_evergarden.jpg',
    color: Colors.yellow,
    titleImageUrl: 'assets/images/violet_evergarden_title.png',
  ),
  Content(
    name: 'Thirteen Reasons Why',
    imageUrl: 'assets/images/thirteen_reasons_why.jpg',
    color: Colors.orange,
    titleImageUrl: 'assets/images/thirteen_reasons_why_title.png',
  ),
  Content(
    name: '365',
    imageUrl: 'assets/images/threee_sixty_five.jpg',
    color: Colors.green,
    titleImageUrl: 'assets/images/three_sixty_five_title.png',
  ),
];
