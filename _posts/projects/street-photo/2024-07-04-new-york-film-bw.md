---
layout: post
title: Nueva York Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/new-york-film-bw/new-york-film-bw-17.jpg"
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/new-york-film-bw'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Nueva York Film Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Nueva York. La intención era crear imagenes dimanicas y jugar con la velocidad. 


Foto Urbana. Análogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>