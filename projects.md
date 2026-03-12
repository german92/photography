---
layout: gallery
title: Projects
permalink: /projects/
description: "Proyectos personales de fotografía conceptual y de calle por German Ostaszynski en Costa Rica. Arte visual que explora la condición humana."
image: /assets/images/projects/conceptual/ocean/ocean-1.jpg
---

En mis proyectos personales, exploro el arte conceptual y la fotografía de calle como medios para expresar ideas, emociones y reflexiones sobre la vida cotidiana y la condición humana. Mis proyectos son una forma de sanar y aportar luz al mundo.


<h2 class="home-title">Trabajos Conceptuales</h2>

<div class="flex-container">

  {%- for post in site.posts -%}
    {%- if post.categories contains "conceptual" -%}
      <div class="flex-item"> 
        <a href="{{ post.url }}">
          <img src="{{ site.baseurl }}{{ post.thumbnail }}" alt="{{ post.title }}">
          <div class="logo-overlay">
            <img src="{{ site.baseurl }}/assets/images/logo-no-text.png" alt="Logo">
          </div>
          {{ post.title }}
        </a>
      </div>
    {%- endif -%}
  {%- endfor -%}

</div>

<h2 class="home-title">Street Photography</h2>


<div class="flex-container">

  {%- for post in site.posts -%}
    {%- if post.categories contains "street-photo" -%}
      <div class="flex-item"> 
        <a href="{{ post.url }}">
          <img src="{{ site.baseurl }}{{ post.thumbnail }}" alt="{{ post.title }}">
          <div class="logo-overlay">
            <img src="{{ site.baseurl }}/assets/images/logo-no-text.png" alt="Logo">
          </div>
          {{ post.title }}
        </a>
      </div>
    {%- endif -%}
  {%- endfor -%}

</div>
