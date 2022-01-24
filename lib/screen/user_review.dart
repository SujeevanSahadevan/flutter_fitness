import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class UserReview extends StatefulWidget {
  const UserReview({Key? key}) : super(key: key);

  @override
  _UserReviewState createState() => _UserReviewState();
}

class _UserReviewState extends State<UserReview> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(title: const Text('User Review')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating $rating',
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              minRating: 1,
              itemSize: 40,
              unratedColor: Colors.white,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: Colors.amber),
              updateOnDrag: true,
              onRatingUpdate: (rating) => setState(() {
                this.rating = rating;
              }),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: MediaQuery.of(context).size.height - 550,
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.grey.withOpacity(0.1),
            //   child: const Text(
            //     "User Name",
            //     style: TextStyle(fontSize: 23),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
