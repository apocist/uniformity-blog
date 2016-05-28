{% extends 'base.swig' %}

{% block javascript %}{% parent %}
	<script type="text/javascript">
		//TODO need to move this all to one central controller
		$(document).ready(function() {
			window.flashController = new flashController();
			window.authController = new authController({twitterButton: $('#twitterLogin')});

			var editor = new ContentEditor({
				id: {{ hid }},
				type: '{{ type }}',
				subType: '{{ __t }}',
				//baseUrl: 'http://admin.inin.pw:1337'
			});
			editor.load();
		});
	</script>
{% endblock %}

{% block title %}{{ name }}{% endblock %}

{% block content %}
	<h1 data-type="routable" data-subType="Blog" data-var="name">{{ name }}</h1>
	<h3>{{ posted|date('F jS, Y') }}</h3> {# TODO need a form type field #}
	<div data-type="routable" data-subType="Blog" data-var="content">
		{{ content }}
	</div>
	<input id="twitterLogin" type="button" value="Twitter Login"/>
{% endblock %}