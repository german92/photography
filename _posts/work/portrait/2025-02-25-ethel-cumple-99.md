---
layout: post
title: Ethel
categories: work portrait
thumbnail: "/assets/images/work/portrait/ethel-cumple-99/ethel-cumple-99-27.jpg"
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/ethel-cumple-99'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Ethel**<br>
Fotografía para el cumpleaños 99 de Ethel Goldberg.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

