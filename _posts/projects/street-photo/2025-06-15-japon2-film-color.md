---
layout: post
title: Japón 2 Film Color
categories: projects street-photo film
thumbnail: "/assets/images/projects/street-photo/japon2-film-color/japon2_film_color-22.jpg"
image: "/assets/images/projects/street-photo/japon2-film-color/japon2_film_color-22.jpg"
description: "Fotografía de calle en Japón en color en película análoga. Segunda serie documental por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/projects/street-photo/japon2-film-color'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>

<br>
**Japón 2 Film Color**<br>
Estas imágenes fueron tomadas con cámara ánaloga en mi segundo viaje a Japón.


Paisaje y Foto Urbana. Analogo. <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>