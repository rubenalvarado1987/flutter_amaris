import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/favorites_page/models/favorites_model.dart';

/// A controller class for the FavoritesPage.
///
/// This class manages the state of the FavoritesPage, including the
/// current favoritesModelObj
class FavoritesController extends GetxController {
  FavoritesController(this.favoritesModelObj);

  Rx<FavoritesModel> favoritesModelObj;
}
