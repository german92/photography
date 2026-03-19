---
layout: post
title: Cumpleaños
categories: work event birthdays
thumbnail: "/assets/images/work/event/birthday/adult/cumple-erika-50-5.jpg"
image: "/assets/images/work/event/birthday/adult/cumple-erika-50-.jpg"
description: "Fotografía profesional para cumpleaños por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/birthday/adult'" %}
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

