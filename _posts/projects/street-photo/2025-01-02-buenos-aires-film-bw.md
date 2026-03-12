---
layout: post
title: Buenos Aire Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/buenos-aires-film-bw/buenos-aires-film-bw-10.jpg"
image: "/assets/images/projects/street-photo/buenos-aires-film-bw/buenos-aires-film-bw-10.jpg"
description: "Fotografía de calle en Buenos Aires en blanco y negro en película análoga. Serie documental por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/buenos-aires-film-bw'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Buenos Aire Film Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Buenos Aires, Argentina en fin de año.

Foto Urbana. Análogo. <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>