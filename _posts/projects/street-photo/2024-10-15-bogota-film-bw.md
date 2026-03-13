---
layout: post
title: Bogota Film B&W
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/bogota/bogota-7.jpg"
image: "/assets/images/projects/street-photo/bogota/bogota-7.jpg"
description: "Fotografía de calle en Bogotá en blanco y negro en película análoga. Serie documental por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/bogota'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Bogotá Film Blanco y Negro**<br>
Estas imágenes fueron tomadas con cámara ánaloga en Bogotá, Colombia.

Foto Urbana. Análogo. <br>
2024


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>