import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text("Add new Address")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                  decoration:  InputDecoration(
                      labelStyle: Theme.of(context).textTheme.titleSmall,
                      floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                      prefixIcon: const Icon(Iconsax.user), labelText: 'Name')),
              const SizedBox(height: TSize.spaceBtwInputFields),
              TextFormField(
                  decoration:  InputDecoration(
                      floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                      labelStyle: Theme.of(context).textTheme.titleSmall,
                      prefixIcon: const Icon(Iconsax.mobile),
                      labelText: 'Phone Number')),
              const SizedBox(height: TSize.spaceBtwInputFields),
              Row(
              mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration:  InputDecoration(
                            floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                          labelStyle: Theme.of(context).textTheme.titleSmall,
                            prefixIcon: const Icon(Iconsax.building_31),
                            labelText: 'Street')),
                  ),
                   const SizedBox(width: TSize.spaceBtwInputFields,),
                   Expanded(
                     child: TextFormField(
                        decoration:  InputDecoration(
                            floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                            labelStyle: Theme.of(context).textTheme.titleSmall,
                            prefixIcon: const Icon(Iconsax.code),
                            labelText: 'Postal Code')),
                   ),
                ],
              )  , const SizedBox(height: TSize.spaceBtwInputFields),
              Row(
              mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration:  InputDecoration(
                            floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                          labelStyle: Theme.of(context).textTheme.titleSmall,
                            prefixIcon: const Icon(Iconsax.building),
                            labelText: 'City')),
                  ),
                   const SizedBox(width: TSize.spaceBtwInputFields,),
                   Expanded(
                     child: TextFormField(
                        decoration:  InputDecoration(
                            floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                            labelStyle: Theme.of(context).textTheme.titleSmall,
                            prefixIcon: const Icon(Iconsax.activity),
                            labelText: 'State')),
                   ),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              TextFormField(
                  decoration:  InputDecoration(
                      floatingLabelStyle: Theme.of(context).textTheme.titleSmall,
                    labelStyle: Theme.of(context).textTheme.titleSmall,
                      prefixIcon: const Icon(Iconsax.global),
                      labelText: 'Country')),
               const SizedBox(height: TSize.defaultSpace,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text("Save"),),)
            ]
          )),
        ),
      ),
    );
  }
}
