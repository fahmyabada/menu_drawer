library plugin_menu;

import 'package:flutter/material.dart';
import 'package:menu_drawer/image_tools.dart';

class Menu extends StatelessWidget {
  // with menu
  final double width;

  // all attribute DrawerHeader
  final Color? colorDrawerHeader;
  final double? heightDrawerHeader;
  final double? widthDrawerHeader;
  final String? urlImageDrawerHeader;

  // space between image and title in DrawerHeader
  final double? spaceDrawerHeader;
  final String? titleDrawerHeader;
  final Color? colorTitleDrawerHeader;
  final double? fontSizeTitleDrawerHeader;
  final String? subTitleDrawerHeader;
  final Color? colorSubTitleDrawerHeader;
  final double? fontSizeSubTitleDrawerHeader;

  // group of widget you want show ex: about page - privacyPolicy page ..
  final List<Widget> item;

  // all attribute PoweredBy
  final String? namePoweredBy;
  final Color? colorPoweredBy;
  final double? fontSizePoweredBy;

  // space between Name of PoweredBy and Image PoweredBy
  final double? heightNameImagePoweredBy;
  final GestureTapCallback? pressImagePoweredBy;
  final String? urlImagePoweredBy;
  final double? heightImagePoweredBy;
  final double? widthImagePoweredBy;

  // all attribute Version
  final double? heightImageVersion;
  final String? nameVersion;
  final String? valueVersion;
  final Color? colorVersion;
  final double? fontSizeVersion;

  const Menu({
    super.key,
    required this.titleDrawerHeader,
    required this.item,
    this.width = 320.0,
    this.colorDrawerHeader = Colors.blue,
    this.heightDrawerHeader = 70.0,
    this.widthDrawerHeader = 70.0,
    this.urlImageDrawerHeader,
    this.spaceDrawerHeader = 15.0,
    this.colorTitleDrawerHeader = Colors.white,
    this.fontSizeTitleDrawerHeader = 20.0,
    this.subTitleDrawerHeader = "",
    this.colorSubTitleDrawerHeader = Colors.white,
    this.fontSizeSubTitleDrawerHeader = 20.0,
    this.namePoweredBy = 'PoweredBy',
    this.colorPoweredBy = Colors.blue,
    this.fontSizePoweredBy = 17.0,
    this.heightNameImagePoweredBy = 5,
    this.pressImagePoweredBy,
    this.urlImagePoweredBy = "assets/logoCompany.png",
    this.heightImagePoweredBy = 40.0,
    this.widthImagePoweredBy = 150.0,
    this.heightImageVersion = 10.0,
    this.nameVersion = 'Version',
    this.valueVersion = "1.0",
    this.colorVersion = Colors.blue,
    this.fontSizeVersion = 17.0,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: width,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DrawerHeader(
              decoration: BoxDecoration(color: colorDrawerHeader),
              child: Row(
                children: [
                  SizedBox(
                    height: heightDrawerHeader,
                    width: widthDrawerHeader,
                    child: ClipOval(
                      child: ImageTools.image(
                        fit: BoxFit.fill,
                        url: urlImageDrawerHeader ?? "",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: spaceDrawerHeader,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          titleDrawerHeader ?? "",
                          maxLines: 1,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: colorTitleDrawerHeader,
                              fontSize: fontSizeTitleDrawerHeader,
                              fontWeight: FontWeight.bold),
                        ),
                        subTitleDrawerHeader!.isNotEmpty
                            ? Text(
                                subTitleDrawerHeader ?? "",
                                maxLines: 2,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: colorSubTitleDrawerHeader,
                                  fontSize: fontSizeSubTitleDrawerHeader,
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          item.isNotEmpty
              ? SliverList.list(
                  children: item,
                )
              : SliverToBoxAdapter(
                  child: Container(),
                ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  namePoweredBy ?? 'PoweredBy',
                  style: TextStyle(
                    color: colorPoweredBy,
                    fontSize: fontSizePoweredBy,
                  ),
                ),
                SizedBox(
                  height: heightNameImagePoweredBy,
                ),
                InkWell(
                  onTap: pressImagePoweredBy,
                  child: ImageTools.image(
                    fit: BoxFit.contain,
                    url: urlImagePoweredBy,
                    width: widthImagePoweredBy,
                    height: heightImagePoweredBy,
                  ),
                ),
                SizedBox(
                  height: heightImageVersion,
                ),
                Text(
                  '$nameVersion $valueVersion',
                  style: TextStyle(
                    color: colorVersion,
                    fontSize: fontSizeVersion,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
