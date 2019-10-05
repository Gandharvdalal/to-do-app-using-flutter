class Note{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title,this._date,this._priority,[this._description]);                                       //constructor
  Note.withId(this._id,this._title,this._date,this._priority,[this._description]);                       // to make changes


// All the getters                   //getting outside the class
  int get id=> _id;
  String get title=> _title;
  String get description=>_description;
  String get date=> _date;
  int get priority=>_priority;

// All the setters                   //coming inside the class
  set title(String newTitle){
    if(newTitle.length<=255){
      this._title=newTitle;
    }
  }  
  
  set description(String newdescription){
    if(newdescription.length<=255){
      this._description=newdescription;
    }
  }  
  set date(String newdate){
      this._date=newdate;
  } 
  set priority(int newPriority){
    if(newPriority>=1 && newPriority<=2){
      this._priority=newPriority;
    }
  }
// used to save and retrive from database
//convert note object to map object
  Map<String,dynamic>toMap(){
    var map=Map<String,dynamic>();
    if(id !=null){
      map['id']=_id;
    }
    map['title']=_title;
    map['description']=_description;
    map['priority']=_priority;
    map['date']=_date;

    return map;
  }

  Note.fromMapObject(Map<String,dynamic>map){
    this._id=map['id'];
    this._date=map['date'];
    this._description=map['description'];
    this._priority=map['priority'];
    this._title=map['title'];
  }
}