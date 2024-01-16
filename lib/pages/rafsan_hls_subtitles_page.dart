import 'package:better_player_hls/better_player_hls.dart';
import 'package:testflutter3/constants.dart';
import 'package:flutter/material.dart';

class RafsanHlsSubtitlesPage extends StatefulWidget {
  @override
  _RafsanHlsSubtitlesPageState createState() => _RafsanHlsSubtitlesPageState();
}

class _RafsanHlsSubtitlesPageState extends State<RafsanHlsSubtitlesPage> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    BetterPlayerControlsConfiguration controlsConfiguration = BetterPlayerControlsConfiguration(
      controlBarColor: Colors.black26,
      iconsColor: Colors.white,
      playIcon: Icons.play_arrow_outlined,
      progressBarPlayedColor: Colors.indigo,
      progressBarHandleColor: Colors.indigo,
      skipBackIcon: Icons.replay_10_outlined,
      skipForwardIcon: Icons.forward_10_outlined,
      backwardSkipTimeInMilliseconds: 10000,
      forwardSkipTimeInMilliseconds: 10000,
      enableSkips: true,
      enableFullscreen: true,
      enablePip: true,
      enablePlayPause: true,
      enableMute: true,
      enableAudioTracks: true,
      enableProgressText: true,
      enableSubtitles: true,
      showControlsOnInitialize: true,
      enablePlaybackSpeed: true,
      controlBarHeight: 40,
      loadingColor: Colors.red,
      overflowModalColor: Colors.black54,
      overflowModalTextColor: Colors.white,
      overflowMenuIconsColor: Colors.white,
    );
    BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
            controlsConfiguration: controlsConfiguration,
            aspectRatio: 16 / 9,
            fit: BoxFit.contain,
            subtitlesConfiguration: BetterPlayerSubtitlesConfiguration(
              fontSize: 16.0,
            ));
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network, Constants.rafsan_playback['hls']!,
        useAsmsSubtitles: true);
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rafsan  HLS "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Player with HLS stream which loads subtitles from HLS."
                " You can choose subtitles by using overflow menu (3 dots in right corner).",
                style: TextStyle(fontSize: 16),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer(controller: _betterPlayerController),
            ),
          ],
        ),
      ),
    );
  }
}
