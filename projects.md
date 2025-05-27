---
layout: gallery
title: Projects
permalink: /projects/
---

En mis proyectos personales, exploro el arte conceptual y la fotografía de calle como medios para expresar ideas, emociones y reflexiones sobre la vida cotidiana y la condición humana. Mis proyectos son una forma de sanar y aportar luz al mundo.


<h2 class="home-title">Arte Conceptual</h2>

<div class="flex-container">

  {%- for post in site.posts -%}
    {%- if post.categories contains "projects" -%}
      <div class="flex-item"> 
        <a href="{{ post.url }}">
          <img src="{{ site.baseurl }}{{ post.thumbnail }}" alt="{{ post.title }}">
          {{ post.title }}
        </a>
      </div>
    {%- endif -%}
  {%- endfor -%}

</div>
