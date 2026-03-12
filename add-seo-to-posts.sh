#!/bin/bash
# Run this from the ROOT of your Jekyll repo:
#   bash add-seo-to-posts.sh

add_seo() {
  FILE=$1
  IMAGE=$2
  DESC=$3

  # Skip if description already exists
  if grep -q "^description:" "$FILE"; then
    echo "SKIP (already has description): $FILE"
    return
  fi

  # Insert image: and description: after the thumbnail: line
  sed -i '' "/^thumbnail:/a\\
image: \"$IMAGE\"\\
description: \"$DESC\"
" "$FILE"

  echo "DONE: $FILE"
}

# =============================================================================
# WORK — PORTRAIT
# =============================================================================
add_seo "_posts/work/portrait/2023-12-08-jose-maria-gallegos.md" \
  "/assets/images/work/portrait/chema/chema-7.jpg" \
  "Sesión de retrato con José María Gallegos en Costa Rica. Fotografía documental y emocional por German Ostaszynski."

add_seo "_posts/work/portrait/2024-06-08-lisa-embarazo.md" \
  "/assets/images/work/portrait/lisa-embarazo/lisa-embarazo-1.jpg" \
  "Sesión de fotografía de embarazo con Lisa en Costa Rica. Imágenes íntimas y emotivas por German Ostaszynski."

add_seo "_posts/work/portrait/2024-10-01-valery.md" \
  "/assets/images/work/portrait/valery/valery.jpeg" \
  "Sesión de retrato con Valery en Costa Rica. Fotografía natural y honesta por German Ostaszynski."

add_seo "_posts/work/portrait/2025-02-25-ethel-cumple-99.md" \
  "/assets/images/work/portrait/ethel-cumple-99/ethel-cumple-99-27.jpg" \
  "Celebración de 99 años de Ethel en Costa Rica. Fotografía de evento y retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2025-03-14-juanca-gr.md" \
  "/assets/images/work/portrait/juanca-GR/juanca-GR-9.jpg" \
  "Getting ready antes de la boda de Juanca en Costa Rica. Fotografía documental de bodas por German Ostaszynski."

add_seo "_posts/work/portrait/2025-03-15-boda-juaca-toti.md" \
  "/assets/images/work/portrait/boda-juanca-toti/boda-juanca-toti-33.jpg" \
  "Boda de Juanca y Toti en Costa Rica. Reportaje fotográfico documental y emocional por German Ostaszynski."

add_seo "_posts/work/portrait/2025-06-03-kevin.md" \
  "/assets/images/work/portrait/kevin/kevin-2.jpg" \
  "Sesión de retrato con Kevin en Costa Rica. Fotografía honesta y natural por German Ostaszynski."

add_seo "_posts/work/portrait/2025-06-26-dr-grunhaus.md" \
  "/assets/images/work/portrait/arieh/dr-arieh-6.jpg" \
  "Retrato profesional del Dr. Grunhaus en Costa Rica. Fotografía corporativa y de retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2025-06-27-abigail.md" \
  "/assets/images/work/portrait/abigail-cumple-1/Abigail-34.jpg" \
  "Sesión de cumpleaños de Abigail en Costa Rica. Fotografía de celebración y retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2025-08-20-enraizados.md" \
  "/assets/images/work/portrait/enraizados/enraizados-33.jpg" \
  "Sesión fotográfica con José de Enraizados en Costa Rica. Retrato documental y auténtico por German Ostaszynski."

add_seo "_posts/work/portrait/2025-08-25-oc-eventos.md" \
  "/assets/images/work/portrait/oc-eventos/oc-eventos-2.jpg" \
  "Cobertura fotográfica de Eventos OC en Costa Rica. Fotografía de eventos corporativos por German Ostaszynski."

add_seo "_posts/work/portrait/2025-09-13-boda-mariajose-bernardo.md" \
  "/assets/images/work/portrait/boda-mariajoseybernardo/boda-mariajoseybernardo-32.jpg" \
  "Boda de María José y Bernardo en Costa Rica. Reportaje fotográfico documental y emocional por German Ostaszynski."

add_seo "_posts/work/portrait/2025-10-04-compromiso-cinthya-luis.md" \
  "/assets/images/work/portrait/compromiso-cinthya-luis/compromiso-cinthya-luis-24.jpg" \
  "Sesión de compromiso de Cinthya y Luis en Costa Rica. Fotografía romántica y documental por German Ostaszynski."

add_seo "_posts/work/portrait/2025-10-11-compromiso-andrea-ariel.md" \
  "/assets/images/work/portrait/compromiso-andrea-ariel/compromiso-andrea-ariel-14.jpg" \
  "Sesión de compromiso de Andrea y Ariel en Costa Rica. Fotografía emotiva y natural por German Ostaszynski."

