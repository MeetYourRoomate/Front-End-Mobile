import 'package:meet_your_roommate_app/iam/domain/entity/user.dart';

abstract class UserInterface {
  Future<UserAuth> getUser();
  Future<UserAuth> saveUser(UserAuth user);
  Future<UserAuth> updateUser(String uid);
}
