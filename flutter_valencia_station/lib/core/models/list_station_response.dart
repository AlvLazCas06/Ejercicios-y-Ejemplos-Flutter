class ListStationResponse {
  final int totalCount;
  final List<Station> results;

  ListStationResponse({
    required this.totalCount,
    required this.results,
  });

  factory ListStationResponse.fromJson(Map<String, dynamic> json) {
    return ListStationResponse(
      totalCount: json['total_count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'results': results.map((e) => e.toJson()).toList(),
    };
  }
}

class Station {
  final String tipo;
  final int objectid;
  final int numplazas;
  final GeoShape geoShape;
  final GeoPoint2d geoPoint2d;

  Station({
    required this.tipo,
    required this.objectid,
    required this.numplazas,
    required this.geoShape,
    required this.geoPoint2d,
  });

  factory Station.fromJson(Map<String, dynamic> json) {
    return Station(
      tipo: json['tipo'] as String,
      objectid: json['objectid'] as int,
      numplazas: json['numplazas'] as int,
      geoShape: GeoShape.fromJson(json['geo_shape'] as Map<String, dynamic>),
      geoPoint2d: GeoPoint2d.fromJson(json['geo_point_2d'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'objectid': objectid,
      'numplazas': numplazas,
      'geo_shape': geoShape.toJson(),
      'geo_point_2d': geoPoint2d.toJson(),
    };
  }
}

class GeoShape {
  final String type;
  final Geometry geometry;
  final Map<String, dynamic> properties;

  GeoShape({
    required this.type,
    required this.geometry,
    required this.properties,
  });

  factory GeoShape.fromJson(Map<String, dynamic> json) {
    return GeoShape(
      type: json['type'] as String,
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: json['properties'] as Map<String, dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'geometry': geometry.toJson(),
      'properties': properties,
    };
  }
}

class Geometry {
  final List<double> coordinates;
  final String type;

  Geometry({
    required this.coordinates,
    required this.type,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coordinates': coordinates,
      'type': type,
    };
  }
}

class GeoPoint2d {
  final double lon;
  final double lat;

  GeoPoint2d({
    required this.lon,
    required this.lat,
  });

  factory GeoPoint2d.fromJson(Map<String, dynamic> json) {
    return GeoPoint2d(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lon': lon,
      'lat': lat,
    };
  }
}