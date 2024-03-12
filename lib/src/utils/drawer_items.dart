
import 'package:flutter/material.dart';
import 'package:flutter_my_tools/src/pages/local_image.dart';
import 'package:flutter_my_tools/src/pages/my_gridview.dart';
import 'package:flutter_my_tools/src/pages/my_pageview.dart';
import 'package:flutter_my_tools/src/pages/my_slider.dart';
import 'package:flutter_my_tools/src/pages/my_stack.dart';
import 'package:flutter_my_tools/src/pages/neon_page.dart';
import 'package:flutter_my_tools/src/widgets/my_drawer.dart';

class DrawerItems {
  List<MyItems> items = [
    MyItems(
      title: 'Imagen Local', 
      icon: Icons.image_aspect_ratio_outlined, 
      subTitle: 'Abrir imagen local',
      route: const LocalImage(),
    ),
    MyItems(
      title: 'Page View',
      icon: Icons.pages_outlined,
      subTitle: 'Vista por página',
      route: const MyPageView()
    ),
    MyItems(
      title: 'Grid View',
      icon: Icons.grid_4x4_outlined,
      subTitle: 'Vista por cuadros',
      route: const MyGridView()
    ),
    MyItems(
      title: 'Slider',
      icon: Icons.circle,
      subTitle: 'Arrastrar',
      route: const MySlider()
    ),
    MyItems(
      title: 'Stack',
      icon: Icons.satellite,
      subTitle: 'Arrastrar',
      route: const MyStack()
    ),
    MyItems(
      title: 'Neon Text',
      icon: Icons.text_fields_outlined,
      subTitle: 'Texto retro',
      route: const NeonPage()
    ),
  ];
}