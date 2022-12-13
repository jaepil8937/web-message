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
<title>사내 메세지 애플리케이션</title>
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
						<button class="btn btn-success px-4">새 메모 쓰기</button>
					</div>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<ul class="tree">
				  				<li>
				  					<span class="caret caret-down">전체 메모</span>
				    				<ul class="nested active">
										<li><a href="" class="text-decoration-none text-dark">내 메모(기본)</a></li>
										<li><a href="" class="text-decoration-none text-dark">사진 첨부 메모</a></li>
										<li><a href="" class="text-decoration-none text-dark">스크랩</a></li>
										<li><a href="" class="text-decoration-none text-dark">아이디어</a></li>
										<li><a href="" class="text-decoration-none text-dark">쇼핑</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-10">
			<div class="row mb-2">
				<div class="col d-flex justify-content-between me-2">
					<form class="row row-cols-lg-auto align-items-center me-3">
						<div class="col-12">
							<select class="form-select form-select-sm" name="folderNo">
								<option value=""> 전체 메모</option>
								<option value=""> 내 메모</option>
								<option value=""> 사진 첨부 메모</option>
								<option value=""> 스크랩</option>
								<option value=""> 아이디어</option>
								<option value=""> 쇼핑</option>
							</select>
						</div>
						<div class="col-12">
							<input type="text" class="form-control form-control-sm" name="keyword" placeholder="메모 검색"/>
						</div>
						<div class="col-12">
							<button type="submit" class="btn btn-sm btn-outline-secondary">검색</button>
						</div>
					</form>
					<div class="pt-1">
						<small>
							<strong>전체 메모</strong>
							<strong class="text-success">0 개</strong>
						</small>
					</div>
				</div>
			</div>
			<hr/>
			<div class="row mb-2">
				<div class="col">
					<a href="" class="btn btn-outline-danger btn-xs">삭제</a>
					<a href="" class="btn btn-primary btn-xs">등록</a>
					<select class="form-select form-select-xs w-150" name="folderNo">
						<option value=""> 폴더 이동</option>						
						<option value=""> 내 메모</option>
						<option value=""> 사진 첨부 메모</option>
						<option value=""> 스크랩</option>
						<option value=""> 아이디어</option>
						<option value=""> 쇼핑</option>
					</select>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col p-3">
					<div class="border bg-light p-3" >
						<div class="row" style="height:600px; overflow: auto;">
							<div class="col-2">
							<form method="post" action="register.jsp">
								<input type="hidden" name="folderNo" value="100" />
								<div class="card">
									<div class="card-header">
										간단한 메모는 여기에
									</div>
									<div class="card-body" style="height:200px;">
										<textarea rows="" class="form-control h-100 border-0" ></textarea>
									</div>
								</div>
							</form>
							</div>
							<div class="col-2">
								<div class="card">
									<div class="card-header">
										<input type="checkbox" name="memoNo">
										<small class="text-muted">2022.12.08</small>
										<small class="float-end">
											<a href=""><i class="bi bi-pencil-fill"></i></a>
											<a href=""><i class="bi bi-star"></i></a>
										</small>
									</div>
									<div class="card-body" style="height:200px;">
										<p class="card-text">내용입니다.</p>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="card">
									<div class="card-header">
										<input type="checkbox" name="memoNo">
										<small class="text-muted">2022.12.08</small>
										<small class="float-end">
											<a href=""><i class="bi bi-pencil-fill"></i></a>
											<a href=""><i class="bi bi-star"></i></a>
										</small>
									</div>
									<div class="card-body" style="height:200px;">
										<p class="card-text">내용입니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</body>
</html>