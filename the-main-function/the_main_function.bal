import ballerina/io;

public function main(string name, int age = 18, string year = "Freshman", string... modules) returns error? {

    if (name.length() < 5) {
        error e = error("InvalidName", message = "invalid length");
        return e;
    }

    string info = string `Name: ${name}. Age: ${age}, Year: ${year}`;

    if (modules.length() > 0) {
        info += ", Modules: " + modules.toString();
    }

    io:println(info);

}