import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({
    super.key,
    required this.image,
    required this.title,
    required this.centered,
    required this.isShareIon,
    required this.onPressed,
  });

  final String image;
  final String title;
  final bool centered;
  final bool isShareIon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff3E9C8F),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(),
                ),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: centered
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: isShareIon
                          ? const Icon(
                              Icons.share,
                              color: Colors.white,
                            )
                          : SvgPicture.asset(
                              image,
                              height: screenWidth * 0.08,
                              width: screenWidth * 0.08,
                            ),
                    ),
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
