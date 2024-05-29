class TValidator{

  static String? validateEmptyText(String fieldName,String? value){
    if(value==null||value.isEmpty){
      return '$fieldName is required';
    }
    return null;}
  static String? validateEmail(String? value){
    if(value==null||value.isEmpty){
      return 'Email is required';
    }
    final emailRegExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value==null|| value.isEmpty){
      return 'Password is required';
    }
    if(value.length<6){
      return 'Password must be at least 6 characters long';
    }
    //check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one Uppercase letter';
    }
    if(!value.contains(RegExp(r'[1-9]'))){
      return 'Password must contain at least one number';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value){
    if(value==null|| value.isEmpty){
      return 'Phone number is required';
    }
    final phoneRegExp=RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required)';
    }
    return null;
  }
}