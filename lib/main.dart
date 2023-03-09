// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DartProject(),
    );
  }
}

class DartProject extends StatefulWidget {
  const DartProject({super.key});

  @override
  State<DartProject> createState() => _DartProjectState();
}

class _DartProjectState extends State<DartProject> {
  List verses = [
    {
      "Line1": "لا تَشْكُ للناس جُرْحًَا أَنْتَ صَاحِبُهُ",
      "Line2": "لا يُؤْلِمُ الجَرْحُ إلا مَن بِهِ ألَمُ"
    },
    {
      "Line1": "شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "Line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },
    {
      "Line1": "فالهمُّ كالسّيْلِ والأحزان زاخِرَةٌ",
      "Line2": "حُمْرُ الدَّلائلِ مَهْمَا أهْلُها كَتمُوا"
    },
    {
      "Line1": "فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "Line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "Line1": "وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "Line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    {
      "Line1": "هَلِ الْمُوَاسَاةُ يَوْمًا حرَّرَتْ وَطَنا",
      "Line2": "أم التّعازي بَدِيلٌ إنْ هَوَى العَلَمُ"
    },
    {
      "Line1": "مَنْ يُنْدبُ الْحَظَّ يُطْفِئُ عَيْنَ هِمّتِهِ",
      "Line2": "لَا عِينَ لِلَحْظِ إنْ لَمْ تُبصرِ الْهِمَمُ"
    },
    {
      "Line1": "كَمْ خَابَ ظَنّي بِمنِ أهديته ثِقتَي",
      "Line2": "فَأَجْبَرَتْنِي عَلَى هِجْرَانِهِ التُّهَمُ"
    },
    {
      "Line1": "كَمْ صُرْتُ جِسْرًا لمَن أحببتهُ فَمَشَى",
      "Line2": "عَلَى ضُلُوعِي وَكَمْ زَلَّت بِهِ قَدَمُ"
    },
    {
      "Line1": "فَدَاسَ قَلْبي وَكَانَ القَلْبُ مَنْزِلهُ",
      "Line2": "فَمَا وَفَائِي لخِلٍّ مَالَهُ قَيمُ"
    },
  ];

  int index = 0;

  changeIndex(String direction) {
    switch (direction) {
      case "right":
        setState(() {
          if (index == 9) {
            index = 0;
          } else {
            index++;
          }
        });
        break;
      case "left":
        setState(() {
          if (index == 0) {
            index = 9;
          } else {
            index--;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verses[index]["Line1"],
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 30),
            Text(
              verses[index]["Line2"],
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.arrow_left, size: 60),
                    onPressed: () {
                      changeIndex("left");
                    }),
                SizedBox(
                  width: 40,
                ),
                FloatingActionButton(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.arrow_right, size: 60),
                    onPressed: () {
                      changeIndex("right");
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
