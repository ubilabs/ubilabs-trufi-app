import 'package:collection/collection.dart' show IterableExtension;

enum VertexType { normal, transit, bikepark, bikeshare, parkandride }

VertexType? getVertexTypeByString(String? vertexType) {
  return VertexTypeExtension.names.keys.firstWhereOrNull(
    (key) => key.name == vertexType,
  );
}

extension VertexTypeExtension on VertexType? {
  static const names = <VertexType, String>{
    VertexType.normal: 'NORMAL',
    VertexType.transit: 'TRANSIT',
    VertexType.bikepark: 'BIKEPARK',
    VertexType.bikeshare: 'BIKESHARE',
    VertexType.parkandride: 'PARKANDRIDE'
  };
  String? get name => names[this!];
}
