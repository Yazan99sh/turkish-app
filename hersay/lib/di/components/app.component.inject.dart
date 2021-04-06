import 'app.component.dart' as _i1;
import '../../module_localization/service/localization.service.dart' as _i2;
import '../../utils/logger/logger.dart' as _i3;
import '../../module_products/products_module.dart' as _i4;
import 'dart:async' as _i5;
import '../../main.dart' as _i6;
import '../../module_theme/service/theme.service.dart' as _i7;
import '../../module_theme/persistance/theme_preferences_helper.dart' as _i8;
import '../../module_localization/persistance/localization_prefrences_helper.dart'
    as _i9;
import '../../module_auth/auth_module.dart' as _i10;
import '../../module_auth/ui/screen/login/login_screen.dart' as _i11;
import '../../module_auth/state_manager/login/login.state_manager.dart' as _i12;
import '../../module_auth/service/auth/auth.service.dart' as _i13;
import '../../module_auth/persistance/auth_prefs_helper.dart' as _i14;
import '../../module_auth/manager/auth/auth.manager.dart' as _i15;
import '../../module_auth/repository/auth/auth.repository.dart' as _i16;
import '../../module_network/http_client/http_client.dart' as _i17;
import '../../module_auth/ui/screen/register/register_screen.dart' as _i18;
import '../../module_auth/state_manager/register/register.state_manager.dart'
    as _i19;
import '../../module_products/ui/screen/add_real_estate/add_real_estate_screen.dart'
    as _i20;
import '../../module_products/state_manager/real_estate/add_real_estate.manager.dart'
    as _i21;
import '../../module_products/service/real_estate/real_estate.service.dart'
    as _i22;
import '../../module_products/manager/real_estate/real_estate.manager.dart'
    as _i23;
import '../../module_products/repository/real_estate/real_estate.repository.dart'
    as _i24;
import '../../module_upload/service/image_upload/image_upload_service.dart'
    as _i25;
import '../../module_upload/manager/upload_manager/upload_manager.dart' as _i26;
import '../../module_upload/repository/upload_repository/upload_repository.dart'
    as _i27;
import '../../module_products/ui/screen/add_car/add_car_sceen.dart' as _i28;
import '../../module_products/state_manager/car/add_car.state_manager.dart'
    as _i29;
import '../../module_products/service/car/car.service.dart' as _i30;
import '../../module_products/manager/car/car.manager.dart' as _i31;
import '../../module_products/repository/car/car.repository.dart' as _i32;
import '../../module_products/ui/screen/add_electronic_device/add_electronic_device_screen.dart'
    as _i33;
import '../../module_products/state_manager/electroinic_device/add_electronic_device.state_manager.dart'
    as _i34;
import '../../module_products/service/electronic_device/electronic_device.service.dart'
    as _i35;
import '../../module_products/manager/electronic_device/electronic_device.manager.dart'
    as _i36;
import '../../module_products/repository/electonic_device/electronic_device.repository.dart'
    as _i37;
import '../../module_products/ui/screen/add_service/add_service_screen.dart'
    as _i38;
import '../../module_products/state_manager/service/add_service_state_manager.dart'
    as _i39;
import '../../module_products/service/service/service.dart' as _i40;
import '../../module_products/manager/service/service_manager.dart' as _i41;
import '../../module_products/repository/service/service_repository.dart'
    as _i42;
import '../../module_products/ui/screen/electronic_device_details/electronic_device_details_screen.dart'
    as _i43;
import '../../module_products/state_manager/electroinic_device/electronic_device_details.state_manager.dart'
    as _i44;
import '../../module_chat/service/chat/char_service.dart' as _i45;
import '../../module_chat/manager/chat/chat_manager.dart' as _i46;
import '../../module_chat/repository/chat/chat_repository.dart' as _i47;
import '../../module_reaction/service/reaction.service.dart' as _i48;
import '../../module_reaction/manager/reaction.manager.dart' as _i49;
import '../../module_reaction/repository/reaction.repository.dart' as _i50;
import '../../module_products/ui/screen/real_estate_details/real_estate_details_screen.dart'
    as _i51;
