class Time {
  Time({
    required this.status,
    required this.message,
    required this.listed,
  });

  int status;
  String message;
  List<Listed> listed;

  factory Time.fromJson(Map<String, dynamic> json) => Time(
        status: json["status"],
        message: json["message"],
        listed:
            List<Listed>.from(json["listed"].map((x) => Listed.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "listed": List<dynamic>.from(listed.map((x) => x.toJson())),
      };
}

class Listed {
  Listed({
    required this.businessName,
    required this.image,
    required this.rating,
    required this.id,
    required this.address,
    required this.description,
    required this.restaurantType,
    required this.timeAvailable,
    required this.seatAvailable,
    required this.getTime,
    required this.serviceProvider,
    required this.price,
  });

  String businessName;
  String image;
  String rating;
  String id;
  String address;
  String description;
  List<RestaurantType> restaurantType;
  List<TimeAvailable> timeAvailable;
  String seatAvailable;
  String getTime;
  String serviceProvider;
  dynamic price;

  factory Listed.fromJson(Map<String, dynamic> json) => Listed(
        businessName: json["business_name"],
        image: json["image"],
        rating: json["rating"],
        id: json["id"],
        address: json["address"],
        description: json["description"],
        restaurantType: List<RestaurantType>.from(
            json["restaurant_type"].map((x) => RestaurantType.fromJson(x))),
        timeAvailable: List<TimeAvailable>.from(
            json["time_available"].map((x) => TimeAvailable.fromJson(x))),
        seatAvailable: json["seat_available"],
        getTime: json["get_time"],
        serviceProvider: json["service_provider"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "business_name": businessName,
        "image": image,
        "rating": rating,
        "id": id,
        "address": address,
        "description": description,
        "restaurant_type":
            List<dynamic>.from(restaurantType.map((x) => x.toJson())),
        "time_available":
            List<dynamic>.from(timeAvailable.map((x) => x.toJson())),
        "seat_available": seatAvailable,
        "get_time": getTime,
        "service_provider": serviceProvider,
        "price": price,
      };
}

class RestaurantType {
  RestaurantType({
    required this.name,
    required this.id,
  });

  String name;
  String id;

  factory RestaurantType.fromJson(Map<String, dynamic> json) => RestaurantType(
        name: json["name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
      };
}

class TimeAvailable {
  TimeAvailable({
    required this.time,
  });

  String time;

  factory TimeAvailable.fromJson(Map<String, dynamic> json) => TimeAvailable(
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
      };
}
