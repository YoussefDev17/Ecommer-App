import 'package:get/get.dart';

class searchController extends GetxController {
  var searchText = ''.obs;
  var isSearching = false.obs;

  final items = ["Apple", "Banana", "Orange", "Mango", "Pineapple"];

  List<String> get filteredItems {
    if (searchText.isEmpty) {
      return items;
    } else {
      return items
          .where(
            (item) =>
                item.toLowerCase().contains(searchText.value.toLowerCase()),
          )
          .toList();
    }
  }

  void updateSearch(String value) {
    searchText.value = value;
    isSearching.value = value.isNotEmpty;
  }

  void clearSearch() {
    searchText.value = '';
    isSearching.value = false;
  }
}
