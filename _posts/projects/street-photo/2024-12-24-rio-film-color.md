---
layout: post
title: Rio de Janeiro Film Color
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/rio-film-color/rio-film-color-11.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/rio-film-color'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>

<br>
**Rio De Janeiro Film Color**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Rio de Janerio.


Paisaje y Foto Urbana. Analogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>