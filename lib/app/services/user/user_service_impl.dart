import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_list_provider/app/repositories/user/user_repository.dart';
import 'package:flutter_todo_list_provider/app/services/user/user_service.dart';

class UserServiceImpl implements UserService {
  final UserRepository _userRepository;

  UserServiceImpl({required UserRepository userRepository})
      : _userRepository = userRepository;

  @override
  Future<User?> register(
          String email,
          String
              password) => //Esse método é forneceido pelo firebaseAuth possibilitando a criação de um usuário
      _userRepository.register(email, password);

  @override
  Future<User?> login(String email, String password) =>
      _userRepository.login(email, password);

  @override
  Future<void> forgotPassword(String email) =>
      _userRepository.forgotPassword(email);

  @override
  Future<User?> googleLogin() => _userRepository.googleLogin();
}
