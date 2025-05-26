---
layout: gallery
title: Work
permalink: /work/
---

Aquí encontrará una muestra de mi trabajo profesional en fotografía de bodas, eventos, retratos y campañas publicitarias. Me especializo en capturar momentos genuinos y crear imágenes que no solo se ven bien, sino que comunican y conectan con cada público.

Por otro lado, también desarrollo proyectos personales de fotografía artística, donde exploro el arte conceptual y la fotografía de calle como medios para expresar ideas, emociones y reflexiones sobre la vida cotidiana y la condición humana.


<h2 class="home-title">Trabajo</h2>

<div class="flex-container">

  {%- for post in site.posts -%}
    {%- if post.categories contains "work" -%}
      <div class="flex-item"> 
        <a href="{{ post.url }}">
          <img src="{{ site.baseurl }}{{ post.thumbnail }}" alt="{{ post.title }}">
          {{ post.title }}
        </a>
      </div>
    {%- endif -%}
  {%- endfor -%}

</div>
