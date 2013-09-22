{% with id|menu_trail as parents %}
{% if parents %}
<div class="span12">
	<h5 class="blog-title">
		{% for p in parents %}
		<a href="{{ m.rsc[p].page_url }}">{{ m.rsc[p].title }}</a>
		{% endfor %}
	</h5>
</div>
{% endif %}
{% endwith %}
