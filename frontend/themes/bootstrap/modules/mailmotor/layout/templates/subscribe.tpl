<section id="subscribeIndex" class="mod">
	<div class="inner">
		<div class="bd">
			{option:subscribeHasFormError}<div class="alert alert-error">{$errFormError}</div>{/option:subscribeHasFormError}
			{option:subscribeHasError}<div class="alert alert-error">{$errSubscribeFailed}</div>{/option:subscribeHasError}
			{option:subscribeIsSuccess}<div class="alert alert-success">{$msgSubscribeSuccess}</div>{/option:subscribeIsSuccess}

			{option:!subscribeHideForm}
				{form:subscribe}

					<div class="control-group{option:txtEmailError} error{/option:txtEmailError}">
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}
						{option:txtEmailError}<p class="help-block">{$txtEmailError}</p>{/option:txtEmailError}
					</div>
	
					<p>
						<input id="send" class="btn" type="submit" name="send" value="{$lblSend|ucfirst}" />
					</p>
				{/form:subscribe}
			{/option:!subscribeHideForm}
		</div>
	</div>
</section>