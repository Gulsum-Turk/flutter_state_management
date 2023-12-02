

class OnboardModel {
  final String title;
  final String description;
  final String imageName;

  OnboardModel(this.title, this.description,this.imageName);
  String get imageWithPath => 'assets/onboard/images/$imageName.png';

}

class OnboardModels{

  static final List<OnboardModel> onBoardItems=[
    OnboardModel('Sipariş Ver', 'Bir tık uzagında, hemen yemeğini seç', 'ob_1'),
    OnboardModel('Sipariş Ver', 'Bir tık uzagında, hemen yemeğini seç', 'ob_2'),
    OnboardModel('Sipariş Ver', 'Bir tık uzagında, hemen yemeğini seç', 'ob_3'),
  ];
}