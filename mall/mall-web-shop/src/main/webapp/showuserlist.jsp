<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<!-- 引入bootstrap样式 -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入bootstrap-table样式 -->
		<link href="css/bootstrap-table.min.css" rel="stylesheet">
		
		<!-- jquery -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<!-- bootstrap-table.min.js -->
		<script src="js/bootstrap-table.min.js"></script>
		<!-- 引入中文语言包 -->
		<script src="js/bootstrap-table-zh-CN.min.js"></script>
	</head>
	<body>
		<button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..." 
   		type="button" onclick="showfrm()"> 添加数据</button>
		<table id="table" data-toggle="table" >
		    <thead>
		        <tr>
		            <th data-field="id">序号</th>
		            <th data-field="name">名称</th>
		            <th data-field="price">价格</th>
		        </tr>
		    </thead>
		</table>
		<script>
			$("#table").bootstrapTable({ // 对应table标签的id
			      url: "getuserlist", // 获取表格数据的url
			      cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
			      striped: true,  //表格显示条纹，默认为false
			      pagination: true, // 在表格底部显示分页组件，默认false
			      pageList: [10, 20], // 设置页面可以显示的数据条数
			      pageSize: 10, // 页面数据条数
			      pageNumber: 1, // 首页页码
			      sidePagination: 'server', // 设置为服务器端分页
			      queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
			
			          return {
			              pageSize: params.limit, // 每页要显示的数据条数
			              offset: params.offset, // 每页显示数据的开始行号
			              sort: params.sort, // 要排序的字段
			              sortOrder: params.order, // 排序规则
			              dataId: $("#productid").val() // 额外添加的参数
			          }
			      },
			      sortName: 'productid', // 要排序的字段
			      sortOrder: 'desc', // 排序规则
			      columns: [
			          {
			              checkbox: true, // 显示一个勾选框
			              align: 'center' // 居中显示
			          }, {
			              field: 'userid', // 返回json数据中的name
			              title: '用户编号', // 表格表头显示文字
			              align: 'left', // 左右居中
			              valign: 'middle' // 上下居中
			          }, {
			              field: 'username',
			              title: '用户姓名',
			              align: 'left',
			              valign: 'middle'
			          }, {
			              field: 'userpwd',
			              title: '用户密码',
			              align: 'center',
			              valign: 'middle'
			          }, {
			              field: 'memo',
			              title: '备注信息',
			              align: 'left',
			              valign: 'middle'
			          }, {
			              field: 'listprice',
			              title: '相关操作',
			              align: 'center',
			              valign: 'middle',
			              formatter: actionFormatter
			          }
			          
			      ],
			      onLoadSuccess: function(){  //加载成功时执行
			            console.info("加载成功");
			      },
			      onLoadError: function(){  //加载失败时执行
			            console.info("加载数据失败");
			      }
			
			});
						
		function showfrm(){
			$('#addnewModal').modal('show');
		}
		function deleteinfo(id){
			$("#deleteHaulId").val(id);
			 $("#deldialog").modal({
			        backdrop : 'static',
			        keyboard : false
			 });
		}
		
		function deleteinfook(){
			alert("调用后台删除："+ $("#deleteHaulId").val());
			$("#deldialog").modal('hide');
			$("#table").bootstrapTable('refresh');
		}
		
		function showinfo(id){			
			alert("showinfo:"+id);			
		}
		
		function editinfo(id){
			alert("editinfo:"+id);
		}
		
		//操作栏的格式化
        function actionFormatter(value, row, index) {
            var id = value;
            var result = "";
            result += "<a href='javascript:;' class='btn btn-xs green' onclick=\"showinfo('" + id + "', view='view')\" title='查看'><span class='glyphicon glyphicon-search'></span></a>";
            result += "<a href='javascript:;' class='btn btn-xs blue' onclick=\"editinfo('" + id + "')\" title='编辑'><span class='glyphicon glyphicon-pencil'></span></a>";
            result += "<a href='javascript:;' class='btn btn-xs red' onclick=\"deleteinfo('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'></span></a>";
            return result;
        }	
		</script>
		<!--添加信息的对话框 -->
		<div class="modal fade" id="addnewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							添加新用户
						</h4>
					</div>
					<div class="modal-body">
						请输入新用户的相关信息<p>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="firstname" class="col-sm-2 control-label">用户姓名</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="username" 
										   placeholder="请输入姓名">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">用户密码</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="userpwd" 
										   placeholder="请输入密码">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">备注说明</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="memo" 
										   placeholder="请输入备注信息">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label>
											<input type="checkbox"> 请记住我
										</label>
									</div>
								</div>
							</div>							
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary">
							确定保存
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		
		
		
		<!-- 模态框   信息删除确认 -->
        <div class="modal fade" id="deldialog">
            <div class="modal-dialog">
                <div class="modal-content message_align">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title">提示</h4>
                    </div>
                    <div class="modal-body">
                        <!-- 隐藏需要删除的id -->
                        <input type="hidden" id="deleteHaulId" />
                        <p>您确认要删除该条信息吗？</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                            data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="deleteHaulBtn" onclick="deleteinfook()">确认</button>
                    </div>
                </div>             
       		</div>
       </div>
	</body>
</html>
