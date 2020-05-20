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
      imagePath: '',
      titleTxt: 'Direct Contact',
      kacl: 1,
      meals: <String>['Self-Quarantine!'],
      startColor: '#93291E',
      endColor: '#ED213A',
    ),
    MealsListData(
      imagePath: '',
      titleTxt: 'Indirect Contact',
      kacl: 2,
      meals: <String>['Watch symptons!'],
      startColor: '#F37335',
      endColor: '#FDC830',
    ),
    MealsListData(
      imagePath: '',
      titleTxt: 'Distant Contact',
      kacl: 3,
      meals: <String>['Be careful!'],
      startColor: '#11998e',
      endColor: '#38ef7d',
    ),
  ];
}
