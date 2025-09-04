---
layout: post
title: Buenos Aire Film Color
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/buenos-aires-film-color/buenos-aires-film-color-16.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/buenos-aires-film-color'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Buenos Aire Film Color**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Buenos Aires, Argentina en fin de año.

Foto Urbana. Análogo. <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>