function fn(){

var config =
    {

baseURL: "https://reqres.in",
listUsers: "/api/users?page=2"

   }

   karate.log("From karate-config");
   karate.configure("ssl",false);
   return config;

}