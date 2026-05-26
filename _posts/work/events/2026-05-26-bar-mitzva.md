---
layout: post
title: Bar Mitzva
categories: work event barmitzva
thumbnail: "/assets/images/work/event/bar-mitzvah/bar-mitzvah-froimzon-17.jpg"
image: "/assets/images/work/event/bar-mitzvah/bar-mitzvah-froimzon-17.jpg"
description: "Fotografía profesional para Bar Mitzva por German Ostaszynski."
---


<div class="photo-gallery" id="gallery">
  {% assign images = site.static_files | where_exp: "f", "f.path contains '/assets/images/work/event/bar-mitzvah'" %}
  {% for image in images %}
    <img 
      class="gallery-image hidden" 
      data-src="{{ image.path | relative_url }}" 
      alt="{{ page.description }}">
  {% endfor %}
</div>


<br>
**Bar Mitzva**<br>
Fotografía profesional para Bar Mitzva


Evento. Digital. <br>
2025-actualidad


<script>
  document.addEventListener("DOMContentLoaded", () => {
    initGalleryLayout();
  });
</script>

