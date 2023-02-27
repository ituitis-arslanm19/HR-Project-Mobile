import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/theme/app_theme.dart';
import 'package:mobile/core/util/size_config.dart';
import 'package:mobile/core/widgets/other/button.dart';
import 'package:mobile/core/widgets/other/input_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    SizeConfig().init(context);
    ThemeData theme = Theme.of(context);
    ColorScheme colorScheme = theme.colorScheme;
    return DefaultTabController(
      length: 2,
      child: Container(
        color: colorScheme.background,
        child: Column(
          children: [
            buildTittle(theme, colorScheme),
            buildTabBar(colorScheme, theme),
            buildTabViews(textController, theme)
          ],
        ),
      ),
    );
  }

  SizedBox buildTabViews(
      TextEditingController textController, ThemeData theme) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * 50,
      width: SizeConfig.blockSizeHorizontal * 90,
      child: TabBarView(children: [
        buildLoginView(textController, theme),
        buildRegisterView(textController, theme)
      ]),
    );
  }

  Container buildTabBar(ColorScheme colorScheme, ThemeData theme) {
    return Container(
      height: SizeConfig.blockSizeVertical * 10,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TabBar(
            labelColor: colorScheme.primary,
            labelStyle: theme.textTheme.headlineMedium,
            indicatorColor: Colors.transparent,
            tabs: [
              const Tab(text: "Giriş Yap"),
              const Tab(text: "Kayıt Ol"),
            ]),
      ),
    );
  }

  Container buildTittle(ThemeData theme, ColorScheme colorScheme) {
    return Container(
      height: SizeConfig.blockSizeVertical * 30,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          "Hoşgeldiniz !",
          style: theme.textTheme.headlineLarge!
              .copyWith(color: colorScheme.primary),
        ),
      ),
    );
  }

  Padding buildRegisterView(
      TextEditingController textController, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 44,
                child: InputText(
                  textEditingController: textController,
                  hintText: "Ad",
                  icon: const Icon(Icons.person),
                ),
              ),
              VerticalDivider(
                width: SizeConfig.blockSizeHorizontal * 2,
                thickness: 2,
                color: theme.colorScheme.primary,
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 44,
                child: InputText(
                  textEditingController: textController,
                  hintText: "Soyad",
                  icon: const Icon(Icons.label_important),
                ),
              ),
            ],
          ),
          InputText(
            textEditingController: textController,
            icon: const Icon(Icons.email),
            hintText: "Email",
          ),
          InputText(
            textEditingController: textController,
            icon: const Icon(Icons.key),
            hintText: "Şifre",
          ),
          InputText(
            textEditingController: textController,
            icon: const Icon(Icons.repeat),
            hintText: "Şifre Tekrarı",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
              width: SizeConfig.blockSizeHorizontal * 90,
              child: Button(onPressed: () {}, text: "KAYIT OL"),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildLoginView(
      TextEditingController textController, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          InputText(
            textEditingController: textController,
            icon: const Icon(Icons.email),
            hintText: "Email",
          ),
          InputText(
            textEditingController: textController,
            icon: const Icon(Icons.key),
            hintText: "Şifre",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
              width: SizeConfig.blockSizeHorizontal * 90,
              child: Button(onPressed: () {}, text: "GİRİŞ YAP"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: RichText(
                text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Şifremi Unuttum ',
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: Colors.blue)),
              ],
            )),
          )
        ],
      ),
    );
  }
}
