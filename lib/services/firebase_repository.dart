import 'package:chatroom/models/message.dart';
import 'package:chatroom/services/firebase_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatroom/models/user.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentUser();

  Future<FirebaseUser> signIn() => _firebaseMethods.signIn();

  Future<bool> authenticateUser(FirebaseUser user) =>
      _firebaseMethods.authenticateUser(user);

  Future<void> addDataToDb(FirebaseUser user) =>
      _firebaseMethods.addDataToDb(user);

  ///responsible for signing out
  Future<void> signOut() => _firebaseMethods.signOut();

  Future<List<User>> fetchAllUsers(FirebaseUser user) =>
      _firebaseMethods.fetchAllUsers(user);

  void addMessageToDb(Message message, User sender, User receiver) {
    _firebaseMethods.addMessageToDb(message, sender, receiver);
  }
}
