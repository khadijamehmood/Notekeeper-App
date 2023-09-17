class Record {
   int _id = 0;
  late String _title;
  late String _note;
  late String _date;
  late int _priority;

  Record(
    this._title,
    this._note,
    this._date,
    this._priority,
  );

  Record.withId(
    this._id,
    this._title,
    this._note,
    this._date,
    this._priority,
  );

  int get id => _id;

  setId(id){
    this._id = id;
  }
  String get title => _title;

  String get note => _note;

  int get priority => _priority;

  String get date => _date;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set note(String newnote) {
    if (newnote.length <= 255) {
      this._note = newnote;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null && id != 0) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['note'] = _note;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  // Extract a Record object from a Map object
  Record.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._note = map['note'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
