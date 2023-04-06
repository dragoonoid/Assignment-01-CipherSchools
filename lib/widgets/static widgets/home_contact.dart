import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

class HomeContact extends StatelessWidget {
  const HomeContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: black,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 15, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Join our community',
                style: textStyleWhite1,
              ),
              Row(
                children: [
                  const Text(
                    'on  ',
                    style: textStyleWhite1,
                  ),
                  Icon(
                    Icons.discord,
                    color: Colors.deepPurple[400],
                  ),
                  Text('  Discord',
                      style: textStyleWhite1.copyWith(
                          color: Colors.deepPurple[400])),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Come together and make a difference! Join our community for an interactive learning experience!',
                style: textStyleWhite2,
                maxLines: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(mainAxisSize: MainAxisSize.min, children: const [
                  Text(
                    'Join Discord',
                    style: textStyleWhite2,
                  ),
                  Icon(
                    Icons.discord,
                    color: Colors.white,
                  ),
                ]),
              ),
              const Image(
                image: NetworkImage(
                    'https://ik.imagekit.io/cipherschools/CipherSchools/discord-screenshot_ae01xzCLS.png'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Image.asset(
            height: size.height * 0.1,
            width: size.width * 0.2,
            'assets/app_logo.png'),
        const Text(
          'Cipherschools is a bootstrapped educational video streaming platform in India that is connecting passionate unskilled students to skilled Industry experts to fulfill their career dreams.',
          style: textStyleBlack3,
          maxLines: 10,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            Icon(Icons.mail_outline),
            SizedBox(
              width: 10,
            ),
            Text(
              'support@cipherschools.com',
              maxLines: 1,
              style: textStyleBlack3,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return Text(
                        'Popular Courses',
                        style: textStyleBlack2.copyWith(
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      );
                    }
                    return Text(
                      popularCourses[i - 1],
                      style: textStyleBlack3,
                      maxLines: 1,
                    );
                  },
                  itemCount: popularCourses.length + 1,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return Text(//TODO Auto Text
                        'Company Info',
                        style: textStyleBlack2.copyWith(
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      );
                    }
                    return Text( // TODO
                      companyInfo[i - 1],
                      style: textStyleBlack3,
                      maxLines: 1,
                    );
                  },
                  itemCount: companyInfo.length + 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: grey),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '© 2020 CipherSchools • All Rights Reserved ',
                style: textStyleBlack3,
                maxLines: 2,
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  separatorBuilder: ((context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  }),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    return Icon(icon[i]);
                  },
                  itemCount: icon.length,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
