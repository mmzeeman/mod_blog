{% extends "blog/page.tpl" %}

{% block below_body %}

	{% with m.search.paged[{query query_id=id page=q.page pagelen=6}] as result %}

		<ul class="list query-list clearfix">

			{% for id in result %}
				{% catinclude "_listitem.tpl" id %}
			{% endfor %}
		</ul>

		{% pager hide_single_page=1 result=result dispatch="page" id=id %}

	{% endwith %}

{% endblock %}
