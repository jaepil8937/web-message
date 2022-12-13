<%@page import="com.semi.message.vo.MessageGroup"%>
<%@page import="com.sample.dao.MessageGroupDao"%>
<%@page import="com.semi.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<link href="/web-message/resources/css/style.css" rel="stylesheet">
<title>메세지 그룹 관리</title>
<style type="text/css">
.btn-xs {
	--bs-btn-padding-y: .20rem; 
	--bs-btn-padding-x: .5rem; 
	--bs-btn-font-size: .55rem;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="home"/>
</jsp:include>
<div class="container-fluid my-3">
	<div class="row">
		<div class="col-2">
			<div class="row mb-3">
				<div class="col text-center">
					<div class="btn-group" role="group">
						<button class="btn btn-success px-4" id="btn-open-modal-1">쪽지쓰기</button>
						<button class="btn btn-success px-4" id="btn-open-modal-2">내게쓰기</button>
					</div>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<ul class="tree">
				  				<li>
				  					<span class="caret caret-down">받은 쪽지함</span>
				    				<ul class="nested active">
										<li>개인쪽지</li>
										<li>부서쪽지</li>
									</ul>
								</li>
				  				<li><span class="caret">내게 쓴 쪽지함</span></li>
				  				<li><span class="caret">보낸 쪽지함</span></li>
				  				<li><span class="caret">쪽지 보관함</span></li>
				  				<li><span class="caret">스팸 쪽지함</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-10">
			<div class="row">
				<div class="col-12">
					<strong>메세지 그룹 관리</strong>
				</div>
			</div>
			<hr />
			<div class="row mb-2">
				<div class="col-6 ">
					<div class="border p-3">
						<div class="row mb-2">
							<div class="col-12">
								<button class="btn btn-outline-secondary btn-xs rounded-0" id="bt-checkAll" >전체 선택</button>
								<button class="btn btn-outline-secondary btn-xs rounded-0" id="bt-deleteAll"><i class="bi bi-trash"></i>삭제</button>
								<div class="btn-group" role="group" aria-label="Basic example">
									<button class="btn btn-outline-secondary btn-xs rounded-0">맨 위로</button>
									<button class="btn btn-outline-secondary btn-xs rounded-0">위로</button>
									<button class="btn btn-outline-secondary btn-xs rounded-0">아래로</button>
									<button class="btn btn-outline-secondary btn-xs rounded-0">맨 아래로</button>
								</div>
							</div>
						</div>
						<div class="row mb-2">
							<div class="col-12">
								<table class="table table-sm border-top" id="GroupListTable">
									<colgroup>
										<col width="5%">
										<col width="60%">
										<col width="10%">
									</colgroup>
									<thead>
										<tr class="bg-light small">
											<th><input type="checkbox" id="checkbox-all"></th>
											<th>그룹명</th>
											<th>수정/삭제</th>
										</tr>
									</thead>
										<tr class="small">
											<td><input type="checkbox" name="groupNo" value="100"></td>
											<td>개인쪽지</td>
											<td>
												<button class="btn btn-outline-danger btn-xs rounded-0" data-group-no="100" >삭제</button>
												<button class="btn btn-outline-warning btn-xs rounded-0" data-group-no="100">수정</button>
											</td>
										</tr>
										<tr class="small">
											<td><input type="checkbox" name="groupNo" value="101"></td>
											<td>부서쪽지</td>
											<td>
												<button class="btn btn-outline-danger btn-xs rounded-0" data-group-no="101">삭제</button>
												<button class="btn btn-outline-warning btn-xs rounded-0" data-group-no="101">수정</button>
											</td>
										</tr>
										<tr class="small">
											<td><input type="checkbox" name="groupNo" value="103"></td>
											<td>친구쪽지</td>
											<td>
												<button class="btn btn-outline-danger btn-xs rounded-0" data-group-no="103">삭제</button>
												<button class="btn btn-outline-warning btn-xs rounded-0" data-group-no="103">수정</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class=" border p-3">
						<form>
							<div class="row mb-1">
								<label class="col-sm-4 col-form-label col-form-label-sm fw-bold">메세지 그룹 추가</label>
								<div class="col-sm-6">
									<input type="text" class="form-control form-control-sm" placeholder="메세지 그룹을 추가하세요">
								</div>
								<div class="col-sm-2">
									<button class="btn btn-success btn-xs" style="margin-top: 2px;" id="bt-add">추가</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#checkbox-all").change(function(){
		var checkboxAllChecked = $(this).prop("checked");
		$(":checkbox[name=groupNo]").prop('checked',checkboxAllChecked);
	})
	
	$(":checkbox[name=groupNo]").change(function(){
		
	});
})

$(function(){
	$("#checked").change(function(){
		var checkboxAllChecked = $(this).prop("checked");
		$(":checkbox[name=groupNo]").prop('checked',checkboxAllChecked);
	})
	
	$(":checkbox[name=groupNo]").change(function(){
		
	});
	$("#bt-checkAll").click(function() {
		  $("input[name=groupNo]:checkbox").prop("checked", "checked");
		});
})

 $(function () {
    $('#bt-deleteAll').click( function() {
        $( '#GroupListTable > tbody').empty();
    });
});


</script>
</body>
</html>