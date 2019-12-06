<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>五子棋</title>
    <script src="/js/jquery.min.js" type="text/javascript"></script>
</head>
<body >
    <div style="height: 1024px; width: 1016px; background:url('/img/timg.jpg'); margin: auto">
        <canvas id="myCanvas" width="1016" height="1024" style="border:1px solid #000000;position: absolute;">
        </canvas>
    </div>

<script>

var c=document.getElementById("myCanvas");
var ctx=c.getContext("2d");
ctx.beginPath();
ctx.fillStyle = "black";
ctx.arc(37, 43, 1, 0, 2 * Math.PI, false);
ctx.fill()
ctx.stroke();
var x0=37;
var y0=43;
var x =x0;
var point33 = new Array();
var point11 = new Array();
for (var i=0;i<19;i++) {
    point11[i] = new Array();
    point33[i] = new Array();
    var y =y0;
    for(var j=0;j<19;j++){
        point33[i][j]=0;
        point11[i][j]=x+","+y;
        y+=50.95;

    }
    x+=53;
}

//对事件进行监听
    var flag = 0;
c.addEventListener('click', function(e){
    

  p = getEventPosition(e);
  // alert(p.x);
  // alert(p.y);
  //判断点击了那个矩形
  
  for (var i = 0; i < 19; i++) {
      for (var j = 0; j < 19; j++) {
        // var a,b;
        // b =  point11[i][j].split(",")
        // alert(b)
        /*alert( a,b =  point11[i][j].split(","))
        var arr = point11[i][j].split(",");*/
        //alert("1111111");
        // alert(typeof(point11[i][j].split(",")[0]));
        // alert(typeof(p.x-parseFloat(point11[i][j].split(",")[0])))
       // alert(Math.sqrt(Math.pow(p.x-parseFloat(point11[i][j].split(",")[0]),2)+Math.pow(p.y-parseFloat(point11[i][j].split(",")[1]),2)))
        
          if (Math.sqrt(Math.pow(p.x-parseFloat(point11[i][j].split(",")[0]),2)+Math.pow(p.y-parseFloat(point11[i][j].split(",")[1]),2))<15) {
            ctx.beginPath();
        if (point33[i][j]==0) {
            if(flag==0){
            /*ctx.fillStyle = "black";*/
            point33[i][j]=1;
            }else{
            /*ctx.fillStyle = "white";*/
            point33[i][j] =2;
            }
            alert(JSON.stringify(point33));
            $.ajax({
                url:"/xiaqi",
                data:{"point":JSON.stringify(point33)},
                success:function (result) {

                }
            });
        }else{
            continue;
        }
        
        /*ctx.arc(parseFloat(point11[i][j].split(",")[0]), parseFloat(point11[i][j].split(",")[1]), 20, 0, 2 * Math.PI, false);
        ctx.fill()
        ctx.stroke();
        flag =1-flag;*/
          }
      }
      
  }
  
}, false);


//注：使用这个函数，需要给Canvas元素的position设为absolute。
//要判断事件对象发生的位置，事件对象e的layerX和layerY属性表示Canvas内部坐标系中的坐标
function getEventPosition(ev){
  var x, y;
  if (ev.layerX || ev.layerX == 0) {
    x = ev.layerX;
    y = ev.layerY;
  } else if (ev.offsetX || ev.offsetX == 0) { // Opera
    x = ev.offsetX;
    y = ev.offsetY;
  }
  return {x: x, y: y};
}
</script>

</body>
</html>