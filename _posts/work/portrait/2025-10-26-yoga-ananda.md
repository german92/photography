---
layout: post
title: Ananda Yoga
categories: work portrait
thumbnail: "/assets/images/work/portrait/yoga-juli/yoga-juli-8.jpg"
image: "/assets/images/work/portrait/yoga-juli/yoga-juli-8.jpg"
description: "Sesión fotográfica para Ananda Yoga en Costa Rica. Fotografía de marca y retrato por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/yoga-juli'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Ananda Yoga**<br>
Fotografía profesional para Juli y Fanny.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

