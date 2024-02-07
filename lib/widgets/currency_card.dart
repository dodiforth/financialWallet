import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, amount, code;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xff1B1F25);
  final _whiteColor = const Color(0xffFAFAFA);

  const CurrencyCard({
    super.key,
    required this.currencyName,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? _whiteColor : _blackColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currencyName,
                    style: TextStyle(
                        color: isInverted ? _blackColor : _whiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : _whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : _whiteColor.withOpacity(0.6),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(
                    icon,
                    size: 88,
                    color:
                        isInverted ? _blackColor : _whiteColor.withOpacity(0.6),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
