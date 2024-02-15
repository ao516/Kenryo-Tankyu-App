import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'user_controller.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default(false) bool isLoggedIn,
  }) = _UserState;
}

final userProvider =
StateNotifierProvider<UserController, UserState>((ref) => UserController());

class UserController extends StateNotifier<UserState> {
  UserController() : super(UserState());

  void logOut() {
    state = state.copyWith(isLoggedIn: false);
  }

  void logIn() {
    state = state.copyWith(isLoggedIn: true);
  }
}