add_seo "_posts/work/portrait/2025-10-26-yoga-ananda.md" \
  "/assets/images/work/portrait/yoga-juli/yoga-juli-8.jpg" \
  "Sesión fotográfica para Ananda Yoga en Costa Rica. Fotografía de marca y retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2025-12-08-cumple-maia-tami.md" \
  "/assets/images/work/portrait/cumple-maia-tami/cumple-maia-tami-09.jpg" \
  "Celebración de cumpleaños de Maia y Tami en Costa Rica. Fotografía de evento y retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2025-12-19-bar-mitzvah-jonathan-froimzon.md" \
  "/assets/images/work/portrait/shabat-jonathan-froimzon/shabat-jonathan-froimzon-19.jpg" \
  "Bar Mitzvah de Jonathan Froimzon en Costa Rica. Cobertura fotográfica documental por German Ostaszynski."

add_seo "_posts/work/portrait/2026-02-19-cumple-50-erika-rubinstein.md" \
  "/assets/images/work/portrait/cumple50-erika-rubinstein/Erika-Rubinstein-5.jpg" \
  "Celebración de 50 años de Erika Rubinstein en Costa Rica. Fotografía de evento y retrato por German Ostaszynski."

add_seo "_posts/work/portrait/2026-02-22-compromiso-susan-cristian.md" \
  "/assets/images/work/portrait/compromiso-susan-cristian/compromiso-susan-cristian-14.jpg" \
  "Sesión de compromiso de Susan y Cristian en Costa Rica. Fotografía romántica y emotiva por German Ostaszynski."

# =============================================================================
# WORK — PRODUCT
# =============================================================================
add_seo "_posts/work/product/2024-08-15-fresa-leche.md" \
  "/assets/images/work/product/fresa.jpg" \
  "Fotografía publicitaria de producto — Fresa en Leche. Imágenes creativas para marca por German Ostaszynski en Costa Rica."

add_seo "_posts/work/product/2024-08-15-tostitos.md" \
  "/assets/images/work/product/comida-thumb.jpg" \
  "Fotografía publicitaria de alimentos — Mejitos y Chunky. Imágenes creativas de producto por German Ostaszynski en Costa Rica."

add_seo "_posts/work/product/2024-08-15-whiskey.md" \
  "/assets/images/work/product/whiskey-thumb.jpg" \
  "Fotografía publicitaria de whiskey Old Par en Costa Rica. Imágenes creativas de producto por German Ostaszynski."

add_seo "_posts/work/product/2024-11-08-come-huevos.md" \
  "/assets/images/work/product/come-huevos/come-huevos3.jpg" \
  "Fotografía publicitaria para Come Huevos en Costa Rica. Imágenes de producto creativas por German Ostaszynski."

add_seo "_posts/work/product/2025-06-25-bebidas.md" \
  "/assets/images/work/product/bebidas/final_lata.jpeg" \
  "Fotografía publicitaria de bebidas en Costa Rica. Imágenes creativas de producto por German Ostaszynski."

add_seo "_posts/work/product/2025-06-25-helado.md" \
  "/assets/images/work/product/helado.jpeg" \
  "Fotografía publicitaria de helado en Costa Rica. Imágenes creativas de producto por German Ostaszynski."

add_seo "_posts/work/product/2025-06-30-mini.md" \
  "/assets/images/work/product/mini.jpeg" \
  "Fotografía publicitaria del Mini Cooper en Costa Rica. Fotografía automotriz creativa por German Ostaszynski."

add_seo "_posts/work/product/2025-08-18-pentimento.md" \
  "/assets/images/work/product/pentimento/2.jpg" \
  "Fotografía publicitaria para Pentimento en Costa Rica. Imágenes creativas de producto por German Ostaszynski."

# =============================================================================
# PROJECTS — CONCEPTUAL
# =============================================================================
add_seo "_posts/projects/conceptual/2022-01-01-intimidad.md" \
  "/assets/images/projects/conceptual/intimidad/cubismo-4.jpg" \
  "Proyecto fotográfico conceptual — Intimidad. Exploración visual de la cercanía y la vulnerabilidad por German Ostaszynski."

add_seo "_posts/projects/conceptual/2022-01-01-long-road.md" \
  "/assets/images/projects/conceptual/long-road/avellanas.jpg" \
  "Proyecto fotográfico conceptual — Long Road. Reflexión visual sobre el camino y el tiempo por German Ostaszynski."

add_seo "_posts/projects/conceptual/2023-04-01-lifeguard-torwes.md" \
  "/assets/images/projects/conceptual/lifeguard/lifeguard-1.jpg" \
  "Proyecto fotográfico conceptual — Lifeguard Towers. Exploración visual de la vigilancia y la soledad por German Ostaszynski."

