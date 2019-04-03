
class Post{
  const Post({
    this.title,
    this.author,
    this.imgUrl,
});
  final String title;
  final String author;
  final String imgUrl;
}

final List<Post> posts = [
  Post(
      title:'title1',
      author:'author1',
      imgUrl:'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg'
  ),
  Post(
      title:'title2',
      author:'author2',
      imgUrl:'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2378606792,1096904360&fm=27&gp=0.jpg'
  ),
  Post(
      title:'title3',
      author:'author3',
      imgUrl:'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2146046871,2611785107&fm=27&gp=0.jpg'
  ),
  Post(
      title:'title4',
      author:'author4',
      imgUrl:'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1752243568,253651337&fm=27&gp=0.jpg'
  ),
];