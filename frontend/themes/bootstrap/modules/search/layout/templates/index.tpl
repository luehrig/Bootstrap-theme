{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<section id="searchIndex" class="mod">
	<div class="inner">
		<header class="hd">
			<h4>{$lblSearchAgain|ucfirst}</h4>
		</header>
		<div class="bd">
			{form:search}
			<div class="control-group{option:txtQError} error{/option:txtQError}">
				<label for="q">{$lblSearchTerm|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtQ}
				{option:txtQError}<p class="help-block">{$txtQError}</p>{/option:txtQError}
			</div>
				<p>
					<input id="submit" class="btn" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
				</p>
			{/form:search}
		</div>
	</div>
</section>

{* don't remove this container nor replace the id - it'll be used to populate the search results live as you type *}
<div id="searchContainer">
	{include:modules/search/layout/templates/results.tpl}
</div>