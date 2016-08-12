<%@include file=/WEB-INF/views/Header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-9">
  <div id="myCarousel" class="carousel slide"  data-interval="2000" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li id="si1" data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li id="si2" data-target="#myCarousel" data-slide-to="1"></li>
      <li id="si3" data-target="#myCarousel" data-slide-to="2"></li>
      <li id="si4" data-target="#myCarousel" data-slide-to="3"></li>
	  <li id="si5" data-target="#myCarousel" data-slide-to="4"></li>
	  <li id="si6" data-target="#myCarousel" data-slide-to="5"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/n/4.jpg"/>">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/n/2.jpg"/>">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/n/3.jpg"/>" >
        </div>
    

      <div class="item">
        <img src="<c:url value="/resources/n/1.jpg"/>">
      </div>
	  <div class="item">
        <img src="<c:url value="/resources/n/5.jpg"/>">
      </div>
	  <div class="item">
        <img src="<c:url value="/resources/n/7.jpg"/>">
      </div>
    
  </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
			<div class="col-md-3">
				<ul class="list-group style="background-color:black">
					<li class="list-group-item active style="orange">
						<center>CATEGORIES</center> </a>
					</li>
					<li class="list-group-item"><a href="headphones">
							<center style="color: black">HeadPhones</center>
					</a></li>
					<li class="list-group-item"><a href="#">
							<center style="color: black">Chargers</center>
					</a></li>
					<li class="list-group-item"><a href="#">
							<center style="color: black">ScreenGuards</center>
					</a></li>
					<li class="list-group-item"><a href="#">
							<center style="color: black">Cases</center>
					</a></li>
					<li class="list-group-item"><a href="#">
							<center style="color: black">MemoryCards</center>
					</a></li>
					<li class="list-group-item"><a href="#">
							<center style="color: black">Cables</center>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>