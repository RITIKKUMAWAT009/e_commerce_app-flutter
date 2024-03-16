class TPricingCalculator{
  static double calculateTotalPrice(double productPrince,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrince*taxRate;
    double shippingCost=getShippingCost(location);
    double totalPrice=productPrince+taxAmount+shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice,String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice*taxRate;
    return taxAmount.toStringAsFixed(2);
  }


  static double getShippingCost(String location) {
    //example
    return 5.00;
  }

  static double getTaxRateForLocation(String location) {
    //example
    return 0.10;
  }

}