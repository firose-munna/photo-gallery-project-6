import 'package:flutter/material.dart';

class ImgGrid extends StatelessWidget {
  const ImgGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mySnackBar(message, context) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    return Stack(
      children: [
        ElevatedButton(
          onPressed: () {mySnackBar("Clicked on photo!", context);},
          style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
          child: Image.network(
            "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/6523ec68eb8285e2c5dad7c4346f2d71-1664047962397/fdbf11ca-9d24-484c-b612-314d7263dbeb.jpg",
            height: 120,
            width: 120,

          ),

        ),
        Positioned(
          bottom: 0,
          left: 25,
          child: GestureDetector(
            onTap: (){mySnackBar("Clicked on photo!", context);},
            child: Container(
              padding: EdgeInsets.all(6),
              height: 32,
              width: 70,
              color: Colors.black38,
              child: Text(
                "Caption",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),

              /*Text(
                        "Caption",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),*/
            ),
          ),
        ),
      ],
    );
  }
}
