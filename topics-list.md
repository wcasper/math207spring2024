---
layout: page
title: Topics
permalink: /topics-list/
---

{% for topic in site.topics %}
  <p>
    <a target="_parent" href="..{{ topic.url }}">
      {{ topic.title }}
    </a>
  </p>
{% endfor %}

