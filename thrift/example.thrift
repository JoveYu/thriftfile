namespace py example
namespace go example

include "./common.thrift"

struct Request {
    1:required i32 a;
    2:required i32 b;
}

service ExampleService {
    i32 Add(1:Request req) throws(1:common.Exception e)
}
