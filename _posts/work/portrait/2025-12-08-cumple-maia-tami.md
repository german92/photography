---
layout: post
title: Maia y Tami
categories: work portrait
thumbnail: "/assets/images/work/portrait/cumple-maia-tami/cumple-maia-tami-09.jpg"
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/cumple-maia-tami'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Cumpelaños Maia y Tami**<br>
Fotografía profesional de cumpleaños para Maia y Tami


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

