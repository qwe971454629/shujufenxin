<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
    <head>
        <title>color_game</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">
        * {
            margin:0px;
            padding:0px;
            border: 0px;
        }
         .kuan{
             width:100px;
             height:100px;
             display: inline;
             background-color:green;
             float: left;
         }
         .body_class{
             margin-left: 30%;
             margin-right: 20%;
             margin-top: 10%;
             height: 500px;
         }
         .body_game{
             float: none;
             height: 500px;
         }
         .game_line{
             height: 100px;
         }
         h1{
             margin-bottom: 20px;
             margin-left: 15%;
         }
         h2{
         }
    </style>
<script language="javascript">
    var name = 1 ;
    var dengji = 1;

    var live = 100;

    function test4(event) {
        <!--获取当前点击的按钮的标号-->
        view.innerText = dengji
        str = event.id
        str1 = str.substring(2)
        dianji_id = Number(str1)
        <!-- -->
        if(dengji == 1 || name == dianji_id){
            dengji ++;
            var num = Math.floor(Math.random()*4096);
            var color_num = "#";
            color_num += num.toString(16);
            for(var i = 1; i <= 16 ; i++) {
              var txt = "bu" ;
              txt += i.toString();
              var div1 = document.getElementById(txt);
              div1.style.backgroundColor = color_num;
            }
            name_temp = name;
            name = (Math.floor(Math.random()*100%16))

            if (name<1)name++;
            if(name_temp == name) name++;
            var rand_num = 0;
            if(num + 5 <= 4096){
                if(live <= 20){
                    rand_num = num += 1;
                }
                else{
                    rand_num = num += 3;
                }
            }
            else
                rand_num = num -= 5;
            live -= 5;
            var color_num = "#";
            color_num += rand_num.toString(16);
            var txt = "bu" ;
            txt += name.toString()
            var div1 = document.getElementById(txt);
            div1.style.backgroundColor = color_num;
         }
         else{
            alert("找不到吧?shabi哈哈哈哈......")
         }
       }
</script>
<body>
    <div class="body_class">
        <h1>视力大作战</h1>
        <div id=view style="float:right"> </div>
        <div class="body_game">
            <div class="game_line">
                <div class = "kuan" id="bu1" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu2" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu3" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu4" type="button" value="" onclick="test4(this)"></div>
            </div>
            <div class="game_line">
                <div class = "kuan" id="bu5" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu6" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu7" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu8" type="button" value="" onclick="test4(this)"></div>
            </div>
            <div class="game_line">
                <div class = "kuan" id="bu9" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu10" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu11" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu12" type="button" value="" onclick="test4(this)"></div>
            </div>
                <div class="game_line">
                <div class = "kuan" id="bu13" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu14" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu15" type="button" value="" onclick="test4(this)"></div>
                <div class = "kuan" id="bu16" type="button" value="" onclick="test4(this)"></div>
            </div>
        </div>
        <button type="button" class="btn btn-danger"><a href="index.jsp">返回</a></button>
    </div>
</body>
</html>

    