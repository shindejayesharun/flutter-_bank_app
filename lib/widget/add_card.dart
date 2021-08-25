import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            "Your Card Number",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 2,
            child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) => index + 1)
              .map((e) => Center(
                    child: Text(
                      e.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.white),
                    ),
                  ))
              .toList(),
        )),
        Flexible(
            child: ConstrainedBox(
          constraints: BoxConstraints.tight(
            const Size(double.infinity, 60),
          ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF000022),
                ),
                child: Text("Add Card",style: TextStyle(fontSize: 25),),
                onPressed: (){},
              ),
        ))
      ],
    );
  }
}
