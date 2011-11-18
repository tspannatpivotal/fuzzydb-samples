<jsp:directive.include file="/WEB-INF/includes/includes.jsp"/>
<%@ taglib prefix="sample" tagdir="/WEB-INF/tags" %>

<script type="text/javascript">dojo.require("dijit.TitlePane");</script>
<div dojoType="dijit.TitlePane" style="width: 100%" title="How about searching for something...">


<form:form action="search" method="post" >

	<table>
	<tr>
		<td>Location:</td>
		<td><sample:edit-input attrName="postcode" popupHelp="Any clue where? (Try the first part of a UK postcode e.g. SE1)" /></td>
	</tr>
	<tr>
		<td>Price: </td>  
		<td><sample:edit-input attrName="price" popupHelp="Enter the *lowest* price you think will work..." /></td>
	</tr>
	<tr>
		<td>CO2 Emissions:</td>
		<td><sample:edit-input attrName="co2emissions" popupHelp="Planet friendly?  (80 - 440 gCO2/km)" /></td>	
	</tr>
	<tr>
		<td>Options:</td>
		<td><form:checkboxes id="options" path="options" items="${options}"/> <form:errors path="options"/></td>
	</tr>
	</table>
	<input type="submit" value="Search"/>
</form:form>

</div>