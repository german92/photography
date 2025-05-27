---
layout: gallery
title: Work
permalink: /work/
---

Aquí encontrará una muestra de mi trabajo profesional en fotografía de bodas, eventos, retratos y producto. Me especializo en capturar momentos genuinos y crear imágenes que no solo se ven bien, sino que comunican y conectan con cada público.


<h2 class="home-title">Trabajo</h2>

<div class="flex-container">

  {%- for post in site.posts -%}
    {%- if post.categories contains "work" -%}
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
