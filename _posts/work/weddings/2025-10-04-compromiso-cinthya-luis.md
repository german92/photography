---
layout: post
title: Cinthya y Luis
categories: work portrait wedding
thumbnail: "/assets/images/work/portrait/compromiso-cinthya-luis/compromiso-cinthya-luis-24.jpg"
image: "/assets/images/work/portrait/compromiso-cinthya-luis/compromiso-cinthya-luis-24.jpg"
description: "Sesión de compromiso de Cinthya y Luis en Costa Rica. Fotografía romántica y documental por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/portrait/compromiso-cinthya-luis'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Compromiso Cinthya y Luis**<br>
Fotografía profesional de compromiso de Cinthya y Luis.


Retrato. Digital. <br>
Tarrazú, Costa Rica  <br>
2025


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

