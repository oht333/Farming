<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script src="${pageContext.request.contextPath }/resources/js/address1.js"></script>
<section>
      <div class="map-wrapper-300">
        <div class="h-100 " id="map"></div>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff1949cec1418c92938f079cf57f3c3e"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(37.56667 , 126.97806),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
			
			function panTo() {
			    // 이동할 위도 경도 위치를 생성합니다 
			    var moveLatLon = new kakao.maps.LatLng(35.17944 , 129.07556);
			    
			    // 지도 중심을 부드럽게 이동시킵니다
			    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			    map.panTo(moveLatLon);     
			    
			}
			
			$(function(){
				var act=$('#mapList li a').hasClass("active").html();

			});
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
    
    <c:import url="/hiddenExp/hiddenExpList?keyword=act"></c:import>
      

<%@ include file="../inc/bottom.jsp"%>