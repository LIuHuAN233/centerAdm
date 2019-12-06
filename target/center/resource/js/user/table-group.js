$('#table-group').bootstrapTable({
    ajax:function(request){                    //使用ajax请求
        $.ajax({
            type:"GET",
            url:'/showAllGroup',
            contentType:'application/json;charset=utf-8',
            dataType:'json',
            data:request.data,
            success:function (res) {
                request.success({
                    row:res.data,
                });
                $('#table-group').bootstrapTable('load', res.data);
            },
            error:function(error){
                console.log(error);
            }
        })
    },
    toolbar: '#toolbar',                //工具按钮用哪个容器
    striped: true,                      //是否显示行间隔色
    cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    pagination: true,                   //是否显示分页（*）
    sortable: true,                     //是否启用排序
    sortOrder: "asc",                   //排序方式
    queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求

        return {
            pageSize: params.limit, // 每页要显示的数据条数
            offset: params.offset, // 每页显示数据的开始行号
            sort: params.sort, // 要排序的字段
            sortOrder: params.order, // 排序规则
        }
    },         //传递参数（*）
    sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
    pageNumber:1,                       //初始化加载第一页，默认第一页
    pageSize: 10,                       //每页的记录行数（*）
    pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
    smartDisplay:false,
    search: false,                      //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
    strictSearch: true,
    showColumns: false,                 //是否显示所有的列
    showRefresh: false,                 //是否显示刷新按钮
    minimumCountColumns: 2,             //最少允许的列数
    clickToSelect: true,                //是否启用点击选中行
    height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
    uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
    showToggle:false,                   //是否显示详细视图和列表视图的切换按钮
    cardView: false,                    //是否显示详细视图
    detailView: false,                   //是否显示父子表
    columns: [

        {
            field:'kGroupName',
            title:'分组名',
            width:60

        },{
            field:'kGroup',
            title:'分组成员',
            width:120
        },{
            field:'action',
            title:'操作',
            width:100,
            align:"center",
            valign:"middle",
            formatter:function(value,row,index){
                var e = '<a href="javascript:void()" οnclick="editProject(\''+ row.id + '\')">编辑</a> ';
                var d = '<a href="javascript:void()" οnclick="deleteProject(\''+ row.id +'\')">删除</a> ';
                return e+d;
            }
                ,       //自定义表格内容，字符串内是方法名称
        }
    ],
    onLoadSuccess: function(){  //加载成功时执行
        //alert("加载成功");
        $("#table_group th").css("text-align","center");  //设置表头内容居中
    },
    onLoadError: function(){  //加载失败时执行
        alert("加载数据失败");
    }
//列设置
});

