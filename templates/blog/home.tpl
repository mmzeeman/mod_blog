{% extends "blog/base.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}

{% block hero %}
    <div class="blog-header">
        <div class="container">
            <h1>{{ m.rsc[id].title }}</h1>
            {{ m.rsc[id].body }}
        </div>
    </div>
{% endblock %}
                
{% block content %}
	{% with m.search[{query cat='article' sort='-publication_start' pagelen=m.config.site.pagelen.value|default:5}] as result %}

		<ul class="media-list" id="list-articles">
			{% for id in result %}
			    {% if id.is_published %}
    				{% include "blog/_article_summary.tpl" id=id big=forloop.first %}
    			{% endif %}
			{% endfor %}
		</ul>

		{% ifequal m.config.site.pagelen.value|default:5 result|length %}
			{% wire id="more-results" action={moreresults result=result target="list-articles" template="blog/_article_summary.tpl"} %}
			<p><a href="#" id="more-results">{_ Previous articles _}</a></p>
		{% endifequal %}
	{% endwith %}

{% endblock %}