import '../../module_products/state_manager/real_estate/real_estate_details.state_manager.dart'
    as _i52;
import '../../module_products/ui/screen/car_details/car_details_screen.dart'
    as _i53;
import '../../module_products/state_manager/car/car_details.state_manager.dart'
    as _i54;
import '../../module_report/service/report_service.dart' as _i55;
import '../../module_report/manager/report_manager.dart' as _i56;
import '../../module_report/repository/report_repository.dart' as _i57;
import '../../module_products/ui/screen/product_images/product_images_screen.dart'
    as _i58;
import '../../module_products/ui/screen/service_details/service_details.dart'
    as _i59;
import '../../module_products/state_manager/service/service_details.state_manager.dart'
    as _i60;
import '../../module_splash/splash_module.dart' as _i61;
import '../../module_splash/ui/screen/splash_screen/splash_screen.dart' as _i62;
import '../../main_screen/main_module.dart' as _i63;
import '../../main_screen/ui/main_screen.dart' as _i64;
import '../../module_home/ui/sceen/home/home_screen.dart' as _i65;
import '../../module_home/state_manager/home/home.state_manager.dart' as _i66;
import '../../module_home/service/home/home.service.dart' as _i67;
import '../../module_home/manager/home/home.manager.dart' as _i68;
import '../../module_home/repository/home/home.repository.dart' as _i69;
import '../../module_chat/ui/screen/chats_list/chats_list_screen.dart' as _i70;
import '../../module_chat/state_manager/chats_list/chat_list.state_manger.dart'
    as _i71;
import '../../module_history/ui/screen/history/history_screen.dart' as _i72;
import '../../module_history/state_manager/history/history.state_manger.dart'
    as _i73;
import '../../module_history/service/history/history.service.dart' as _i74;
import '../../module_history/manager/history/history.manager.dart' as _i75;
import '../../module_history/repository/history/history.reppsitory.dart'
    as _i76;
import '../../module_notification/ui/screen/notifications/notification_screen.dart'
    as _i77;
import '../../module_notification/state_manager/notification/notification.state_manger.dart'
    as _i78;
import '../../module_notification/service/notification/notification.service.dart'
    as _i79;
import '../../module_notification/manager/notification/notification.manager.dart'
    as _i80;
import '../../module_notification/repository/notification/notification.reppsitory.dart'
    as _i81;
import '../../module_home/home_module.dart' as _i82;
import '../../module_search/search_module.dart' as _i83;
import '../../module_search/ui/screen/search_screen/seach_screen.dart' as _i84;
import '../../module_search/state_manager/search/search.state_manager.dart'
    as _i85;
import '../../module_search/service/search/search.service.dart' as _i86;
import '../../module_search/manager/search/search.manager.dart' as _i87;
import '../../module_search/repository/search.repository.dart' as _i88;
import '../../module_search/ui/screen/advanced_search_screen/advanced_search_screen.dart'
    as _i89;
import '../../module_search/state_manager/advanced_search/advanced_search.state_manager.dart'
    as _i90;
import '../../module_settings/settings_module.dart' as _i91;
import '../../module_settings/ui/screen/settings/settings_screen.dart' as _i92;
import '../../module_notification/notification_module.dart' as _i93;
import '../../module_profile/Profile_module.dart' as _i94;
import '../../module_profile/ui/screen/profile/profile_screen.dart' as _i95;
import '../../module_profile/state_manager/profile/profile.state_manager.dart'
    as _i96;
import '../../module_profile/service/profile/profile.service.dart' as _i97;
import '../../module_profile/manager/profile/profile.manager.dart' as _i98;
import '../../module_profile/repository/profile/profile.repository.dart'
    as _i99;
import '../../module_profile/presistance/profile_shared_preferences.dart'
    as _i100;
import '../../module_profile/ui/screen/edit_profile/edit_profile_screen.dart'
    as _i101;
import '../../module_profile/state_manager/edit_profile/edit_profile.state_manager.dart'
    as _i102;
