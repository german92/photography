---
layout: post
title: Cartagena Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/cartagena-film-color/cartagena-film-color-11.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/cartagena-film-color'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Cartagena Film Color**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Cartagena, Colombia.

Foto Urbana. Análogo. <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>