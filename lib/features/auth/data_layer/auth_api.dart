import 'package:finspeed_vault/features/auth/data_layer/models/user_data_model.dart';

abstract class AuthApi {
  Future<UserDataModel> signInWithPhoneAndPassword(
      String email, String password);
  Future<void> signOut();
  Future<UserDataModel> getCurrentUser();
}
