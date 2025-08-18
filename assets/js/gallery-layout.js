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
        addModalFeature(loadedImages);
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
        row.appendChild(cell);
      });
      gallery.appendChild(row);
    }
  }

  // -------- Modal with Close Button --------
  function addModalFeature(images) {
    // Create modal container
    let modal = document.createElement("div");
    modal.id = "simpleModal";
    modal.style.display = "none";
    modal.style.position = "fixed";
    modal.style.top = 0;
    modal.style.left = 0;
    modal.style.width = "100%";
    modal.style.height = "100%";
    modal.style.background = "rgba(0,0,0,0.85)";
    modal.style.justifyContent = "center";
    modal.style.alignItems = "center";
    modal.style.zIndex = 9999;
    modal.style.cursor = "pointer";
    modal.style.display = "none";

    // Modal image
    const modalImg = document.createElement("img");
    modalImg.style.maxWidth = "90%";
    modalImg.style.maxHeight = "90%";
    modalImg.style.borderRadius = "8px";
    modalImg.style.boxShadow = "0 10px 40px rgba(0,0,0,.5)";
    modal.appendChild(modalImg);

    // Close button
    const closeBtn = document.createElement("span");
    closeBtn.innerHTML = "&times;";
    closeBtn.style.position = "absolute";
    closeBtn.style.top = "20px";
    closeBtn.style.right = "30px";
    closeBtn.style.fontSize = "2.5rem";
    closeBtn.style.color = "#fff";
    closeBtn.style.cursor = "pointer";
    closeBtn.style.userSelect = "none";
    closeBtn.addEventListener("click", e => {
      e.stopPropagation(); // prevent modal background click
      modal.style.display = "none";
    });
    modal.appendChild(closeBtn);

    // Close modal when clicking background
    modal.addEventListener("click", () => {
      modal.style.display = "none";
    });

    document.body.appendChild(modal);

    // Add click events to gallery images
    images.forEach(img => {
      img.style.cursor = "pointer";
      img.addEventListener("click", e => {
        e.stopPropagation();
        modalImg.src = img.src;
        modal.style.display = "flex";
      });
    });
  }
}
