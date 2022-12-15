// import 'dart:ffi';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import '../models/CODE.dart';

// class YoutubePlayer extends StatefulWidget {
//   const YoutubePlayer({super.key});

//   @override
//   State<YoutubePlayer> createState() => _YoutubePlayerState();
// }

// class _YoutubePlayerState extends State<YoutubePlayer> {
//   late YoutubePlayerController controller;
//   @override
//   void initState() {
//     super.initState();
//     const url = "https://youtu.be/N-ntKJdVNBs";

//     controller = YoutubePlayerController(
//         initialVideoId: YoutubePlayer.convertURlToId(url)!);
//   }

//   @override
//   void deactivate() {
//     controller.pause();

//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => YoutubePlayerBuilder(
//       player: YoutubePlayer(controller: controller),
//       builder: (context, player) => Scaffold(
//             appBar: AppBar(title: const Text("Youtube Player")),
//             body: ListView(
//               children: [player],
//             ),
//           ));
// }