add_seo "_posts/projects/conceptual/2023-12-01-oceans.md" \
  "/assets/images/projects/conceptual/ocean/ocean-1.jpg" \
  "Proyecto fotográfico conceptual — Ocean. Exploración visual del mar y la inmensidad por German Ostaszynski."

add_seo "_posts/projects/conceptual/2023-12-15-inner-thoughts.md" \
  "/assets/images/projects/conceptual/doble-exposicion/doble-exposicion-1.jpg" \
  "Proyecto fotográfico conceptual — Inner Thoughts. Doble exposición y exploración del mundo interior por German Ostaszynski."

add_seo "_posts/projects/conceptual/2024-12-15-paco-y-lola.md" \
  "/assets/images/projects/conceptual/paco-lola/paco-lola-3.jpg" \
  "Proyecto fotográfico conceptual — Paco y Lola. Narrativa visual íntima y emotiva por German Ostaszynski."

add_seo "_posts/projects/conceptual/2025-04-08-caverna-transaprente.md" \
  "/assets/images/projects/conceptual/caverna-transparente/caverna-transparente.jpg" \
  "Proyecto fotográfico conceptual — Caverna Transparente. Exploración visual de la introspección por German Ostaszynski."

add_seo "_posts/projects/conceptual/2025-06-11-still-lfie.md" \
  "/assets/images/projects/conceptual/still-life/still-life-huevo-thumb.jpg" \
  "Proyecto fotográfico conceptual — Still Life. Naturaleza muerta y exploración visual por German Ostaszynski."

# =============================================================================
# PROJECTS — STREET PHOTO
# =============================================================================
add_seo "_posts/projects/street-photo/2024-03-29-japon.md" \
  "/assets/images/projects/street-photo/japon1/Japon0027.jpg" \
  "Fotografía de calle en Japón. Serie documental urbana captada por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-07-04-new-york-film-bw.md" \
  "/assets/images/projects/street-photo/new-york-film-bw/new-york-film-bw-17.jpg" \
  "Fotografía de calle en Nueva York en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-09-02-italia-film-bw.md" \
  "/assets/images/projects/street-photo/italia-film-bw/italia-film-bw-8.jpg" \
  "Fotografía de calle en Italia en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-09-02-italia-film-color.md" \
  "/assets/images/projects/street-photo/italia-film-color/italia-film-color-37.jpg" \
  "Fotografía de calle en Italia en color en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-10-15-bogota-film-bw.md" \
  "/assets/images/projects/street-photo/bogota/bogota-7.jpg" \
  "Fotografía de calle en Bogotá en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-12-23-rio-film-bw.md" \
  "/assets/images/projects/street-photo/rio-film-bw/rio-film-bw-2.jpg" \
  "Fotografía de calle en Río de Janeiro en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-12-24-rio-film-color.md" \
  "/assets/images/projects/street-photo/rio-film-color/rio-film-color-11.jpg" \
  "Fotografía de calle en Río de Janeiro en color en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2024-12-30-iguazu.md" \
  "/assets/images/projects/street-photo/iguazu/iguazu-6.jpg" \
  "Fotografía de las Cataratas del Iguazú. Serie documental y paisajística por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-01-01-buenos-aires-film-color.md" \
  "/assets/images/projects/street-photo/buenos-aires-film-color/buenos-aires-film-color-16.jpg" \
  "Fotografía de calle en Buenos Aires en color en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-01-02-buenos-aires-film-bw.md" \
  "/assets/images/projects/street-photo/buenos-aires-film-bw/buenos-aires-film-bw-10.jpg" \
  "Fotografía de calle en Buenos Aires en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-01-26-cartagena-film-color.md" \
  "/assets/images/projects/street-photo/cartagena-film-color/cartagena-film-color-11.jpg" \
  "Fotografía de calle en Cartagena en color en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-01-27-cartagena-film-bw.md" \
  "/assets/images/projects/street-photo/cartagena-film-bw/cartagena-film-bw-8.jpg" \
  "Fotografía de calle en Cartagena en blanco y negro en película análoga. Serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-06-15-japon2-film-bw.md" \
  "/assets/images/projects/street-photo/japon2-film-bw/japon2_film-1.jpg" \
  "Fotografía de calle en Japón en blanco y negro en película análoga. Segunda serie documental por German Ostaszynski."

add_seo "_posts/projects/street-photo/2025-06-15-japon2-film-color.md" \
  "/assets/images/projects/street-photo/japon2-film-color/japon2_film_color-22.jpg" \
  "Fotografía de calle en Japón en color en película análoga. Segunda serie documental por German Ostaszynski."

echo ""
echo "All done! Run: bundle exec jekyll serve to verify."
