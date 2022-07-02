import 'package:meta/meta.dart';

@immutable
abstract class AppState {}

class Empty extends AppState {}

class Loading extends AppState {}

class Loaded extends AppState {}

class ThemeLoaded extends AppState {}

class LanguageLoaded extends AppState {}

class ChangeSelectedGovernment extends AppState {}

class UserLoginLoading extends AppState {}

class UserLoginSuccess extends AppState {
  final String token;

  UserLoginSuccess({
    required this.token,
  });
}

class UserLoginError extends AppState {
  final String message;

  UserLoginError({
    required this.message,
  });
}

class GetAllGovernmentsLoading extends AppState {}

class GetAllGovernmentsSuccess extends AppState {}

class GetAllGovernmentsError extends AppState {
  final String message;

  GetAllGovernmentsError({
    required this.message,
  });
}

class UserRegisterLoading extends AppState {}

class UserRegisterSuccess extends AppState {}

class UserRegisterError extends AppState {
  final String message;

  UserRegisterError({
    required this.message,
  });
}

class AllRequestedLoading extends AppState {}

class AllRequestedSuccess extends AppState {}

class AllRequestedError extends AppState {
  final String message;

  AllRequestedError({
    required this.message,
  });
}

class ChangeLoaded extends AppState {}

class PrintRequestPDF extends AppState {}

class BottomChanged extends AppState {}

class PostImagePickedSuccess extends AppState {}

class PostImagePickedError extends AppState {}

class GetUserError extends AppState {
  final String message;

  GetUserError({
    required this.message,
  });
}

class GetUserSuccess extends AppState {}

class GetPostsSuccess extends AppState {}

class GetMessagesSuccess extends AppState {}

class GetUsersSuccess extends AppState {}

class PostUpdatedSuccess extends AppState {}

class PostUpdatedError extends AppState {
  final String message;

  PostUpdatedError({
    required this.message,
  });
}

class SendMessage extends AppState {
  final String message;

  SendMessage({
    required this.message,
  });
}

class CreateChatError extends AppState {
  final String message;

  CreateChatError({
    required this.message,
  });
}

class SocialInitialState extends AppState {}

//get User

class SocialGetUserLoadingState extends AppState {}

class SocialGetUserSuccessState extends AppState {}

class SocialGetUserErrorState extends AppState
{
  final String error;

  SocialGetUserErrorState(this.error);
}

//get Users Chats

class SocialGetAllUserLoadingState extends AppState {}

class SocialGetAllUserSuccessState extends AppState {}

class SocialGetAllUserErrorState extends AppState
{
  final String error;

  SocialGetAllUserErrorState(this.error);
}

//get Posts

class SocialGetPostsUserLoadingState extends AppState {}
class initialState extends AppState{}

class SocialGetPostsUserSuccessState extends AppState {}

class SocialGetPostsUserErrorState extends AppState
{
  final String error;

  SocialGetPostsUserErrorState(this.error);
}


//Like Post

class SocialLikePostsSuccessState extends AppState {}

class SocialLikePostsErrorState extends AppState
{
  final String error;

  SocialLikePostsErrorState(this.error);
}

//comments Post

class SocialCommentPostsSuccessState extends AppState {}

class SocialCommentPostsErrorState extends AppState
{
  final String error;

  SocialCommentPostsErrorState(this.error);
}


//Bottom Nav

class SocialChangeBottomNavState extends AppState {}

//New Post

class SocialNewPostState extends AppState {}

//Pick Profile

class SocialProfileImagePickSuccessState extends AppState {}

class SocialProfileImagePickErrorState extends AppState {}

//Pick Cover


class SocialCoverImagePickSuccessState extends AppState {}


class SocialCoverImagePickErrorState extends AppState {}


//Upload Profile


class SocialUploadProfileImageSuccessState extends AppState {}

class SocialUploadProfileImageErrorState extends AppState {}

//Upload Cover

class SocialUploadCoverImageSuccessState extends AppState {}

class SocialUploadCoverImageErrorState extends AppState {}

//User Update

class SocialUserUpdateLoadingState extends AppState {}

class SocialUserUpdateErrorState extends AppState {}

//Create Post

class SocialCreatePostLoadingState extends AppState {}

class SocialCreatePostSuccessState extends AppState {}

class SocialCreatePostErrorState extends AppState {}

//Chat

class SocialSendMessageSuccessState extends AppState {}

class SocialSendMessageErrorState extends AppState {}

class SocialGetMessagesSuccessState extends AppState {}

class SocialGetMessagesErrorState extends AppState {}

//Comments

class SocialCommentsSuccessState extends AppState {}

class SocialCommentsErrorState extends AppState {}

class SocialGetCommentsSuccessState extends AppState {}

class SocialGetCommentsErrorState extends AppState {}

//pick post image

class SocialPostImagePickSuccessState extends AppState {}

class SocialPostImagePickErrorState extends AppState {}

//remove Post Image

class SocialRemovePostErrorState extends AppState {}




