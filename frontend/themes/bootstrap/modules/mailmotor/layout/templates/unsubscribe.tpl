<section id="unsubscribeIndex" class="mod">
	<div class="inner">
		<div class="bd">
			{option:unsubscribeHasFormError}<div class="alert alert-error">{$errFormError}</div>{/option:unsubscribeHasFormError}
			{option:unsubscribeHasError}<div class="alert alert-error">{$errUnsubscribeFailed}</div>{/option:unsubscribeHasError}
			{option:unsubscribeIsSuccess}<div class="alert alert-success">{$msgUnsubscribeSuccess}</div>{/option:unsubscribeIsSuccess}

			{option:!unsubscribeHideForm}
				{form:unsubscribe}
					<div class="control-group{option:txtEmailError} error{/option:txtEmailError}">
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}
						{option:txtEmailError}<p class="help-block">{$txtEmailError}</p>{/option:txtEmailError}
					</div>
					<p>
						<input id="send" class="btn" type="submit" name="send" value="{$lblSend|ucfirst}" />
					</p>
				{/form:unsubscribe}
			{/option:!unsubscribeHideForm}
		</div>
	</div>
</section>