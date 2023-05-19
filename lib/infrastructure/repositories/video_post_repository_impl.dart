
import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/datasources/video_post_datasource.dart';
import '../../domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) {
    
    return videosDatasource.getTrandingVideosByPage(page);

  }

}