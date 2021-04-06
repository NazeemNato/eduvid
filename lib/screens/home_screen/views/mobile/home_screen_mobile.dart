import 'package:eduvid/provider/provider.dart';
import 'package:eduvid/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreenMobile extends HookWidget {
  const HomeScreenMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final home = useProvider(homeScreenProivder);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Eduvid'),
      ),
      body: SingleChildScrollView(
        child: home.when(
          data: (data) {
            var videos = data.videos;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Wrap(
                children: [
                  for (final video in videos)
                    Container(
                        margin: const EdgeInsets.all(4.0),
                      child: VideoCard(
                        video: video,
                      ),
                    ),
                ],
              ),
            );
          },
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          error: (e, _) => Text('$e'),
        ),
      ),
    );
  }
}
