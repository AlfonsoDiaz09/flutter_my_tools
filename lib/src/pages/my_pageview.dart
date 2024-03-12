
import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        Image(
          fit: BoxFit.fitHeight,
          image: NetworkImage(
            'https://cdn.pixabay.com/photo/2017/08/09/11/11/hot-2614220_960_720.jpg'
          )
        ),
        Image(
          fit: BoxFit.fitHeight,
          image: NetworkImage(
            'https://cdn.pixabay.com/photo/2019/10/18/01/45/city-4558069_960_720.jpg' 
          )
        ),
      ],
    );
  }
}