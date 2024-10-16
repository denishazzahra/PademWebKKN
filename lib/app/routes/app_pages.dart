import 'package:get/get.dart';

import '../modules/admin_pages/berita_admin/bindings/berita_admin_binding.dart';
import '../modules/admin_pages/berita_admin/views/berita_admin_view.dart';
import '../modules/admin_pages/buat_berita/bindings/buat_berita_binding.dart';
import '../modules/admin_pages/buat_berita/views/buat_berita_view.dart';
import '../modules/admin_pages/buat_product_dan_jasa/bindings/buat_product_dan_jasa_binding.dart';
import '../modules/admin_pages/buat_product_dan_jasa/views/buat_product_dan_jasa_view.dart';
import '../modules/admin_pages/home_admin/bindings/home_admin_binding.dart';
import '../modules/admin_pages/home_admin/views/home_admin_view.dart';
import '../modules/admin_pages/product_jasa_admin/bindings/product_jasa_admin_binding.dart';
import '../modules/admin_pages/product_jasa_admin/views/product_jasa_admin_view.dart';
import '../modules/admin_pages/profile_dusun_admin/bindings/profile_dusun_admin_binding.dart';
import '../modules/admin_pages/profile_dusun_admin/views/profile_dusun_admin_view.dart';
import '../modules/guest_page/belanja_page/bindings/belanja_page_binding.dart';
import '../modules/guest_page/belanja_page/views/belanja_page_view.dart';
import '../modules/guest_page/beranda/bindings/beranda_binding.dart';
import '../modules/guest_page/beranda/views/beranda_view.dart';
import '../modules/guest_page/detail_berita/bindings/detail_berita_binding.dart';
import '../modules/guest_page/detail_berita/views/detail_berita_view.dart';
import '../modules/guest_page/infografis/bindings/infografis_binding.dart';
import '../modules/guest_page/infografis/views/infografis_view.dart';
import '../modules/guest_page/profile_dusun/bindings/profile_dusun_binding.dart';
import '../modules/guest_page/profile_dusun/views/profile_dusun_view.dart';
import '../modules/landing_page/bindings/landing_page_binding.dart';
import '../modules/landing_page/views/landing_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => const LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.BERANDA,
      page: () => const BerandaView(),
      binding: BerandaBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DUSUN,
      page: () => const ProfileDusunView(),
      binding: ProfileDusunBinding(),
    ),
    GetPage(
      name: _Paths.BELANJA_PAGE,
      page: () => BelanjaPageView(),
      binding: BelanjaPageBinding(),
    ),
    // Menggunakan alias untuk menghindari benturan nama
    GetPage(
      name: '${_Paths.DETAIL_BERITA}/:id',
      page: () => DetailBeritaView(
        BERITAID: '',
      ),
      binding: DetailBeritaBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => const HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DUSUN_ADMIN,
      page: () => const ProfileDusunAdminView(),
      binding: ProfileDusunAdminBinding(),
    ),
    GetPage(
      name: _Paths.BERITA_ADMIN,
      page: () => const BeritaAdminView(),
      binding: BeritaAdminBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_BERITA,
      page: () => const BuatBeritaView(),
      binding: BuatBeritaBinding(),
    ),
    GetPage(
      name: _Paths.INFOGRAFIS,
      page: () => InfografisView(),
      binding: InfografisBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_JASA_ADMIN,
      page: () => const ProductJasaAdminView(),
      binding: ProductJasaAdminBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_PRODUCT_DAN_JASA,
      page: () => const BuatProductDanJasaView(),
      binding: BuatProductDanJasaBinding(),
    ),
  ];
}
