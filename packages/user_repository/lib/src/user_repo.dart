//todo metodo que vai aqui, deve ser implementado no bloc 
import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
   Stream <MyUser?> get user; //checa autenticaçao do usuario

   Future<MyUser?> signUp(MyUser myUser, String password); //cria usuario

   Future<void> setUserData(MyUser user); //seta dados do usuario

   Future<void> signIn(String email, String password); //loga usuario

   Future<void> logOut(); //desloga usuario
}