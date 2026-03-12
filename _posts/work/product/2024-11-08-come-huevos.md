---
layout: post
title: Come Huevos
categories: work product
thumbnail: "/assets/images/work/product/come-huevos/come-huevos3.jpg"
image: "/assets/images/work/product/come-huevos/come-huevos3.jpg"
description: "Fotografía publicitaria para Come Huevos en Costa Rica. Imágenes de producto creativas por German Ostaszynski."
---

<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/product/come-huevos'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**Come Huevos**<br>
Serie de imagenes para fotografía de modas inspirada en la cultura "come huevos". Se busca resaltar lo "kitsch" y los flashes intesos con fuerte contraste. La sesión fue tomada en el puerto de Puntarenas. 


Publicitaria. Digital. <br>
Puntarenas, Costa Rica  <br>
2024




<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

