class GenericModel<T> {
  T _data;

  GenericModel({T data}) {
    this._data = data;
  }

  set setData(T data) => this._data = data;
  T get getData => this._data;

}
