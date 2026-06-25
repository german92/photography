---
layout: post
title: Corporativo
categories: work event birthdays
thumbnail: "/assets/images/work/event/corporativo/CADENA-04.jpg"
image: "/assets/images/work/event/corporativo/CADENA-04.jpg"
description: "Fotografía profesional para cumpleaños por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/corporativo'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Eventos y Retratos Corporativos**<br>
Fotografía profesional para compañias y empresas.


Evento. Digital. <br>
2025-actualidad


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

