---
layout: post
title: Andrea y Ariel
categories: work portrait wedding
thumbnail: "/assets/images/work/portrait/compromiso-andrea-ariel/compromiso-andrea-ariel-14.jpg"
image: "/assets/images/work/portrait/compromiso-andrea-ariel/compromiso-andrea-ariel-14.jpg"
description: "Sesión de compromiso de Andrea y Ariel en Costa Rica. Fotografía emotiva y natural por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/compromiso-andrea-ariel'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Compromiso Andrea y Ariel**<br>
Fotografía profesional de compromiso de Andrea y Ariel.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

