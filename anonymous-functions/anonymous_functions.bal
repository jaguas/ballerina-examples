import ballerina/io;

public function main() {

    function (string, string) returns string anonFunction =
        function (string x, string y) returns string {
            return x + y;
        };

    io:println("Output: ", anonFunction("Hello ", "World.!!!"));

    var anonFunction2 = function (string x, string y, string... z) returns string {
        string value = x + y;
        foreach var item in z {
            value += item;
        }
        return value;
    };

    io:println("Output: ", anonFunction2("Ballerina ", "is ", "an ", "open ", "source ", "programming ", "language."));

    function(string, string) returns string arrowExpr = (x, y) => x + y;

    io:println("Output: ", arrowExpr("Hello ", "World.!!!"));

}