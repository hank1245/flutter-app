import 'package:flutter/material.dart';
import 'package:myapp/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  const Episode({super.key, required this.episode, required this.webtoonId});
  final String webtoonId;
  final WebtoonEpisodeModel episode;

  onButtonTap() async {
    await launchUrlString(
        'https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.green.shade500,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(color: Colors.white),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
