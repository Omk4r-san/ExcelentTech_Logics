List mylist = [];
List<int> number = [1, 2, 12, 121, 5, 18];
String bitNumber = '00110001001110';
List<int> array = [0, 1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10];

///Question 1
///Define an array of numbers (use any random numbers).
///Write a program to print only the even numbers of the array.
///Do not use any library functions, need to do via for loops only

void evenNumbers() {
  for (var i = 0; i < number.length; i++) {
    if (number[i] % 2 == 0) {
      print(number[i]);
    }
  }
}

///Question 2
///Find the maximum consecutive 1's in an array of 0's and 1's.
///Example:
///a) 00110001001110 - Output :3 [Max num of consecutive 1's is 3]
///b) 1000010001 - Output :1 [Max num of consecutive 1's is 1]

void consecutive() {
  var listedBitNumber = bitNumber.split('');
  var count = 0;
  var max = 0;
  for (var i = 0; i < listedBitNumber.length; i++) {
    if (listedBitNumber[i] == '0') {
      count = 0;
    } else {
      count++;
      max = count > max ? count : max;
    }
  }
  print("Max number of consecutive 1's " + max.toString());
}

///Question 3
///Suppose you have an array of 101 integers.
///This array is already sorted and all numbers in this array are consecutive.
///Each number only occurs once in the array except one number which occurs twice.
///Write a js code to find the repeated number.
///e.g $arr = array(0,1,2,3,4,5,6,7,7,8,9,10...................);

void repeating() {
  var repeating;
  var prevNum;
  var nextNum;
  for (var i = 0; i < array.length; i++) {
    for (var j = i + 1; j < array.length; j++) {
      prevNum = array[i];
      nextNum = array[i + 1];
      if (prevNum == nextNum) {
        repeating = prevNum;
      }
    }
  }
  print('Number "$repeating" is repeated 2 times.');
}

/// Question 5
/// Assume there is a object of this format
///It can be a dictionary or java object, as per your language of choice. But its key/value pair dictionary simply.
///Write a code to sort the object by id
///I.e final output should have objected sort by id’s

void sortById() {
  mylist.add(MyClass(5, 'abc'));
  mylist.add(MyClass(10, 'abc2'));
  mylist.add(MyClass(8, 'abc3'));

  /// Sorted by id.
  mylist.sort((a, b) => a.id.compareTo(b.id));
  print('Sort by id: ' + mylist.toString());
}

class MyClass {
  int id;
  String name;

  MyClass(this.id, this.name);

  @override
  String toString() {
    return '{$name,$id}';
  }
}
