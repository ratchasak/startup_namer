import '../../../app/base_viewmodel.dart';
import '../../../app/locator.dart';
import '../../../models/post.dart';
import '../../../services/api.dart';

class MvvmViewModel extends BaseViewModel {
  Api _api = locator<Api>();

  List<Post> posts;

  Future getPosts(int userId) async {
    setState(ViewState.Busy);
    posts = await _api.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}
