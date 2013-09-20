{% extends "blog/site_base.tpl" %}

{% block html_head_extra %}
    {% lib
        "css/twitter-bootstrap.min.css"
        "css/mod_blog.css"
    %}
{% endblock %}

{% block content_area %}
    {% block chapeau %}{% endblock %}

    <div class="span9">
        {% block content %}
            <!-- The default content goes here. -->
        {% endblock %}
    </div>

    <div id="sidebar" class="span3">
        {% block sidebar %}
            {% include "blog/_sidebar.tpl" %}
        {% endblock %}
    </div>

{% endblock %}

{% block _js_include_extra %}
    {% lib
        "js/bootstrap.min.js"
    %}
{% endblock %}