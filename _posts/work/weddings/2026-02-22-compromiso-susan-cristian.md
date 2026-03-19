---
layout: post
title: Susan y Cristian
categories: work portrait wedding
thumbnail: "/assets/images/work/portrait/compromiso-susan-cristian/compromiso-susan-cristian-14.jpg"
image: "/assets/images/work/portrait/compromiso-susan-cristian/compromiso-susan-cristian-14.jpg"
description: "Sesión de compromiso de Susan y Cristian en Costa Rica. Fotografía romántica y emotiva por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/compromiso-susan-cristian'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Compromiso Susanc Cristian**<br>
Fotografía profesional del compromiso de Susan y Cristian


Retrato. Digital. <br>
San José, Costa Rica  <br>
2026


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

