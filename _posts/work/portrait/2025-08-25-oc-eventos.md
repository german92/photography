---
layout: post
title: Eventos OC
categories: work portrait
thumbnail: "/assets/images/work/portrait/oc-eventos/oc-eventos-2.jpg"
image: "/assets/images/work/portrait/oc-eventos/oc-eventos-2.jpg"
description: "Cobertura fotográfica de Eventos OC en Costa Rica. Fotografía de eventos corporativos por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/oc-eventos'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Eventos OC**<br>
Fotografía profesional para Eventos OC.


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

