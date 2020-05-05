class Compute {
  static String str = '0';

  static void add(String val) {
    if (val.compareTo('0') == 0) {
      str = val;
    } else {
      str += val;
    }
  }

  static void clean(){
    str = '0';
  }

  static void delete(){
    if(str.compareTo('0') != 0){
      String tmp = str.substring(0,str.length-1);
      tmp == '' ? str = '0' : str = tmp;
    }
  }
}
