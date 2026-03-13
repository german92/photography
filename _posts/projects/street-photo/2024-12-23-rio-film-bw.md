---
layout: post
title: Rio de Janeiro Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/rio-film-bw/rio-film-bw-2.jpg"
image: "/assets/images/projects/street-photo/rio-film-bw/rio-film-bw-2.jpg"
description: "Fotografía de calle en Río de Janeiro en blanco y negro en película análoga. Serie documental por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/rio-film-bw'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Rio De Janeiro Film Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Rio de Janerio.


Paisaje y Foto Urbana. Analogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>