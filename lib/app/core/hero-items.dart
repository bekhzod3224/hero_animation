class HeroInfo{

  final String name;
  final String images;

  HeroInfo({required this.name, required this.images});

}

class HeroItems{

  List<HeroInfo> items = [
    HeroInfo(name: "Pizza", images: "assets/pizza_01.jpg"),
    HeroInfo(name: "Pizza", images: "assets/pizza_02.jpg"),
    HeroInfo(name: "Pizza", images: "assets/pizza_03.jpg"),
    HeroInfo(name: "Pizza", images: "assets/pizza_04.jpg")
  ];
  
}