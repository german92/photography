---
layout: post
title: Italia Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/italia-film-bw/italia-film-bw-8.jpg"
image: "/assets/images/projects/street-photo/italia-film-bw/italia-film-bw-8.jpg"
description: "Fotografía de calle en Italia en blanco y negro en película análoga. Serie documental por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/italia-film-bw'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Italia Film Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Italia.

Foto Urbana. Análogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>