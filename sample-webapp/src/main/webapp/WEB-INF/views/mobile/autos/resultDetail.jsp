<%@ taglib prefix="f" uri="http://fuzzydb.org/jsp/functions" %>
<%@ taglib prefix="sample" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:importAttribute name="result" />

   	<div  style="font-size: 100%; padding-left: 10px"><br/><b>${f:toString(result.item.options)}</b></div>

	<!-- Forward scores -->
	<sample:what-matches result="${result}"/>

   	<div style="padding: 2px 2px 0px 2px; float:left;">
    	<div class="attribute">Colour: <b>${f:toString(result.item.colour)}</b></div>
    	<div class="attribute">Combined (mpg): <b>${f:toString(result.item.mpgCombined)}</b></div>
    	<div class="attribute">Emissions (gCO2/km): <b>${f:toString(result.item.co2emissions)}</b></div>
    	<div class="attribute">Power (bhp): <b>${f:toString(result.item.horsePower)}</b></div>
    	<div class="attribute">Distance:  ${f:toString(f:forwardsScore(result,'Distance'))} miles</div>
   	</div>
   	<div style="float: right; padding-right: 10px; padding-top: 30px"> 
   		<a  data-ajax="false" href="?ref=${result.item.ref}&amp;style=${style}">matches</a>
   	</div>
	<div style="clear:left; float:none" ></div>
