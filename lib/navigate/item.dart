class Item{
  final String deviceName;
  final String iconPath;
  late bool isActive;
  Item({required this.deviceName, required this.iconPath, required this.isActive});
  Item.fromJson(Map<String, dynamic> json)
    : deviceName = json['deviceName'],
      iconPath = json['iconPath'] ,
      isActive = json['isActive'] ?? false;
}