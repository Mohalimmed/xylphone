import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
void playSound(int soundNum)async{
  final audioCache = AudioCache();
  final uri = await audioCache.load('note$soundNum.wav');
  final player = AudioPlayer();
  await player.play(DeviceFileSource(uri.path));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildExpanded(Colors.red,1),
            buildExpanded(Colors.orange,2),
            buildExpanded(Colors.yellow,3),
            buildExpanded(Colors.green,4),
            buildExpanded(Colors.teal,5),
            buildExpanded(Colors.blueGrey,6),
            buildExpanded(Colors.purple,7),
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded(Color color,int soundNum) {

    return Expanded(
            child: GestureDetector(
              onTap: ()  {
                playSound(soundNum);
              },
              child: Container(
                color: color,
              )),
          );
  }
}
