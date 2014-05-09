
<div class="rmb-search-tool">
        	<div id="topSearch">
            	<div id="topSearchLeft">
                	<form style="background-color:transparent;" action="searchRMB.asp" method="get" name="searchForm" id="searchForm" _lpchecked="1">
						<input class="rmb-search-box rmb-search-box-fs" type="text" onfocus="clearInput(this);" onblur="checkInput(this);" value="Search RMB" name="zoom_query"  size="28" align="middle">
                        <input class="rmb-search-box rmb-search-box-mobi" type="text" onfocus="clearInput(this);" onblur="checkInput(this);" value="" name="zoom_query"  size="20" align="middle">
					</form>
                
                	</div>
                	<div id="topSearchRight" onmouseover="this.style.cursor='pointer';" style="cursor: pointer;">
                		<img class="rmb-search-box-fs" src="images/index/search.png" width="17" height="15" alt="Search">
                        <img class="rmb-search-box-mobi" src="images/mobi/search-icon.png" alt="Rates"/>
                	</div>            
            </div>
            <div id="topRates" onmouseover="this.style.cursor='pointer';" onclick="slideRates();" style="cursor: pointer;">
            	<div id="topRatesLeft">
            		<img src="images/iconography/arrowRight.png" width="18" height="18" alt="Rates" id="ratesArrowImg"/>
                   
            	</div>
                <div id="topRatesRight">See more rates here</div>
        	</div>
            <div id="topRatesSlider">
                <!--#include file="rates.asp" -->
            </div>
</div>