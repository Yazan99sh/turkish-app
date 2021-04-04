import 'package:hersay/module_home/response/home/home_response.dart';
import 'package:hersay/utils/enums/products/products.dart';

class HomeModel {
  List<HomeElement> realEstates;
  List<HomeElement> cars;
  List<HomeElement> electronicDevices;
  List<HomeElement> advertisement;
  HomeModel(
      {this.realEstates,
      this.cars,
      this.electronicDevices,
      this.advertisement});

  static List<HomeElement> toRealEstatesList(HomeResponse homeData) {
    List<HomeElement> result = [];
    homeData.realEstates.data.forEach((element) {
      result.add(new HomeElement(
          id: element.id,
          product: element.realEstateType,
          image: element.image,
          ownerImage: element.imageUser ?? '',
          type: PRODUCT_TYPE.REAL_ESTATE,
          likes: (element.reaction != null)
              ? element.reaction[0].reactionCount
              : 0,
          category: element.numberOfFloors + ' floors',
          owner: element.userName ?? '',
          specification: element.space + ' SM',
          comments: element.commentsCount));
    });
    return result;
  }

  static List<HomeElement> toCarsList(HomeResponse homeData) {
    List<HomeElement> result = [];
    homeData.cars.data.forEach((element) {
      result.add(new HomeElement(
          id: element.id,
          product: element.carType,
          image: element.image,
          type: PRODUCT_TYPE.CAR,
          likes: (element.reaction != null)
              ? element.reaction[0].reactionCount
              : 0,
          category: element.gearType ?? '',
          owner: element.userName ?? '',
          ownerImage: element.imageUser ?? '',
          specification: element.distance + ' KM',
          comments: element.commentsCount));
    });
    return result;
  }

  static List<HomeElement> toElectronicDevicesList(HomeResponse homeData) {
    List<HomeElement> result = [];
    homeData.electronicDevices.data.forEach((element) {
      result.add(new HomeElement(
          id: element.id,
          product: element.brand,
          image: element.image,
          type: PRODUCT_TYPE.ELECTRONIC_DEVICE,
          likes: (element.reaction != null)
              ? element.reaction[0].reactionCount
              : 0,
          category: element.type,
          ownerImage: element.imageUser ?? '',
          owner: element.userName ?? '',
          specification: element.description,
          comments: element.commentsCount));
    });
    return result;
  }

  static List<HomeElement> toAdvertisementList(HomeResponse homeData) {
    List<HomeElement> result = [];
    homeData.allAdvertisement.data.forEach((element) {
      result.add(new HomeElement(
          id: element.id,
          product: element.type ?? '',
          image: element.image,
          type: PRODUCT_TYPE.ADVERTISMENT,
          likes: (element.reaction != null)
              ? element.reaction[0].reactionCount
              : 0,
          category:element.title??'',
          ownerImage: element.imageUser ?? '',
          owner: element.userName ?? '',
          specification: element.description,
          comments: element.commentsCount));
    });
    return result;
  }
}

class HomeElement {
  int id;
  String product;
  String category;
  String image;
  String owner;
  String ownerImage;
  PRODUCT_TYPE type;
  String specification;
  int likes;
  int comments;
  String title;
  HomeElement(
      {this.id,
      this.image,
      this.likes,
      this.category,
      this.owner,
      this.ownerImage,
      this.product,
      this.specification,
      this.type,
      this.comments,
      this.title
      });
}
