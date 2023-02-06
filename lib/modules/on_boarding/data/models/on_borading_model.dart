import 'package:evet_task/core/resources/assets_manager.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;
  BoardingModel({
    required this.image,
    required this.body,
    required this.title,
  });

  static List<BoardingModel> listOnBoarding = <BoardingModel>[
    BoardingModel(
      image: ImagesManager.boardng1,
      title: 'Lorum Ipsum',
      body: 'Borem ipsum dolor sit amet consectetur. Borem ipsum dolor sit amet consectetur',
    ),
    BoardingModel(
      image: ImagesManager.boardng2,
      title: 'Lorum Ipsum',
      body: 'Borem ipsum dolor sit amet consectetur. Borem ipsum dolor sit amet consectetur',
    ),
    BoardingModel(
      image: ImagesManager.boardng3,
       title: 'Lorum Ipsum',
      body: 'Borem ipsum dolor sit amet consectetur. Borem ipsum dolor sit amet consectetur',
    ),
  ];
}
