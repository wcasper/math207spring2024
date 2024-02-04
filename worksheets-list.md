---
layout: page
title: Worksheets
permalink: /worksheets-list/
---

{% for ws in site.worksheets %}
  <p>
    <a target="_parent" href="..{{ ws.url }}">
      {{ ws.title }}
    </a>
  </p>
{% endfor %}

