---
layout: post
title: Erika Rubinstein
categories: work 
thumbnail: "/assets/images/work/portrait/cumple50-erika-rubinstein/Erika-Rubinstein-5.jpg"
image: "/assets/images/work/portrait/cumple50-erika-rubinstein/Erika-Rubinstein-5.jpg"
description: "Celebración de 50 años de Erika Rubinstein en Costa Rica. Fotografía de evento y retrato por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/cumple50-erika-rubinstein'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Cumpelaños 50 Erika Rubinstein**<br>
Fotografía profesional de cumpleaños para Erika Rubinstein


Retrato. Digital. <br>
San José, Costa Rica  <br>
2026


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

