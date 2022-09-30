abstract class Subject {
  registerObserver(Observer o);
  removeObserver(Observer o);
  notifyObserver();
}

abstract class Observer {
  updateObserver();
}
