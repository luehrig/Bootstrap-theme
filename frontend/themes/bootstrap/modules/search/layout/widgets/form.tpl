<section id="searchFormWidget" class="mod">
	<div class="inner">
		<header class="hd">
			<h3>{$lblSearch|ucfirst}</h3>
		</header>
		<div class="bd">
			{form:search}
			
				<div class="control-group{option:txtQWidgetError} error{/option:txtQWidgetError}">
					<label for="qWidget">{$lblSearchTerm|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtQWidget}
					{option:txtQWidgetError}<p class="help-block">{$txtQWidgetError}</p>{/option:txtQWidgetError}
				</div>
				<p>
					<input id="submit" class="btn" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
				</p>
			{/form:search}
		</div>
	</div>
</section>