---
layout: post
title: Juanca & Toti
categories: work portrait wedding
thumbnail: "/assets/images/work/portrait/boda-juanca-toti/boda-juanca-toti-33.jpg"
image: "/assets/images/work/portrait/boda-juanca-toti/boda-juanca-toti-33.jpg"
description: "Boda de Juanca y Toti en Costa Rica. Reportaje fotográfico documental y emocional por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/boda-juanca-toti'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Boda Juanca y Toti**<br>
Fotografía profesional de boda (ceremonia y fiesta) de Juan Carlos Alvarado y Victoria Arrea.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

