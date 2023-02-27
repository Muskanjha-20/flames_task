import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final String text;
  final bool isFirstCard;
  const StoryWidget({
    super.key,
    required this.image,
    required this.text,
    required this.isFirstCard,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.passthrough,
      children: [
        Container(
          height: 140,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: isFirstCard == true
                  ? ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.dstATop)
                  : null,
              image: AssetImage(image),
            ),
          ),
          child: isFirstCard == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text('20',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                )
              : null,
        ),
        Positioned(
          left: 20,
          bottom: -12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(text),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/blue.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
