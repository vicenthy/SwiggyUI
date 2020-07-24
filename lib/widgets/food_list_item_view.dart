import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class FoodListItemView extends StatelessWidget {
  final SpotlightBestTopFood restaurant;

  const FoodListItemView({
    Key key,
    @required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Image.asset(
              restaurant.image,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
          ),
          UIHelper.horizontalSpaceSmall(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                restaurant.name,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 18.0),
              ),
              Text(restaurant.desc,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey[800], fontSize: 13.5)),
              UIHelper.verticalSpaceSmall(),
              Text(
                restaurant.coupon,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.red[900], fontSize: 13.0),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Divider(),
              UIHelper.verticalSpaceExtraSmall(),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 14.0,
                    color: Colors.grey[600],
                  ),
                  Text(restaurant.ratingTimePrice)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
