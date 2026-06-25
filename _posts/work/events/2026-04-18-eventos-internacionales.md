---
layout: post
title: Eventos Internacionales
categories: work event birthdays
thumbnail: "/assets/images/work/event/kosher-by-malka/Neon&Zusha-153 Large.jpeg"
image: "/assets/images/work/event/birthday/kosher-by-malka/Neon&Zusha-153 Large.jpeg"
description: "Fotografía profesional para cumpleaños por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/kosher-by-malka'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Eventos Internacionales**<br>
Fotografía profesional para eventos internacionales


Evento. Digital. <br>
2025-actualidad


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

