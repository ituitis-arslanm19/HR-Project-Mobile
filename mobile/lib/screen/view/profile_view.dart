// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile/core/network/network_manager.dart';
import 'package:mobile/core/widgets/other/profile_card.dart';
import 'package:mobile/screen/service/profile_service.dart';
import 'package:mobile/screen/viewModel/profile_view_model.dart';

import '../../core/util/size_config.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  ProfileViewModel profileViewModel =
      ProfileViewModel(ProfileService(networkManager: NetworkManager()));
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme colorScheme = theme.colorScheme;
    SizeConfig().init(context);
    profileViewModel.init();

    return Column(
      children: [
        Expanded(
          flex: 3,
          child: buildProfileImage(colorScheme, theme),
        ),
        Expanded(
          flex: 5,
          child: buildProfileInfos(),
        ),
      ],
    );
  }

  Padding buildProfileInfos() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ProfileCard(
            tittle: "Departman",
            value: "Yazılım",
          ),
          ProfileCard(
            tittle: "Pozisyon",
            value: "Takım Lideri",
          ),
          ProfileCard(
            tittle: "Numara",
            value: "+90 555 444 33 22",
          ),
          ProfileCard(
            tittle: "Çalışma Saatleri",
            value: "09.00 - 19.00",
          ),
        ],
      ),
    );
  }

  Container buildProfileImage(ColorScheme colorScheme, ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildCircularImage(colorScheme),
            buildName(theme),
            buildEmail(theme)
          ],
        ),
      ),
    );
  }

  Text buildEmail(ThemeData theme) {
    return Text(
      "mehmetak@company.com",
      style: theme.textTheme.bodySmall!.copyWith(color: Colors.grey),
    );
  }

  Padding buildName(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Mehmet Ak",
        style: theme.textTheme.headlineMedium,
      ),
    );
  }

  Container buildCircularImage(ColorScheme colorScheme) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.primary,
          border: Border.all(color: colorScheme.primary, width: 3)),
      child: CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/200/200"),
        radius: SizeConfig.blockSizeHorizontal * 20,
      ),
    );
  }
}
