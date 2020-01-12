class ValidateMixin{
  String validateEmail(String value){
        if(!value.contains('@')){
          return 'Enter valid email';
        }
        return null;
  }
  String validatePassword(String value){
        if(value.length < 4){
          return 'Password must be at least 4 characters';
        }
        return null;
  }
}