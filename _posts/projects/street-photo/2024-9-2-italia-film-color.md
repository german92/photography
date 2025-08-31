---
layout: post
title: Italia Film Color
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/italia-film-color/italia-film-color-37.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/italia-film-color'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Italia Film Color**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Italia. En esta seria experiemente con rollos como Phoenix, Harmann.

Foto Urbana. Análogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>