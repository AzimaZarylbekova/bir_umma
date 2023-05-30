
import 'package:bir_umma/modules/zikir/view/zikir_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class TasbixView extends StatelessWidget {
 const TasbixView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZikirView'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 30),
                      child: SvgPicture.asset('assets/icons/Тизме.svg'),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                    height: 10,
                  ),
                  const Text(
                    '\n\nلا اله الا أنت سبحانك اني كنت من الظالمين \n\n Ля иляха илля Анта! Субханака, \n инни кунту мина-з-залимин! ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 30),
                    child: SvgPicture.asset('assets/icons/Кубок.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Нет Бога достойного поклонения,\n кроме Тебя, Пречист Ты, поистине, \nя был одним из несправедливых',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              Container(
                height: 350,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/Group.png'),
                  ),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/Бусинка.svg'),
                    SvgPicture.asset('assets/icons/Бусинка.svg'),
                    SvgPicture.asset('assets/icons/Бусинка.svg'),
                    SvgPicture.asset('assets/icons/Бусинка.svg'),
                    const SizedBox(
                      height: 75,
                    ),
                    SvgPicture.asset('assets/icons/Бусинка.svg'),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 280, 0),
                  child: ButtonIcon(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
  });


@override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        elevation: 0.0,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SvgPicture.asset('assets/icons/Тесме.svg'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ZikirView(),
                    ),
                  );
                },
              ),
              PopupMenuItem(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SvgPicture.asset('assets/icons/Color.svg'),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 90),
                child: SvgPicture.asset('assets/icons/Звук.svg'),
              ),
            ],
        child: SvgPicture.asset('assets/icons/1.svg'));
  }
}