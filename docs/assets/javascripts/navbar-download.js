(function () {
  function resolveBasePath() {
    var configEl = document.getElementById('__config');
    if (!configEl) return '.';
    try {
      var cfg = JSON.parse(configEl.textContent || '{}');
      return cfg.base || '.';
    } catch (e) {
      return '.';
    }
  }

  function injectPdfButton() {
    if (document.querySelector('.pdf-download-navbar-btn')) return;

    var headerInner = document.querySelector('.md-header__inner');
    if (!headerInner) return;

    var button = document.createElement('a');
    button.className = 'pdf-download-navbar-btn';
    var basePath = resolveBasePath().replace(/\/$/, '');
    button.href = basePath + '/assets/downloads/amazonface-data-curation-book.pdf';
    button.setAttribute('download', 'amazonface-data-curation-book.pdf');
    button.setAttribute('aria-label', 'Download complete book PDF');
    button.textContent = 'Download PDF';

    var titleEl = headerInner.querySelector('.md-header__title');
    if (titleEl && titleEl.nextSibling) {
      headerInner.insertBefore(button, titleEl.nextSibling);
    } else {
      headerInner.appendChild(button);
    }
  }

  document.addEventListener('DOMContentLoaded', injectPdfButton);
  window.addEventListener('load', injectPdfButton);
})();
