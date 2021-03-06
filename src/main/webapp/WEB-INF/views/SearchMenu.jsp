<script>
function doBeforeSubmit()
{
  document.getElementById("displayBeforeSubmit1").style.display = "none";
  document.getElementById("displayBeforeSubmit2").style.display = "none";
  document.getElementById("displayBeforeSubmit3").style.display = "none";
  document.getElementById("displayBeforeSubmit4").style.display = "none";
  document.getElementById("displayAfterSubmit").style.display = "block";
  return true; 
}
</script>
<div>
<H1>Welcome ${name} to the remote dictionary!!!</H1>
</div>
<div class="container" id="displayBeforeSubmit1">
	<H1>Lookup a word:</H1>

	<p>
		Enter a word to find it on the server!
	</p>
	<form action="SearchMenu" method="post" onsubmit="doBeforeSubmit()">
    	word:<input type="text" name="word" placeholder="type the word here!"/>
    	<input type="submit" value="ok"/>
	</form>

	<p>
		<font color="red">${errorMessage}</font>
	</p>
</div>
<div class="container" id="displayBeforeSubmit2">
	<H1>Delete a word:</H1>

	<p>
		Enter a word to delete it from the server!
	</p>
	<form action="SearchMenu" method="post">
    	word:<input type="text" name="delete" placeholder="delete this word!"/>
    	<input type="submit" value="ok"/>
	</form>

	<p>
		<font color="red">${errorMessage}</font>
	</p>
</div>
<div class="container" id="displayBeforeSubmit3">
	<H1>Edit a word:</H1>

	<p>
		Enter a word to edit it on the server!
	</p>
	<form action="SearchMenu" method="post">
    	edit word:<input type="text" name="editWord" placeholder="Word to edit!"/>
    	new word:<input type="text" name="newWord" placeholder="New word here!"/>
    	<input type="submit" value="ok"/>
	</form>

	<p>
		<font color="red">${errorMessage}</font>
	</p>
</div>
<div class="container" id="displayBeforeSubmit4">
	<H1>Edit a definition:</H1>

	<p>
		Enter a word to edit its definition on the server!
	</p>
	<form action="SearchMenu" method="post">
    	edit def:<input type="text" name="editDef" placeholder="Word to edit!"/>
    	new def:<input type="text" name="newDef" placeholder="New definition here!"/>
    	<input type="submit" value="ok"/>
	</form>

	<p>
		<font color="red">${errorMessage}</font>
	</p>
</div>

<div id="displayAfterSubmit" style="display:none">
<h3>Please wait...</h3>
</div>