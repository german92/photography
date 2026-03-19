---
layout: post
title: Cumpleaños Infantiles
categories: work event birthdays
thumbnail: "/assets/images/work/event/birthday/infantiles/cumple-maia-tami-8.jpg"
image: "/assets/images/work/event/birthday/infantiles/cumple-maia-tami-8.jpg"
description: "Fotografía profesional para cumpleaños infantiles por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/birthday/infantiles'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Cumpleaños Infantiles**<br>
Fotografía profesional para cumpleaños infantiles


Evento. Digital. <br>
2025-actualidad


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

