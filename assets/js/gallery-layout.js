function initGalleryLayout() {
  const gallery = document.getElementById("gallery");
  if (!gallery) return;

  const rawImages = Array.from(gallery.querySelectorAll(".gallery-image"));
  const layoutPattern = [3, 2, 1, 2, 3, 1];
  let layoutIndex = 0;

  gallery.innerHTML = "";

  const validImages = [];

  rawImages.forEach((img, i) => {
    const newImg = new Image();
    newImg.src = img.dataset.src;
    newImg.alt = img.alt || "";
    newImg.className = "gallery-image";

    newImg.onload = () => {
      validImages[i] = newImg;
      buildLayout(validImages.filter(Boolean));
      addModalFeature(validImages.filter(Boolean));
    };

    newImg.onerror = () => {
      validImages[i] = null;
    };
  });

  function buildLayout(images) {
    gallery.innerHTML = "";
    layoutIndex = 0;

    const queue = [...images];

    while (queue.length > 0) {
      const next3 = queue.slice(0, 3);
      const portraitIndex = next3.findIndex(img => (img.naturalWidth / img.naturalHeight) < 1.0);

      if (portraitIndex !== -1 && queue.length >= 3) {
        const portraitImg = queue.splice(portraitIndex, 1)[0];
        const land1 = queue.shift();
        const land2 = queue.shift();

        const row = document.createElement("div");
        row.className = "layout-row layout-portrait-anchor";

        const leftCell = document.createElement("div");
        leftCell.className = "cell cell-portrait";
        leftCell.appendChild(portraitImg);

        const rightStack = document.createElement("div");
        rightStack.className = "cell-stack";

        const top = document.createElement("div");
        top.className = "cell";
        top.appendChild(land1);

        const bot = document.createElement("div");
        bot.className = "cell";
        bot.appendChild(land2);

        rightStack.appendChild(top);
        rightStack.appendChild(bot);
        row.appendChild(leftCell);
        row.appendChild(rightStack);
        gallery.appendChild(row);

      } else {
        const groupSize = Math.min(
          layoutPattern[layoutIndex % layoutPattern.length],
          queue.length
        );
        const row = document.createElement("div");
        row.className = `layout-row layout-${groupSize}`;
        for (let i = 0; i < groupSize; i++) {
          const cell = document.createElement("div");
          cell.className = "cell";
          cell.appendChild(queue.shift());
          row.appendChild(cell);
        }
        gallery.appendChild(row);
        layoutIndex++;
      }
    }
  }

  function addModalFeature(images) {
    const existing = document.getElementById("simpleModal");
    if (existing) existing.remove();

    let currentIndex = 0;

    const modal = document.createElement("div");
    modal.id = "simpleModal";
    Object.assign(modal.style, {
      display: "none",
      position: "fixed",
      top: 0, left: 0,
      width: "100%", height: "100%",
      background: "rgba(0,0,0,0.9)",
      justifyContent: "center",
      alignItems: "center",
      zIndex: 9999,
    });

    const modalImg = document.createElement("img");
    Object.assign(modalImg.style, {
      maxWidth: "85%",
      maxHeight: "85vh",
      borderRadius: "4px",
      boxShadow: "0 10px 40px rgba(0,0,0,.6)",
      transition: "opacity 0.2s ease",
      userSelect: "none",
    });
    modal.appendChild(modalImg);

    const counter = document.createElement("span");
    Object.assign(counter.style, {
      position: "absolute",
      bottom: "20px",
      left: "50%",
      transform: "translateX(-50%)",
      color: "rgba(255,255,255,0.6)",
      fontSize: "0.85rem",
      letterSpacing: "0.05em",
      userSelect: "none",
    });
    modal.appendChild(counter);

    const closeBtn = document.createElement("span");
    closeBtn.innerHTML = "&times;";
    Object.assign(closeBtn.style, {
      position: "absolute",
      top: "20px", right: "30px",
      fontSize: "2.5rem",
      color: "#fff",
      cursor: "pointer",
      userSelect: "none",
      lineHeight: 1,
    });
    modal.appendChild(closeBtn);

    const prevBtn = document.createElement("button");
    prevBtn.innerHTML = "&#8592;";
    Object.assign(prevBtn.style, {
      position: "absolute",
      left: "20px",
      top: "50%",
      transform: "translateY(-50%)",
      background: "rgba(255,255,255,0.15)",
      border: "none",
      color: "#fff",
      fontSize: "1.8rem",
      padding: "12px 18px",
      cursor: "pointer",
      borderRadius: "4px",
      userSelect: "none",
      transition: "background 0.2s",
    });
    prevBtn.addEventListener("mouseover", () => prevBtn.style.background = "rgba(255,255,255,0.3)");
    prevBtn.addEventListener("mouseout",  () => prevBtn.style.background = "rgba(255,255,255,0.15)");
    modal.appendChild(prevBtn);

    const nextBtn = document.createElement("button");
    nextBtn.innerHTML = "&#8594;";
    Object.assign(nextBtn.style, {
      position: "absolute",
      right: "20px",
      top: "50%",
      transform: "translateY(-50%)",
      background: "rgba(255,255,255,0.15)",
      border: "none",
      color: "#fff",
      fontSize: "1.8rem",
      padding: "12px 18px",
      cursor: "pointer",
      borderRadius: "4px",
      userSelect: "none",
      transition: "background 0.2s",
    });
    nextBtn.addEventListener("mouseover", () => nextBtn.style.background = "rgba(255,255,255,0.3)");
    nextBtn.addEventListener("mouseout",  () => nextBtn.style.background = "rgba(255,255,255,0.15)");
    modal.appendChild(nextBtn);

    document.body.appendChild(modal);

    function showImage(index) {
      currentIndex = (index + images.length) % images.length;
      modalImg.style.opacity = "0";
      setTimeout(() => {
        modalImg.src = images[currentIndex].src;
        modalImg.style.opacity = "1";
      }, 150);
      counter.textContent = `${currentIndex + 1} / ${images.length}`;
    }

    function openModal(index) {
      modal.style.display = "flex";
      showImage(index);
    }

    function closeModal() {
      modal.style.display = "none";
    }

    prevBtn.addEventListener("click", e => { e.stopPropagation(); showImage(currentIndex - 1); });
    nextBtn.addEventListener("click", e => { e.stopPropagation(); showImage(currentIndex + 1); });

    modal.addEventListener("click", closeModal);
    modalImg.addEventListener("click", e => e.stopPropagation());
    closeBtn.addEventListener("click", e => { e.stopPropagation(); closeModal(); });

    document.addEventListener("keydown", e => {
      if (modal.style.display === "none") return;
      if (e.key === "ArrowRight") showImage(currentIndex + 1);
      if (e.key === "ArrowLeft")  showImage(currentIndex - 1);
      if (e.key === "Escape")     closeModal();
    });

    let touchStartX = 0;
    modal.addEventListener("touchstart", e => { touchStartX = e.touches[0].clientX; }, { passive: true });
    modal.addEventListener("touchend", e => {
      const delta = e.changedTouches[0].clientX - touchStartX;
      if (Math.abs(delta) > 50) showImage(currentIndex + (delta < 0 ? 1 : -1));
    });

    images.forEach((img, i) => {
      img.style.cursor = "pointer";
      img.addEventListener("click", e => { e.stopPropagation(); openModal(i); });
    });
  }
}