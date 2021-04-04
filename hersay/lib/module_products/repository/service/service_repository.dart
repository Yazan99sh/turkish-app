
import 'package:hersay/consts/urls.dart';
import 'package:hersay/module_auth/service/auth/auth.service.dart';
import 'package:hersay/module_network/http_client/http_client.dart';
import 'package:hersay/module_products/request/comment/comment_request.dart';
import 'package:hersay/module_products/request/real_estate/real_estate_request.dart';
import 'package:hersay/module_products/response/real_estate/real_estate_response.dart';
import 'package:hersay/module_products/response/service/service_response.dart';
import 'package:inject/inject.dart';

@provide
class ServiceRepository{
  final ApiClient _apiClient;
  final AuthService _authService;

  ServiceRepository(
      this._apiClient,
      this._authService,
      );

  // Future<int> addNewRealEstate(RealEstateRequest realEstateRequest) async {
  //   var token = await _authService.getToken();
  //   dynamic response = await _apiClient.post(
  //     Urls.ADD_NEW_REAL_ESTATE,
  //     realEstateRequest.toJson(),
  //     headers: {'Authorization': 'Bearer ' + token},
  //   );

  //   if (response == null) return null;

  //   return response['status_code'] == '201' ? response['Data']['id'] : null;
  // }

  Future<ServiceResponse> getServiceDetails(int serviceId)async{
    var token = await _authService.getToken();
    dynamic response = (token != null)
        ? await _apiClient.get(
      Urls.SERVICE_DETAILS_API + '$serviceId',
      headers: {'Authorization': 'Bearer ' + token},
    )
        : await _apiClient.get( Urls.SERVICE_DETAILS_API + '$serviceId',);


    if (response == null) return null;
    return ServiceResponse.fromJson(response);
  }
  Future placeComment(CommentRequest request) async {
    var token = await _authService.getToken();
    var response = await _apiClient.post(
      Urls.COMMENT_API,
      request.toJson(),
      headers: {'Authorization': 'Bearer ' + token},
    );
  }
}