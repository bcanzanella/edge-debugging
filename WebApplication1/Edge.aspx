<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="EdgeJs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%
        var fn = Edge.Func(@"
                return function(message, callback) {          
                    return callback(null, 'hello ' + message);
                }");
        Response.Write(fn("world").Result);
    %>
</body>
</html>
