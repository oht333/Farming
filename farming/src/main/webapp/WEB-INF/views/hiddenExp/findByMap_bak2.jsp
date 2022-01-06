<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../inc/top.jsp"%>
<script src="${pageContext.request.contextPath }/resources/js/address1.js"></script>
<script type="text/javascript">
$(function(){
	$('#mapList li a:first').addClass('active');
    $('#mapList li a').click(function(){
		$(this).addClass('active');
		$('#mapList li a').not(this).removeClass('active');
	});
});
</script>
<section>
      <div class="map-wrapper-300">
        <div class="h-100 " id="map"></div>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff1949cec1418c92938f079cf57f3c3e"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(37.56667 , 126.97806),
				level: 5
			};
	
			var map = new kakao.maps.Map(container, options);
			
			
		</script>
      </div>
    </section>
    <section class="py-5 bg-gray-100 shadow">
      <div class="container">
        <h1>지도로 파밍하기</h1>
        <p class="lead mb-5">각 지역에서 가장 인기있는 전문가를 찾아보실 수 있습니다. <br>지역을 검색하여 가장 인기있는 전문가를 만나보세요!</p>
        <h5>City Quarters            </h5>
        <ul class="nav nav-pills-custom col-md-8" id="mapList">
        </ul>
      </div>
    </section>
    <form id="listBox" >
    	<input type="text" name="keyword" id="keyword">
    </form>
    <button>검색</button>
   	<c:import url="/hiddenExp/hiddenExpList?keyword=${keyword }" />
    

<%@ include file="../inc/bottom.jsp"%>