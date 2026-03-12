---
layout: post
title: María José y Bernardo
categories: work portrait
thumbnail: "/assets/images/work/portrait/boda-mariajoseybernardo/boda-mariajoseybernardo-32.jpg"
image: "/assets/images/work/portrait/boda-mariajoseybernardo/boda-mariajoseybernardo-32.jpg"
description: "Boda de María José y Bernardo en Costa Rica. Reportaje fotográfico documental y emocional por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/boda-mariajoseybernardo'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Boda María José y Bernardo**<br>
Fotografía profesional de boda (ceremonia civil) de María José y Bernardo.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

