import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:profile/data/models/user_model.dart';

enum FetchStates { idle, loading, success, error }

class ProfileController extends GetxController {
  Rx<UserModel?> user = Rx<UserModel?>(null);
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Rx<FetchStates> fetchState = FetchStates.idle.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    fetchState.value = FetchStates.loading;
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection('user').doc('user').get();
      if (snapshot.exists && snapshot.data() != null) {
        user.value = UserModel.fromMap(snapshot.data()!);
        print('✅ User data fetched: ${user.value?.toMap()}');
        fetchState.value = FetchStates.success;
      } else {
        print('⚠️ User document not found');
        fetchState.value = FetchStates.error;
      }
    } catch (e) {
      print('❌ Error fetching user data: $e');
      fetchState.value = FetchStates.error;
    }
  }
}
