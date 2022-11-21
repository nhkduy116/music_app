import 'dart:ui';

class AlbMusic {
  final String title;
  final String img;
  final String singer;
  final Color colorStart;
  final Color colorEnd;
  final String url;
  const AlbMusic(
      {required this.title,
      required this.img,
      required this.singer,
      required this.colorStart,
      required this.colorEnd,
      required this.url});
}

class ComponentRadio {
  final String img;
  final String title;
  final String content;

  const ComponentRadio(
      {required this.img,
      required this.title,
      required this.content});
}
