---
layout: post
title: José - Enraizados
categories: work portrait
thumbnail: "/assets/images/work/portrait/enraizados/enraizados-33.jpg"
image: "/assets/images/work/portrait/enraizados/enraizados-33.jpg"
description: "Sesión fotográfica con José de Enraizados en Costa Rica. Retrato documental y auténtico por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/enraizados'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="">
  {% endfor %}
</div>


<br>
**José - Enraizados**<br>
Fotografía profesional para el artista y ceramista José Montero. 


Retrato. Digital. <br>
San José, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

