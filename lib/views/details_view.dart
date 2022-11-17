import 'package:flutter/material.dart';
import '../constant.dart';


class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  _buildAppBar({required BuildContext context}) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
              )),
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context: context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: getScreenSize(context: context).height * .1,
            ),
            Image.asset(
              'assets/book0.png',
              width: getScreenSize(context: context).width * .6,
              height: getScreenSize(context: context).height * .3,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: getScreenSize(context: context).height * .05,
            ),
            const Text(
              'The Junle Book',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: getScreenSize(context: context).height * .01,
            ),
            const Text(
              'udyard Kipling',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            SizedBox(
              height: getScreenSize(context: context).height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '(233.2)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: getScreenSize(context: context).height * .03,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'You can also like',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: getScreenSize(context: context).height * .02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  ),
                ),
                itemCount: images.length,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
