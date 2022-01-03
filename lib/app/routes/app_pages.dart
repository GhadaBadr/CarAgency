import 'package:get/get.dart';

import 'package:car_agency/app/modules/Activation/bindings/activation_binding.dart';
import 'package:car_agency/app/modules/Activation/views/activation_view.dart';
import 'package:car_agency/app/modules/BodytypeDetails/bindings/bodytype_details_binding.dart';
import 'package:car_agency/app/modules/BodytypeDetails/views/bodytype_details_view.dart';
import 'package:car_agency/app/modules/BodytypeDetailsDescription/bindings/bodytype_details_description_binding.dart';
import 'package:car_agency/app/modules/BodytypeDetailsDescription/views/bodytype_details_description_view.dart';
import 'package:car_agency/app/modules/BrandDetails/bindings/brand_details_binding.dart';
import 'package:car_agency/app/modules/BrandDetails/views/brand_details_view.dart';
import 'package:car_agency/app/modules/BrandDetailsDescription/bindings/brand_details_description_binding.dart';
import 'package:car_agency/app/modules/BrandDetailsDescription/views/brand_details_description_view.dart';
import 'package:car_agency/app/modules/Cart/bindings/cart_binding.dart';
import 'package:car_agency/app/modules/Cart/views/cart_view.dart';
import 'package:car_agency/app/modules/Dealerships/bindings/dealerships_binding.dart';
import 'package:car_agency/app/modules/Dealerships/views/dealerships_view.dart';
import 'package:car_agency/app/modules/GridItemDescrptionsDetails/bindings/grid_item_descrptions_details_binding.dart';
import 'package:car_agency/app/modules/GridItemDescrptionsDetails/views/grid_item_descrptions_details_view.dart';
import 'package:car_agency/app/modules/Insurance/bindings/insurance_binding.dart';
import 'package:car_agency/app/modules/Insurance/views/insurance_view.dart';
import 'package:car_agency/app/modules/NewAgencyDetails/bindings/new_agency_details_binding.dart';
import 'package:car_agency/app/modules/NewAgencyDetails/views/new_agency_details_view.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/bindings/new_agency_item_details_binding.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/views/new_agency_item_details_view.dart';
import 'package:car_agency/app/modules/NewUser/bindings/new_user_binding.dart';
import 'package:car_agency/app/modules/NewUser/views/new_user_view.dart';
import 'package:car_agency/app/modules/Pricing/bindings/pricing_binding.dart';
import 'package:car_agency/app/modules/Pricing/views/pricing_view.dart';
import 'package:car_agency/app/modules/Search/bindings/search_binding.dart';
import 'package:car_agency/app/modules/Search/views/search_view.dart';
import 'package:car_agency/app/modules/Services/bindings/services_binding.dart';
import 'package:car_agency/app/modules/Services/views/services_view.dart';
import 'package:car_agency/app/modules/ServicesGridItemDetails/bindings/services_grid_item_details_binding.dart';
import 'package:car_agency/app/modules/ServicesGridItemDetails/views/services_grid_item_details_view.dart';
import 'package:car_agency/app/modules/SingIn/bindings/sing_in_binding.dart';
import 'package:car_agency/app/modules/SingIn/views/sing_in_view.dart';
import 'package:car_agency/app/modules/Store/bindings/store_binding.dart';
import 'package:car_agency/app/modules/Store/views/store_view.dart';
import 'package:car_agency/app/modules/StoreAllProducts/bindings/store_all_products_binding.dart';
import 'package:car_agency/app/modules/StoreAllProducts/views/store_all_products_view.dart';
import 'package:car_agency/app/modules/StoreProductDetails/bindings/store_product_details_binding.dart';
import 'package:car_agency/app/modules/StoreProductDetails/views/store_product_details_view.dart';
import 'package:car_agency/app/modules/VideoDetails/bindings/video_details_binding.dart';
import 'package:car_agency/app/modules/VideoDetails/views/video_details_view.dart';
import 'package:car_agency/app/modules/home/bindings/home_binding.dart';
import 'package:car_agency/app/modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DEALERSHIPS,
      page: () => DealershipsView(),
      binding: DealershipsBinding(),
    ),
    GetPage(
      name: _Paths.BODYTYPE_DETAILS,
      page: () => BodytypeDetailsView(),
      binding: BodytypeDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BRAND_DETAILS,
      page: () => BrandDetailsView(),
      binding: BrandDetailsBinding(),
    ),
    GetPage(
      name: _Paths.NEW_AGENCY_DETAILS,
      page: () => NewAgencyDetailsView(),
      binding: NewAgencyDetailsBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_DETAILS,
      page: () => VideoDetailsView(),
      binding: VideoDetailsBinding(),
    ),
    GetPage(
      name: _Paths.NEW_AGENCY_ITEM_DETAILS,
      page: () => NewAgencyItemDetailsView(),
      binding: NewAgencyItemDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BODYTYPE_DETAILS_DESCRIPTION,
      page: () => BodytypeDetailsDescriptionView(),
      binding: BodytypeDetailsDescriptionBinding(),
    ),
    GetPage(
      name: _Paths.BRAND_DETAILS_DESCRIPTION,
      page: () => BrandDetailsDescriptionView(),
      binding: BrandDetailsDescriptionBinding(),
    ),
    GetPage(
      name: _Paths.PRICING,
      page: () => PricingView(),
      binding: PricingBinding(),
    ),
    GetPage(
      name: _Paths.SING_IN,
      page: () => SingInView(),
      binding: SingInBinding(),
    ),
    GetPage(
      name: _Paths.NEW_USER,
      page: () => NewUserView(),
      binding: NewUserBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVATION,
      page: () => ActivationView(),
      binding: ActivationBinding(),
    ),
    GetPage(
      name: _Paths.SERVICES,
      page: () => ServicesView(),
      binding: ServicesBinding(),
    ),
    GetPage(
      name: _Paths.SERVICES_GRID_ITEM_DETAILS,
      page: () => ServicesGridItemDetailsView(),
      binding: ServicesGridItemDetailsBinding(),
    ),
    GetPage(
      name: _Paths.GRID_ITEM_DESCRPTIONS_DETAILS,
      page: () => GridItemDescrptionsDetailsView(),
      binding: GridItemDescrptionsDetailsBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.INSURANCE,
      page: () => InsuranceView(),
      binding: InsuranceBinding(),
    ),
    GetPage(
      name: _Paths.STORE_ALL_PRODUCTS,
      page: () => StoreAllProductsView(),
      binding: StoreAllProductsBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.STORE_PRODUCT_DETAILS,
      page: () => StoreProductDetailsView(),
      binding: StoreProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
  ];
}
