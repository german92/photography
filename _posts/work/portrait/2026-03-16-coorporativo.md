---
layout: post
title: Retrato Coorporativos
categories: work portrait profesional
thumbnail: "/assets/images/work/event/coorporativo/CADENA-04.jpg"
image: "/assets/images/work/event/birthday//coorporativo/CADENA-04.jpg"
description: "Fotografía profesional para retrato profesional por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/coorporativo'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Cumpleaños Infantiles**<br>
Fotografía profesional para retratos coorporativos


Retrato. Digital. <br>
2025-actualidad


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

