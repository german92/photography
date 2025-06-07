function initGalleryLayout() {
  const gallery = document.getElementById("gallery");
  if (!gallery) return; // safety check

  const rawImages = Array.from(gallery.querySelectorAll(".gallery-image"));
  const layoutPattern = [3, 2, 1, 2, 3, 1];
  let layoutIndex = 0;

  gallery.innerHTML = "";

  const loadedImages = [];
  let loadedCount = 0;

  rawImages.forEach((img, i) => {
    const newImg = new Image();
    newImg.src = img.dataset.src;
    newImg.alt = img.alt || "";
    newImg.className = "gallery-image";

    newImg.onload = () => {
      loadedImages[i] = newImg;
      loadedCount++;

      if (loadedCount === rawImages.length) {
        buildLayout(loadedImages);
      }
    };
  });

  function buildLayout(images) {
    const rowBuffer = [];

    images.forEach(img => {
      const ratio = img.naturalWidth / img.naturalHeight;

      if (ratio < 1.2) {
        const wrapper = document.createElement("div");
        wrapper.className = "layout-full";
        wrapper.appendChild(img);
        gallery.appendChild(wrapper);
      } else {
        rowBuffer.push(img);

        const groupSize = layoutPattern[layoutIndex % layoutPattern.length];
        if (rowBuffer.length >= groupSize) {
          const row = document.createElement("div");
          row.className = `layout-row layout-${groupSize}`;
          for (let i = 0; i < groupSize; i++) {
            const cell = document.createElement("div");
            cell.className = "cell";
            cell.appendChild(rowBuffer.shift());
            row.appendChild(cell);
          }
          gallery.appendChild(row);
          layoutIndex++;
        }
      }
    });

    if (rowBuffer.length > 0) {
      const groupSize = rowBuffer.length;
      const row = document.createElement("div");
      row.className = `layout-row layout-${groupSize}`;
      rowBuffer.forEach(img => {
        const cell = document.createElement("div");
        cell.className = "cell";
        cell.appendChild(img);
        row.appendChild(row);
      });
      gallery.appendChild(row);
    }
  }
}
