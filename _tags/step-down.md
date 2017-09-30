---
tag: step-down
---

{% include tag_page_common.html %}

{% assign category = category[0] %}
{% if category %}
{% capture category_content %}<a class="label" href="{{ category.url }}">{{ category.name }}</a>{% endcapture %}
{% endif %}

{% assign tagged = site.tags %}
