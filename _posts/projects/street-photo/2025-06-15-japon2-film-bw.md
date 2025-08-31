---
layout: post
title: Japón 2 Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/japon2-film-bw/japon2_film-1.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/japon2-film-bw'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Japón 2 Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en mi segundo viaje a Japón.


Paisaje y Foto Urbana. Análogo. <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>