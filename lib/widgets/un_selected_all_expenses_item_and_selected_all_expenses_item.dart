import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/imageAssets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/my_border_container.dart';

class UnSelectedAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel model;
  final bool isSelected;
  const UnSelectedAllExpensesItem({
    super.key,
    required this.model,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return MyBorderContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 60),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xffFAFAFA),
                    child: SvgPicture.asset(model.assetImage),
                  ),
                ),
              ),
            ),
            const Spacer(),
            SvgPicture.asset(Assets.imagesArrowRight),
          ],
        ),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.title,
            style: Styles.semiBold16(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.subtitle,
            style: Styles.regular14(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.amount,
            style: Styles.semiBold24(context),
          ),
        ),
      ],
    ));
  }
}

class SelectedAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel model;
  final bool isSelected;
  const SelectedAllExpensesItem({
    super.key,
    required this.model,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return MyBorderContainer(
        color: const Color(0xff4EB7F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 60),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white10,
                        child: SvgPicture.asset(
                          model.assetImage,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  Assets.imagesArrowRight,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(model.title,
                  style:
                      Styles.semiBold16(context).copyWith(color: Colors.white)),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(model.subtitle,
                  style: Styles.regular14(context)
                      .copyWith(color: const Color(0xffFAFAFA))),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.amount,
                style: Styles.semiBold24(context).copyWith(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
