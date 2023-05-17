import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ZikirView extends StatefulWidget {
  const ZikirView({Key? key}) : super(key: key);

  @override
  State<ZikirView> createState() => _ZikirViewState();
}

class _ZikirViewState extends State<ZikirView> {
  int san = 0;

  void koshuu() {
    setState(() {
      san++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZikirView'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/tasbix.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icons/Тизме.svg')),
                  const SizedBox(
                    width: 240,
                  ),
                  SvgPicture.asset('assets/icons/Кубок.svg'),
                ],
              ),
            ),
            Column(
              children: const [
                Text(
                  'لَا إِلَٰهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ',
                  style: TextStyle(fontSize: 17),
                ),
                ListTile(
                  title: Text(
                    "Ля иляха илля Анта! Субханака, инни кунту мина-з-залимин!",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Text(
                    'Нет Бога достайного поклонения, кроме Тебя, Пречить Ты, поистине, я был одним из несправедливых',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 104,
              height: 51,
              decoration: const BoxDecoration(
                color: Color(0xff33CB31),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  '$san',
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ]),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  san = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(117, 9, 20, 0),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: const Color(0xffD0D0D0),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
              width: 40,
            ),
            InkWell(
              onTap: koshuu,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 45, 0),
                child: Container(
                  height: 76,
                  width: 75,
                  decoration: BoxDecoration(
                      color: const Color(0xffD0D0D0),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/1.svg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
