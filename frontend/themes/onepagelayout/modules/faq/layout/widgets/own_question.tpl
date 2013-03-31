{*
	variables that are available:
	- {$widgetFaqOwnQuestion}: true or false depending on if the data can be shown
*}

{option:widgetFaqOwnQuestion}
<section id="faqOwnQuestionForm" class="mod">
	<div class="inner">
		<header class="hd">
			<h3 id="{$actOwnQuestion}">{$msgAskOwnQuestion|ucfirst}</h3>
		</header>
		<div class="bd">
			{option:errorSpam}<div class="alert alert-error">$errOwnQuestionSpam}</div>{/option:errorSpam}
			{option:success}<div class="alert alert-success">$msgOwnQuestionSuccess}</div>{/option:success}

			{form:own_question}

				<div class="control-group{option:txtNameError} error{/option:txtNameError}">
					<label for="name">{$lblYourName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtName}
					{option:txtNameError}<p class="help-block">{$txtNameError}</p>{/option:txtNameError}
				</div>
			
				<div class="control-group{option:txtEmailError} error{/option:txtEmailError}">
					<label for="email">{$lblYourEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtEmail}
					{option:txtEmailError}<p class="help-block">{$txtEmailError}</p>{/option:txtEmailError}
				</div>
				
				<div class="control-group{option:txtMessageError} error{/option:txtMessageError}">
					<label for="message">{$lblYourQuestion|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtMessage}
					{option:txtMessageError}<p class="help-block">{$txtMessageError}</p>{/option:txtMessageError}
				</div>
				
				<p>
					<input class="btn" type="submit" name="send" value="{$lblSend|ucfirst}" />
				</p>
			{/form:own_question}
		</div>
	</div>
</section>
{/option:widgetFaqOwnQuestion}