import '../../module_history/history_module.dart' as _i103;
import '../../module_chat/chat_module.dart' as _i104;
import '../../module_chat/ui/screen/chat_page/chat_page_screen.dart' as _i105;
import '../../module_chat/bloc/chat_page/chat_page.bloc.dart' as _i106;
import '../../module_report/report_module.dart' as _i107;
import '../../module_report/ui/screen/report/report_screen.dart' as _i108;
import '../../module_report/state_manager/report.state_manager.dart' as _i109;

class AppComponent$Injector implements _i1.AppComponent {
  AppComponent$Injector._();

  _i2.LocalizationService _singletonLocalizationService;

  _i3.Logger _singletonLogger;

  _i4.ProductsModule _singletonProductsModule;

  static _i5.Future<_i1.AppComponent> create() async {
    final injector = AppComponent$Injector._();

    return injector;
  }

  _i6.MyApp _createMyApp() => _i6.MyApp(
      _createAppThemeDataService(),
      _createLocalizationService(),
      _createAuthorizationModule(),
      _createProductsModule(),
      _createSplashModule(),
      _createMainModule(),
      _createHomeModule(),
      _createSearchModule(),
      _createSettingModule(),
      _createNotificationModule(),
      _createProfileModule(),
      _createHistoryModule(),
      _createChatModule(),
      _createReportModule());
  _i7.AppThemeDataService _createAppThemeDataService() =>
      _i7.AppThemeDataService(_createThemePreferencesHelper());
  _i8.ThemePreferencesHelper _createThemePreferencesHelper() =>
      _i8.ThemePreferencesHelper();
  _i2.LocalizationService _createLocalizationService() =>
      _singletonLocalizationService ??=
          _i2.LocalizationService(_createLocalizationPreferencesHelper());
  _i9.LocalizationPreferencesHelper _createLocalizationPreferencesHelper() =>
      _i9.LocalizationPreferencesHelper();
  _i10.AuthorizationModule _createAuthorizationModule() =>
      _i10.AuthorizationModule(_createLoginScreen(), _createRegisterScreen());
  _i11.LoginScreen _createLoginScreen() =>
      _i11.LoginScreen(_createLoginStateManager());
  _i12.LoginStateManager _createLoginStateManager() =>
      _i12.LoginStateManager(_createAuthService());
  _i13.AuthService _createAuthService() =>
      _i13.AuthService(_createAuthPrefsHelper(), _createAuthManager());
  _i14.AuthPrefsHelper _createAuthPrefsHelper() => _i14.AuthPrefsHelper();
  _i15.AuthManager _createAuthManager() =>
      _i15.AuthManager(_createAuthRepository());
  _i16.AuthRepository _createAuthRepository() =>
      _i16.AuthRepository(_createApiClient());
  _i17.ApiClient _createApiClient() => _i17.ApiClient(_createLogger());
  _i3.Logger _createLogger() => _singletonLogger ??= _i3.Logger();
  _i18.RegisterScreen _createRegisterScreen() =>
      _i18.RegisterScreen(_createRegisterStateManager());
  _i19.RegisterStateManager _createRegisterStateManager() =>
      _i19.RegisterStateManager(_createAuthService());
  _i4.ProductsModule _createProductsModule() =>
      _singletonProductsModule ??= _i4.ProductsModule(
          _createAddRealEstateScreen(),
          _createAddCarScreen(),
          _createAddElectronicDeviceScreen(),
          _createAddServiceScreen(),
          _createElectronicDeviceDetailsScreen(),
          _createRealEstateDetailsScreen(),
          _createCarDetailsScreen(),
          _createProductImagesScreen(),
          _createServiceDetailsScreen());
  _i20.AddRealEstateScreen _createAddRealEstateScreen() =>
      _i20.AddRealEstateScreen(
          _createAddRealEstateStateManager(), _createAuthService());
  _i21.AddRealEstateStateManager _createAddRealEstateStateManager() =>
      _i21.AddRealEstateStateManager(_createRealEstateService());
  _i22.RealEstateService _createRealEstateService() => _i22.RealEstateService(
      _createRealEstateManager(), _createImageUploadService());
  _i23.RealEstateManager _createRealEstateManager() =>
      _i23.RealEstateManager(_createRealEstateRepository());
  _i24.RealEstateRepository _createRealEstateRepository() =>
      _i24.RealEstateRepository(_createApiClient(), _createAuthService());
  _i25.ImageUploadService _createImageUploadService() =>
      _i25.ImageUploadService(_createUploadManager());
  _i26.UploadManager _createUploadManager() =>
      _i26.UploadManager(_createUploadRepository());
  _i27.UploadRepository _createUploadRepository() =>
      _i27.UploadRepository(_createApiClient(), _createAuthService());
  _i28.AddCarScreen _createAddCarScreen() =>
      _i28.AddCarScreen(_createAddCarStateManager(), _createAuthService());
  _i29.AddCarStateManager _createAddCarStateManager() =>
      _i29.AddCarStateManager(_createCarService());
  _i30.CarService _createCarService() =>
      _i30.CarService(_createCarManager(), _createImageUploadService());
  _i31.CarManager _createCarManager() =>
      _i31.CarManager(_createCarRepository());
  _i32.CarRepository _createCarRepository() =>
      _i32.CarRepository(_createApiClient(), _createAuthService());
  _i33.AddElectronicDeviceScreen _createAddElectronicDeviceScreen() =>
      _i33.AddElectronicDeviceScreen(
          _createAddElectronicDeviceStateManager(), _createAuthService());
  _i34.AddElectronicDeviceStateManager
      _createAddElectronicDeviceStateManager() =>
          _i34.AddElectronicDeviceStateManager(
              _createElectronicDeviceService());
  _i35.ElectronicDeviceService _createElectronicDeviceService() =>
      _i35.ElectronicDeviceService(
          _createElectronicDeviceManager(), _createImageUploadService());
  _i36.ElectronicDeviceManager _createElectronicDeviceManager() =>
      _i36.ElectronicDeviceManager(_createElectronicDeviceRepository());
  _i37.ElectronicDeviceRepository _createElectronicDeviceRepository() =>
      _i37.ElectronicDeviceRepository(_createApiClient(), _createAuthService());
  _i38.AddServiceScreen _createAddServiceScreen() => _i38.AddServiceScreen(
      _createAddServiceStateManager(), _createAuthService());
  _i39.AddServiceStateManager _createAddServiceStateManager() =>
      _i39.AddServiceStateManager(_createServiceService());
  _i40.ServiceService _createServiceService() =>
      _i40.ServiceService(_createServiceManager(), _createImageUploadService());
  _i41.ServiceManager _createServiceManager() =>
      _i41.ServiceManager(_createServiceRepository());
  _i42.ServiceRepository _createServiceRepository() =>
      _i42.ServiceRepository(_createApiClient(), _createAuthService());
  _i43.ElectronicDeviceDetailsScreen _createElectronicDeviceDetailsScreen() =>
      _i43.ElectronicDeviceDetailsScreen(
          _createElectronicDeviceDetailsStateManager(), _createAuthService());
  _i44.ElectronicDeviceDetailsStateManager
      _createElectronicDeviceDetailsStateManager() =>
          _i44.ElectronicDeviceDetailsStateManager(
              _createElectronicDeviceService(),
              _createChatService(),
              _createReactionService());
  _i45.ChatService _createChatService() =>
      _i45.ChatService(_createChatManager());
  _i46.ChatManager _createChatManager() =>
      _i46.ChatManager(_createChatRepository());
  _i47.ChatRepository _createChatRepository() =>
      _i47.ChatRepository(_createApiClient(), _createAuthService());
  _i48.ReactionService _createReactionService() =>
      _i48.ReactionService(_createReactionManager());
  _i49.ReactionManager _createReactionManager() =>
      _i49.ReactionManager(_createReactionRepository());
  _i50.ReactionRepository _createReactionRepository() =>
      _i50.ReactionRepository(_createApiClient(), _createAuthService());
  _i51.RealEstateDetailsScreen _createRealEstateDetailsScreen() =>
      _i51.RealEstateDetailsScreen(
          _createRealEstateDetailsStateManager(), _createAuthService());
  _i52.RealEstateDetailsStateManager _createRealEstateDetailsStateManager() =>
      _i52.RealEstateDetailsStateManager(_createRealEstateService(),
          _createChatService(), _createReactionService());
  _i53.CarDetailsScreen _createCarDetailsScreen() => _i53.CarDetailsScreen(
      _createCarDetailsStateManager(), _createAuthService());
  _i54.CarDetailsStateManager _createCarDetailsStateManager() =>
      _i54.CarDetailsStateManager(_createCarService(), _createChatService(),
          _createReactionService(), _createReportService());
  _i55.ReportService _createReportService() =>
      _i55.ReportService(_createReportManager());
  _i56.ReportManager _createReportManager() =>
      _i56.ReportManager(_createReportRepository());
  _i57.ReportRepository _createReportRepository() =>
      _i57.ReportRepository(_createApiClient(), _createAuthService());
  _i58.ProductImagesScreen _createProductImagesScreen() =>
      _i58.ProductImagesScreen();
  _i59.ServiceDetailsScreen _createServiceDetailsScreen() =>
      _i59.ServiceDetailsScreen(
          _createServicesDetailsStateManager(), _createAuthService());
  _i60.ServicesDetailsStateManager _createServicesDetailsStateManager() =>
      _i60.ServicesDetailsStateManager(
          _createServiceService(),
          _createChatService(),
          _createReactionService(),
          _createReportService());
  _i61.SplashModule _createSplashModule() =>
      _i61.SplashModule(_createSplashScreen());
  _i62.SplashScreen _createSplashScreen() =>
      _i62.SplashScreen(_createAuthService());
  _i63.MainModule _createMainModule() => _i63.MainModule(_createMainScreen());
  _i64.MainScreen _createMainScreen() => _i64.MainScreen(
      _createHomeScreen(),
      _createChatsListScreen(),
      _createHistoryScreen(),
      _createNotificationScreen());
  _i65.HomeScreen _createHomeScreen() =>
      _i65.HomeScreen(_createHomeStateManager());
  _i66.HomeStateManager _createHomeStateManager() =>
      _i66.HomeStateManager(_createHomeService(), _createAuthService());
  _i67.HomeService _createHomeService() =>
      _i67.HomeService(_createHomeManager());
  _i68.HomeManager _createHomeManager() =>
      _i68.HomeManager(_createHomeRepository());
  _i69.HomeRepository _createHomeRepository() =>
      _i69.HomeRepository(_createApiClient(), _createAuthService());
  _i70.ChatsListScreen _createChatsListScreen() => _i70.ChatsListScreen(
      _createChatsListStateManager(), _createAuthService());
  _i71.ChatsListStateManager _createChatsListStateManager() =>
      _i71.ChatsListStateManager(_createChatService());
  _i72.HistoryScreen _createHistoryScreen() =>
      _i72.HistoryScreen(_createHistoryStateManager(), _createAuthService());
  _i73.HistoryStateManager _createHistoryStateManager() =>
      _i73.HistoryStateManager(_createHistoryService());
  _i74.HistoryService _createHistoryService() =>
      _i74.HistoryService(_createHistoryManager());
  _i75.HistoryManager _createHistoryManager() =>
      _i75.HistoryManager(_createHistoryRepository());
  _i76.HistoryRepository _createHistoryRepository() =>
      _i76.HistoryRepository(_createAuthService(), _createApiClient());
  _i77.NotificationScreen _createNotificationScreen() =>
      _i77.NotificationScreen(
          _createNotificationStateManager(), _createAuthService());
  _i78.NotificationStateManager _createNotificationStateManager() =>
      _i78.NotificationStateManager(_createNotificationService());
  _i79.NotificationService _createNotificationService() =>
      _i79.NotificationService(_createNotificationManager());
  _i80.NotificationManager _createNotificationManager() =>
      _i80.NotificationManager(_createNotificationRepository());
  _i81.NotificationRepository _createNotificationRepository() =>
      _i81.NotificationRepository(_createAuthService(), _createApiClient());
  _i82.HomeModule _createHomeModule() => _i82.HomeModule(_createHomeScreen());
  _i83.SearchModule _createSearchModule() =>
      _i83.SearchModule(_createSearchScreen(), _createAdvancedSearchScreen());
  _i84.SearchScreen _createSearchScreen() =>
      _i84.SearchScreen(_createSearchStateManager());
  _i85.SearchStateManager _createSearchStateManager() =>
      _i85.SearchStateManager(_createSearchService());
  _i86.SearchService _createSearchService() =>
      _i86.SearchService(_createSearchManager());
  _i87.SearchManager _createSearchManager() =>
      _i87.SearchManager(_createSearchRepository());
  _i88.SearchRepository _createSearchRepository() =>
      _i88.SearchRepository(_createApiClient(), _createAuthService());
  _i89.AdvancedSearchScreen _createAdvancedSearchScreen() =>
      _i89.AdvancedSearchScreen(_createAdvancedSearchStateManager());
  _i90.AdvancedSearchStateManager _createAdvancedSearchStateManager() =>
      _i90.AdvancedSearchStateManager(_createSearchService());
  _i91.SettingModule _createSettingModule() =>
      _i91.SettingModule(_createSettingsScreen());
  _i92.SettingsScreen _createSettingsScreen() => _i92.SettingsScreen(
      _createAuthService(),
      _createAppThemeDataService(),
      _createLocalizationService());
  _i93.NotificationModule _createNotificationModule() =>
      _i93.NotificationModule(_createNotificationScreen());
  _i94.ProfileModule _createProfileModule() =>
      _i94.ProfileModule(_createProfileScreen(), _createEditProfileScreen());
  _i95.ProfileScreen _createProfileScreen() =>
      _i95.ProfileScreen(_createProfileStateManager(), _createAuthService());
  _i96.ProfileStateManager _createProfileStateManager() =>
      _i96.ProfileStateManager(_createProfileService(), _createAuthService());
  _i97.ProfileService _createProfileService() => _i97.ProfileService(
      _createProfileManager(),
      _createImageUploadService(),
      _createProfileSharedPreferencesHelper());
  _i98.ProfileManager _createProfileManager() =>
      _i98.ProfileManager(_createProfileRepository());
  _i99.ProfileRepository _createProfileRepository() =>
      _i99.ProfileRepository(_createApiClient(), _createAuthService());
  _i100.ProfileSharedPreferencesHelper
      _createProfileSharedPreferencesHelper() =>
          _i100.ProfileSharedPreferencesHelper();
  _i101.EditProfileScreen _createEditProfileScreen() =>
      _i101.EditProfileScreen(_createEditProfileStateManager());
  _i102.EditProfileStateManager _createEditProfileStateManager() =>
      _i102.EditProfileStateManager(
          _createProfileService(), _createAuthService());
  _i103.HistoryModule _createHistoryModule() =>
      _i103.HistoryModule(_createHistoryScreen());
  _i104.ChatModule _createChatModule() => _i104.ChatModule(
      _createChatsListScreen(), _createAuthService(), _createChatScreen());
  _i105.ChatScreen _createChatScreen() =>
      _i105.ChatScreen(_createChatPageBloc(), _createImageUploadService());
  _i106.ChatPageBloc _createChatPageBloc() =>
      _i106.ChatPageBloc(_createChatService());
  _i107.ReportModule _createReportModule() =>
      _i107.ReportModule(_createReportScreen());
  _i108.ReportScreen _createReportScreen() =>
      _i108.ReportScreen(_createReportStateManager());
  _i109.ReportStateManager _createReportStateManager() =>
      _i109.ReportStateManager(_createReportService());
  @override
  _i6.MyApp get app => _createMyApp();
}
