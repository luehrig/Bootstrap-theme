{*
	variables that are available:
	- {$item}: contains data about the question
	- {$related}: the related items
*}
<div id="blogDetail">
	<article class="mod article">
		<div class="inner">
			<header class="hd">
				<h1>{$item.question}</h1>
				<ul>
					<li>
						{* Category*}
						{$lblIn|ucfirst} {$lblThe} {$lblCategory} <a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>{option:!item.tags}.{/option:!item.tags}

						{* Tags*}
						{option:item.tags}
							{$lblWith} {$lblThe} {$lblTags}
							{iteration:item.tags}
								<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
							{/iteration:item.tags}
						{/option:item.tags}
					</li>
				</ul>
			</header>
			<div class="bd content">
				{$item.answer}
			</div>
		</div>
	</article>

	{option:inSameCategory}
		<section id="blogRelatedItems" class="mod">
			<div class="inner">
				<header class="hd">
					<h3>{$msgQuestionsInSameCategory|ucfirst}</h3>
				</header>
				<div class="bd content">
					<ul>
						{iteration:inSameCategory}
							<li><a href="{$inSameCategory.full_url}" title="{$inSameCategory.question}">{$inSameCategory.question}</a></li>
						{/iteration:inSameCategory}
					</ul>
				</div>
			</div>
		</section>
	{/option:inSameCategory}

	{option:related}
		<section id="blogRelatedItems" class="mod">
			<div class="inner">
				<header class="hd">
					<h3>{$msgRelatedQuestions|ucfirst}</h3>
				</header>
				<div class="bd content">
					<ul>
						{iteration:related}
							<li><a href="{$related.full_url}" title="{$related.question}">{$related.question}</a></li>
						{/iteration:related}
					</ul>
				</div>
			</div>
		</section>
	{/option:related}

	<p><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>

	{option:settings.allow_feedback}
		<section id="faqFeedbackForm" class="mod">
			<div class="inner">
	
				<div class="bd">
					{option:success}<div class="alert alert-success">{$msgFeedbackSuccess}</div>{/option:success}
					{option:spam}<div class="alert alert-error">{$errFeedbackSpam}</div>{/option:spam}
					
					{form:feedback}
						{$hidQuestionId}
						<div class="control-group{option:fields.error} error{/option:fields.error}">
							<h3 id="{$actFeedback}">
								{$msgFeedback|ucfirst}
							</h3>
							<div class="controls">
								{iteration:useful}
									<label class="radio" for="{$useful.id}">{$useful.rbtUseful} {$useful.label|ucfirst}</label>
								{/iteration:useful}
							</div>
						</div>

						<div id="feedbackNoInfo"{option:hideFeedbackNoInfo} style="display: none;"{/option:hideFeedbackNoInfo}>
					
							<div class="control-group{option:txtMessageError} error{/option:txtMessageError}">
								<label for="message">{$lblYourQuestion|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
								{$txtMessage}
								{option:txtMessageError}<p class="help-block">{$txtMessageError}</p>{/option:txtMessageError}
							</div>

							<p>
								<input class="btn" type="submit" name="comment" value="{$lblSend|ucfirst}" />
							</p>
						</div>
					{/form:feedback}
				</div>
			</div>
		</section>
	{/option:settings.allow_feedback}
</div>