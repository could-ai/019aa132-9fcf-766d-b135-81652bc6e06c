import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/gift_card_model.dart';
import 'package:couldai_user_app/widgets/gift_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GiftCard> _giftCards = [
    GiftCard(name: 'Amazon', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'Google Play', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'iTunes', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'Netflix', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'Steam', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'Xbox', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'PlayStation', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
    GiftCard(name: 'Spotify', imageUrl: 'https://i.imgur.com/b0b0b0b.png', country: 'USA'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gift Card Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _giftCards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GiftCardItem(giftCard: _giftCards[index]);
        },
      ),
    );
  }
}
