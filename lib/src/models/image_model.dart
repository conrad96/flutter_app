class ImageModel{
  int id;
  String url;
  String title;
  ImageModel(this.id,this.title,this.url);
  ImageModel.fromJson(parsedJson){
    id = parsedJson['id'];
    title = parsedJson['title'];
    url = parsedJson['url'];
  }
}