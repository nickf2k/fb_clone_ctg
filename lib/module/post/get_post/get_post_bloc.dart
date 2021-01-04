import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/post/get_post/get_post_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/user_result.dart';

class GetPostsBloc extends BaseBloc
    implements IGetPostsListener, IGetUserInfoListener {
  UserRepo _userRepo = UserRepo(userService: UserService());
  StreamController _listPostCtrl = new StreamController<ListPostResult>();
  StreamController _listAuthorsCtrl = StreamController<List<User>>();
  PostRepo _postRepo = PostRepo(postService: PostService());

  Stream get postsStream => _listPostCtrl.stream;

  Stream get authorsStream => _listAuthorsCtrl.stream;

  @override
  void dispose() {
    _listPostCtrl.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent) {
      // _postRepo.getListPosts(0, 10, this);
    }
  }

  @override
  void onGetPostFaild(String code) {
    return null;
  }

  @override
  void onGetPostSuccess(ListPostResult listPostResult) {
    _listPostCtrl.sink.add(listPostResult);
    List<int> listAuthorId = [];
    for (Post post in listPostResult.data.posts) {
      listAuthorId.add(post.userId);
    }
    // return _userRepo.getListUserByListId(listAuthorId);
  }

  @override
  onGetInfoFailed(String code) {
    // TODO: implement onGetInfoFailed
    throw UnimplementedError();
  }

  @override
  onGetInfoSuccess(User user) {
    // TODO: implement onGetInfoSuccess
    throw UnimplementedError();
  }
}
