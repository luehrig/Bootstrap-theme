<section id="subscribeFormWidget" class="mod">
	<div class="inner">
		<div class="bd">
			<form action="{$var|geturlforblock:'mailmotor':'subscribe'}" method="post">
				<input type="hidden" name="form" value="subscribe" />
				<div class="control-group">
					<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					<input type="text" value="" id="email" name="email" class="inputText" />
				</div>
				<p>
					<input id="send" class="btn" type="submit" name="send" value="{$lblSubscribe|ucfirst}" />
				</p>
			</form>
		</div>
	</div>
</section>