var movies = axios.get("http://localhost:3000/api/movies").then(function (response) {
  var movies = response.data;
  console.log(movies);
});