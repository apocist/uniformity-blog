{% extends 'base.swig' %}

{% block title %}{{ name }}{% endblock %}

{% block content %}
	{{ editWidget.create("name", name, {"tag": "h1"}) }}
	<h3>{{ posted|date('F jS, Y') }}</h3> {# TODO need a form type field #}
	{{ editWidget.create("content", content, {"id": "content"}) }}
	<input id="twitterLogin" type="button" value="Twitter Login"/>
{% endblock %}