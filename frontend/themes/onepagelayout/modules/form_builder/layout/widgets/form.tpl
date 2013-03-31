{* Note: we can use general variables names here since this template is parsed within its own scope *}

<section class="mod">
	<div class="inner">
		<div class="bd">
			{option:successMessage}{$successMessage}{/option:successMessage}
			{option:formBuilderError}<div class="alert alert-error">{$formBuilderError}</div>{/option:formBuilderError}

			{option:fields}
				<form id="{$formName}" method="post" action="{$formAction}">
					<input type="hidden" name="form" value="{$formName}" />

					{iteration:fields}
						{* Headings and paragraphs *}
						{option:fields.plaintext}
							<div class="content">
								{$fields.html}
							</div>
						{/option:fields.plaintext}

						{* Input fields, textarea's and dropdowns *}
						{option:fields.simple}
							<div class="control-group{option:fields.error} error{/option:fields.error}">
								<label for="{$fields.name}">
									{$fields.label}{option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}
								</label>
								{$fields.html}
								{option:fields.error}<p class="help-block">{$fields.error}</p>{/option:fields.error}
							</div>
						{/option:fields.simple}
						{* Radiobuttons and checkboxes *}
						{option:fields.multiple}
							<div class="control-group{option:fields.error} error{/option:fields.error}">
								<label class="control-label" for="{$fields.name}">
									{$fields.label}{option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}
								</label>
								<div class="controls">
										{iteration:fields.html}
										<label class="{$fields.type}" for="{$fields.html.id}">{$fields.html.field} {$fields.html.label}</label>
										{/iteration:fields.html}
									{option:fields.error}<p class="help-block">{$fields.error}</p>{/option:fields.error}
								</div>
							</div>
						{/option:fields.multiple}
					{/iteration:fields}

					<p>
						<input type="submit" value="{$submitValue}" name="submit" class="btn" />
					</p>
				</form>
			{/option:fields}
		</div>
	</div>
</section>