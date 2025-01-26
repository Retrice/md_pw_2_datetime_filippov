import 'dart:math';

void task_1(){
  var localDate = DateTime.now().copyWith(hour:  0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  var localTime = DateTime.now().copyWith(year: 0, month: 0, day: 0);
  
  // date output in the format dd-MM-yyyy
  print("Date now is '${localDate.day}-${localDate.month}-${localDate.year}'");
  // time output in the format HH:mm:ss
  print("Time now is '${localTime.hour}-${localTime.minute}-${localTime.second}'");
}

void task_2(DateTime _date1, DateTime _date2){
  DateTime date1 = _date1.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  DateTime date2 = _date2.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);

  switch(date1.compareTo(date2)){
    case 1:{
      print("first date comes after second date");
    }
    case -1:{
      print("first date comes before second date");
    }
    case 0:{
      print("first date equal second date");
    }
  }
}

void task_3(DateTime time){
  int daysUntillNewYear = 0;
  if(time.year % 4 == 0) daysUntillNewYear += 1;
  daysUntillNewYear = 365 - time.day;

  print("There are $daysUntillNewYear days until the new year");
}

bool task_4(int year){
  if(year%4 == 0) return true;
  return false;
}

int task_5( month, int year){
  DateTime date = DateTime(year, month);
  int daysInMonth = date.difference(DateTime(year, month+1)).inDays;
  int weekendCount = 0;

  for(int day = 1; day <= daysInMonth; day++){
    date = date.copyWith(day: day);
    if(date.day == DateTime.saturday || date.day == DateTime.sunday) weekendCount++;
  }
  return weekendCount;
}

void task_6(Function func){
  DateTime startTime = DateTime.now();
  func();
  DateTime finishTime = DateTime.now();
  print("The execution time of the function equal ${finishTime.difference(startTime).inMilliseconds} milliseconds");
}

void task_7(String _date){
  List<String> numbers =_date.split('-');
  int day = int.parse(numbers[0]);
  int month = int.parse(numbers[1]);
  int year = int.parse(numbers[2]);
  DateTime date = DateTime(year, month, day).add(Duration(days: 10));
  print("Date = ${date.year}/${date.month}/${date.day}");
}

void task_8(DateTime time){
  DateTime timeUtc3 = time.add(Duration(hours: 3));
  print("Time in UTC+3: $timeUtc3");
}

int task_9(DateTime dateOfBirth){
  DateTime curTime = DateTime.now();
  if(curTime.day < dateOfBirth.day){
    return dateOfBirth.year - curTime.year - 1;
  }
  return dateOfBirth.year - curTime.year;
}

void task_10(int month, int year){
  DateTime date = DateTime(year, month);
  int daysInMonth = date.difference(DateTime(year, month+1)).inDays;

  for(int day = 1; day <= daysInMonth; day++){
    date = date.copyWith(day: day);
    if(date.weekday == DateTime.saturday || date.weekday == DateTime.sunday) {
      print("weekend : $date");
    }
  }
}

void task_11(DateTime date1, DateTime date2){
  if(date1.isAfter(date2) == true) {
    print("first date comes after second fate");
    return;
  } 

  var random = Random();
  var dateInRange = DateTime(date1.year, date1.month, random.nextInt(date1.difference(date2).inDays));
  print("New date is range = $dateInRange");
}

void task_12(DateTime time){
  DateTime nowTime = DateTime.now();
  if(time.isBefore(nowTime) == true){
    print("your date comes before current date");
    return;
  }
  int secondDiffrence = nowTime.difference(time).inSeconds;
  print("${secondDiffrence~/3600} hours, ${secondDiffrence~/60} minutes, $secondDiffrence seconds");
}

int task_13(DateTime startTime, DateTime finishTime) {
  if(finishTime.isBefore(startTime)) {
    throw Exception("finish time comes after start time");
  }
  return finishTime.difference(startTime).inHours;
}

void task_14(DateTime time){
  print("${time.timeZoneName} time");
}

String task_15(DateTime date){
  switch(date.weekday){
    case DateTime.monday: return "понедельник";
    case DateTime.tuesday: return "вторник";
    case DateTime.wednesday: return "среда";
    case DateTime.thursday: return "четверг";
    case DateTime.friday: return "пятница";
    case DateTime.saturday: return "суббота";
    case DateTime.sunday: return "воскресенье";
  }
  return "Пространство-время было повреждено";
}


