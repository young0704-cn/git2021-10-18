<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
        <h2>Hello World!</h2>
        <a href="one">访问servlet</a>
        <input type="button" value="按钮" id="bt1" onclick="aa()"/>
    </body>
    <script type="text/javascript">
        var aa=function(){
            var a=new XMLHttpRequest();
            a.onreadystatechange=function (){
                if(a.readyState==4&&a.status==200){
                    var b=a.responseText;
                    alert(b);
                }
            }
            a.open("get","one?id=1",true);
            a.send();
        }
    </script>
</html>
