import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/datasources/video_post_datasource.dart';
import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) async {
    
    await Future.delayed(const Duration(seconds: 2));

        final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity() 
    ).toList();

    return newVideos;

  }

}