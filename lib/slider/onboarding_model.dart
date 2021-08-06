import 'package:tatneft_quest/resources/app_image.dart';

class UnbordingContent {
  String image;
  String title;

  UnbordingContent({
    this.image,
    this.title,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Проходи регистрацию и начинай',
    image: LoadingImage.icon1,
  ),
  UnbordingContent(
    title: 'Выбирай квест или экскурсию',
    image: LoadingImage.icon1,
  ),
  UnbordingContent(
    title: 'Следуй маршруту',
    image: LoadingImage.icon2,
  ),
  UnbordingContent(
    title: 'Сканируй QR-code',
    image: LoadingImage.icon3,
  ),
  UnbordingContent(
    title: 'Читай историю',
    image: LoadingImage.icon4,
  ),
  UnbordingContent(
    title: 'Выполняй задания',
    image: LoadingImage.icon5,
  ),
  UnbordingContent(
    title: 'Меняй баллы на подарки',
    image: LoadingImage.icon6,
  ),
];
