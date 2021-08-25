import 'package:flutter/material.dart';
import '../constants.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.bankCard,
  }) : super(key: key);

  final BankCardModel bankCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Constants.padding,
      ),
      padding: const EdgeInsets.all(Constants.padding * 2),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bankCard.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          Constants.radius,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  bankCard.icon,
                  height: Constants.padding * 3,
                  width: Constants.padding * 3,
                ),
              ),
              Text(
                bankCard.number,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
          Text(
            "\$${bankCard.balance.toStringAsFixed(2)}",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class BankCardModel {
  String image;
  String icon;
  String number;
  double balance;
  List<ExpenseModel> expenses;

  BankCardModel({
    required this.image,
    required this.icon,
    required this.number,
    required this.balance,
    this.expenses = const [],
  });
}

class ExpenseModel {
  String image;
  String title;
  String description;
  double amount;

  ExpenseModel({
    required this.image,
    required this.title,
    required this.description,
    required this.amount,
  });
}

final cards = [
  null,
  BankCardModel(
    image: 'assets/bg_2.jpeg',
    icon: 'assets/icon_2.jpeg',
    number: "0912",
    balance: 345.00,
    expenses: [
      ExpenseModel(
          image: 'assets/quinielapro.png',
          title: "Quiniela PRO",
          description: "100 Créditos",
          amount: 89)
    ],
  ),
  BankCardModel(
    image: 'assets/bg_1.jpeg',
    icon: 'assets/icon_1.png',
    number: "0912",
    balance: 123.00,
    expenses: [
      ExpenseModel(
        image: 'assets/amazon.png',
        title: "Amazon",
        description: "Retail Svcs MX",
        amount: 99,
      )
    ],
  ),
  BankCardModel(
    image: 'assets/bg_3.jpeg',
    icon: 'assets/icon_3.png',
    number: "8743",
    balance: 789.00,
    expenses: [
      ExpenseModel(
        image: 'assets/netflix.png',
        title: "Netflix",
        description: "Subscription",
        amount: 186,
      )
    ],
  ),
];

// bg_1 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
// bg_2 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink