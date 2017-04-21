/// <reference path="angular.js" />
/// <reference path="angular-route.js" />

var app = angular.module("RouteApp", ["ng-route"])
                    .config(function ($routeProvider, $locationProvider) {
                        $routeProvider
                        .when("/home", {
                            templateURL: "Templates/home.html", controller: "homeController", caseInsensitiveMatch: true
                        })
                        .when("/courses", {
                            templateURL: "Templates/courses.html", controller: "coursesController", caseInsensitiveMatch: true
                        })
                        .when("/students", {
                            templateURL: "Templates/students.html", controller: "studentsController", caseInsensitiveMatch:true
                        })
                        .otherwise({
                            redirectTo : "/home"
                        })
                        $locationProvider.html5Mode(true);
                    })
                    .controller("homeController", function ($scope) {
                        $scope.message = "Home Page";
                })
                    .controller("coursesController", function ($scope) {
                        $scope.courses = ["C#", "Python", "ASP.NET"];
                })
                    .controller("studentsController", function ($scope, $http, $log) {
                        $http.get("StudentService.asmx/GetAllStudents").then(function (response) {
                            $log.debug();
                            $scope.students = response.data;
                        })
});

                    

