/**
 * ESMERY PORTFOLIO - MAIN JAVASCRIPT
 * Universal logic for Theme, Language, Modals, Videos & Interactions.
 */

(function () {
  'use strict';

  // ---------------------------------------------------------------------------
  // 1. THEME MANAGER (Light / Dark Mode)
  // ---------------------------------------------------------------------------
  const ThemeManager = {
    STORAGE_KEY: 'esm-theme',

    init() {
      const saved = localStorage.getItem(this.STORAGE_KEY) || 'light';
      this.apply(saved);

      document.querySelectorAll('.esm-theme-btn').forEach(btn => {
        btn.addEventListener('click', () => this.toggle());
      });
    },

    get() {
      return document.body.dataset.esmTheme || 'light';
    },

    apply(theme) {
      document.body.dataset.esmTheme = theme;
      localStorage.setItem(this.STORAGE_KEY, theme);

      // Update theme toggle icons (☾ for light, ☀ for dark)
      document.querySelectorAll('.esm-theme-btn').forEach(btn => {
        btn.textContent = theme === 'light' ? '☾' : '☀';
        btn.setAttribute('aria-label', theme === 'light' ? 'Chuyển sang chế độ tối' : 'Chuyển sang chế độ sáng');
      });

      // Synchronize hero videos if present
      this.syncHeroVideos();
    },

    toggle() {
      const next = this.get() === 'light' ? 'dark' : 'light';
      this.apply(next);
    },

    syncHeroVideos() {
      const isDark = this.get() === 'dark';
      const isMobile = window.matchMedia('(max-width: 768px)').matches;

      document.querySelectorAll('#esm-hero-video video, #esm-hero-video-light video').forEach(v => {
        const isLightContainer = v.parentElement && v.parentElement.id === 'esm-hero-video-light';
        const matchesTheme = isLightContainer ? !isDark : isDark;
        const matchesScreen = v.classList.contains('esm-hv-mb') === isMobile;
        const shouldPlay = matchesTheme && matchesScreen;

        if (shouldPlay) {
          v.muted = true;
          if (v.paused) v.play().catch(() => {});
        } else if (!v.paused) {
          v.pause();
        }
      });
    }
  };

  // ---------------------------------------------------------------------------
  // 2. LANGUAGE MANAGER (Vietnamese / English)
  // ---------------------------------------------------------------------------
  const LangManager = {
    STORAGE_KEY: 'esm-lang',

    init() {
      const saved = localStorage.getItem(this.STORAGE_KEY) || 'vi';
      this.apply(saved);

      document.querySelectorAll('.esm-lang-toggle').forEach(toggle => {
        toggle.addEventListener('click', () => this.toggle());
      });
    },

    get() {
      return document.body.dataset.esmLang || 'vi';
    },

    apply(lang) {
      document.body.dataset.esmLang = lang;
      localStorage.setItem(this.STORAGE_KEY, lang);

      // Update elements with data-vi and data-en
      document.querySelectorAll('[data-vi][data-en]').forEach(el => {
        const text = lang === 'vi' ? el.getAttribute('data-vi') : el.getAttribute('data-en');
        if (el.tagName === 'INPUT' || el.tagName === 'TEXTAREA') {
          el.placeholder = text;
        } else {
          el.innerHTML = text;
        }
      });

      // Update elements with separate vi/en child blocks
      document.querySelectorAll('.lang-block-vi').forEach(el => {
        el.style.display = lang === 'vi' ? '' : 'none';
      });
      document.querySelectorAll('.lang-block-en').forEach(el => {
        el.style.display = lang === 'en' ? '' : 'none';
      });
    },

    toggle() {
      const next = this.get() === 'vi' ? 'en' : 'vi';
      this.apply(next);
    }
  };

  // ---------------------------------------------------------------------------
  // 3. CONSULTATION / BOOKING 2-STEP MODAL
  // ---------------------------------------------------------------------------
  const ConsultationModal = {
    step: 0,
    services: [],

    init() {
      // Bind CTA buttons with data-open-modal or .esm-cta-btn
      document.querySelectorAll('[data-open-modal="consultation"], .esm-cta-btn, a[href="#contact-modal"]').forEach(btn => {
        btn.addEventListener('click', (e) => {
          e.preventDefault();
          this.open();
        });
      });

      const modal = document.getElementById('esm-consultation-modal');
      if (!modal) return;

      // Close buttons & Backdrop click
      modal.querySelectorAll('[data-close-modal]').forEach(btn => {
        btn.addEventListener('click', () => this.close());
      });
      modal.addEventListener('click', (e) => {
        if (e.target === modal) this.close();
      });

      // ESC key to close
      window.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && modal.classList.contains('active')) {
          this.close();
        }
      });

      // Service chip toggles
      modal.querySelectorAll('.esm-service-chip').forEach(chip => {
        chip.addEventListener('click', () => {
          chip.classList.toggle('selected');
          const val = chip.getAttribute('data-service');
          if (chip.classList.contains('selected')) {
            if (!this.services.includes(val)) this.services.push(val);
          } else {
            this.services = this.services.filter(s => s !== val);
          }
        });
      });

      // Next button (Step 1 -> Step 2)
      const nextBtn = document.getElementById('esm-form-next-btn');
      if (nextBtn) {
        nextBtn.addEventListener('click', () => this.validateAndNext());
      }

      // Prev button (Step 2 -> Step 1)
      const prevBtn = document.getElementById('esm-form-prev-btn');
      if (prevBtn) {
        prevBtn.addEventListener('click', () => this.goToStep(0));
      }

      // Submit button
      const submitBtn = document.getElementById('esm-form-submit-btn');
      if (submitBtn) {
        submitBtn.addEventListener('click', () => this.submit());
      }

      // Done button
      const doneBtn = document.getElementById('esm-form-done-btn');
      if (doneBtn) {
        doneBtn.addEventListener('click', () => this.close());
      }
    },

    open() {
      const modal = document.getElementById('esm-consultation-modal');
      if (!modal) return;
      this.goToStep(0);
      modal.classList.add('active');
      document.body.style.overflow = 'hidden';
    },

    close() {
      const modal = document.getElementById('esm-consultation-modal');
      if (!modal) return;
      modal.classList.remove('active');
      document.body.style.overflow = '';
    },

    goToStep(stepNum) {
      this.step = stepNum;
      const step1El = document.getElementById('esm-modal-step-1');
      const step2El = document.getElementById('esm-modal-step-2');
      const step3El = document.getElementById('esm-modal-step-success');
      const ind1 = document.getElementById('esm-modal-ind-1');
      const ind2 = document.getElementById('esm-modal-ind-2');

      if (step1El) step1El.style.display = stepNum === 0 ? 'flex' : 'none';
      if (step2El) step2El.style.display = stepNum === 1 ? 'flex' : 'none';
      if (step3El) step3El.style.display = stepNum === 2 ? 'flex' : 'none';

      if (ind1 && ind2) {
        ind1.style.color = stepNum === 0 ? 'var(--text)' : 'var(--faint)';
        ind2.style.color = stepNum === 1 ? 'var(--text)' : 'var(--faint)';
      }
    },

    validateAndNext() {
      const nameInput = document.getElementById('esm-form-name');
      const emailInput = document.getElementById('esm-form-email');
      const phoneInput = document.getElementById('esm-form-phone');
      const descInput = document.getElementById('esm-form-desc');
      const nameErr = document.getElementById('esm-err-name');
      const emailErr = document.getElementById('esm-err-email');

      let valid = true;
      if (!nameInput || !nameInput.value.trim()) {
        if (nameErr) nameErr.style.display = 'block';
        if (nameInput) nameInput.style.borderColor = 'var(--error)';
        valid = false;
      } else {
        if (nameErr) nameErr.style.display = 'none';
        if (nameInput) nameInput.style.borderColor = 'var(--hair)';
      }

      if (!emailInput || !emailInput.value.includes('@')) {
        if (emailErr) emailErr.style.display = 'block';
        if (emailInput) emailInput.style.borderColor = 'var(--error)';
        valid = false;
      } else {
        if (emailErr) emailErr.style.display = 'none';
        if (emailInput) emailInput.style.borderColor = 'var(--hair)';
      }

      if (!valid) return;

      // Populate review values in Step 2
      const revName = document.getElementById('esm-rev-name');
      const revEmail = document.getElementById('esm-rev-email');
      const revPhone = document.getElementById('esm-rev-phone');
      const revServices = document.getElementById('esm-rev-services');
      const revDesc = document.getElementById('esm-rev-desc');

      if (revName) revName.textContent = nameInput.value;
      if (revEmail) revEmail.textContent = emailInput.value;
      if (revPhone) revPhone.textContent = phoneInput ? phoneInput.value || '—' : '—';
      if (revServices) revServices.textContent = this.services.length ? this.services.join(', ') : '—';
      if (revDesc) revDesc.textContent = descInput ? descInput.value || '—' : '—';

      this.goToStep(1);
    },

    submit() {
      // Simulate submission success
      this.goToStep(2);
    }
  };

  // ---------------------------------------------------------------------------
  // 4. BACK TO TOP BUTTON
  // ---------------------------------------------------------------------------
  function initBackToTop() {
    const fab = document.querySelector('.esm-fab-top');
    if (!fab) return;

    window.addEventListener('scroll', () => {
      if (window.scrollY > 300) {
        fab.style.opacity = '1';
        fab.style.pointerEvents = 'auto';
      } else {
        fab.style.opacity = '0.6';
      }
    });

    fab.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  }

  // ---------------------------------------------------------------------------
  // 5. INTERACTIVE CARDS (Slideshow on hover & Video hover preview)
  // ---------------------------------------------------------------------------
  function initInteractiveCards() {
    // Image Slideshow on Hover
    document.querySelectorAll('[data-slideshow]').forEach(container => {
      const images = container.querySelectorAll('img');
      if (images.length <= 1) return;

      let idx = 0;
      let timer = null;

      container.addEventListener('mouseenter', () => {
        clearInterval(timer);
        timer = setInterval(() => {
          images[idx].style.opacity = '0';
          idx = (idx + 1) % images.length;
          images[idx].style.opacity = '1';
        }, 450);
      });

      container.addEventListener('mouseleave', () => {
        clearInterval(timer);
        images.forEach((img, i) => {
          img.style.opacity = i === 0 ? '1' : '0';
        });
        idx = 0;
      });
    });

    // Video Hover on AI Video Card
    document.querySelectorAll('[data-hover-video]').forEach(container => {
      const video = container.querySelector('video');
      const thumb = container.querySelector('img');
      if (!video) return;

      container.addEventListener('mouseenter', () => {
        const src = video.getAttribute('data-src');
        if (src && !video.src) video.src = src;
        video.currentTime = 0;
        video.play().catch(() => {});
        if (thumb) thumb.style.opacity = '0';
        video.style.opacity = '1';
      });

      container.addEventListener('mouseleave', () => {
        video.pause();
        video.currentTime = 0;
        if (thumb) thumb.style.opacity = '1';
        video.style.opacity = '0';
      });
    });
  }

  // ---------------------------------------------------------------------------
  // 6. INITIALIZATION ON DOM READY
  // ---------------------------------------------------------------------------
  document.addEventListener('DOMContentLoaded', () => {
    ThemeManager.init();
    LangManager.init();
    ConsultationModal.init();
    initBackToTop();
    initInteractiveCards();

    // Listen for resize to update hero video
    window.matchMedia('(max-width: 768px)').addEventListener('change', () => {
      ThemeManager.syncHeroVideos();
    });
  });

  // Export globally for inline triggers if needed
  window.Esmery = {
    ThemeManager,
    LangManager,
    ConsultationModal
  };

})();
