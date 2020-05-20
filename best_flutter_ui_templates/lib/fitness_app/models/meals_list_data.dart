class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String> meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/fitness_app/fever.png',
      titleTxt: 'Direct Contact',
      kacl: 3,
      meals: <String>['Self-Quarantine!'],
      startColor: '#93291E',
      endColor: '#ED213A',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/headache.png',
      titleTxt: 'Indirect Contact',
      kacl: 4,
      meals: <String>['Watch symptons!'],
      startColor: '#F37335',
      endColor: '#FDC830',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/cough.png',
      titleTxt: 'Distant Contact',
      kacl: 3,
      meals: <String>['Be careful!'],
      startColor: '#11998e',
      endColor: '#38ef7d',
    ),
  ];
}
