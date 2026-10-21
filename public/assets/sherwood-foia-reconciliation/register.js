
(() => {
  const form = document.getElementById('filters');
  const input = document.getElementById('register-search');
  const request = document.getElementById('request-filter');
  const status = document.getElementById('status-filter');
  const cards = [...document.querySelectorAll('[data-request]')];
  function filter() {
    const terms = input.value.toLowerCase().trim().split(/\s+/).filter(Boolean);
    let total = 0, visible = 0;
    for (const card of cards) {
      let rows = 0;
      for (const row of card.querySelectorAll('[data-category]')) {
        const match = (!request.value || card.dataset.request === request.value)
          && (!status.value || row.dataset.status === status.value)
          && terms.every(term => row.dataset.search.includes(term));
        row.hidden = !match;
        rows += Number(match);
      }
      card.hidden = rows === 0;
      total += rows;
      visible += Number(rows > 0);
      if (rows && (terms.length || request.value || status.value)) card.open = true;
    }
    document.getElementById('result-count').textContent = `Showing ${visible} request${visible === 1 ? '' : 's'} and ${total} categor${total === 1 ? 'y' : 'ies'}.`;
    document.getElementById('no-results').hidden = total !== 0;
  }
  form.addEventListener('submit', event => event.preventDefault());
  form.addEventListener('input', filter);
  form.addEventListener('change', filter);
  form.addEventListener('reset', () => { setTimeout(() => { cards.forEach(c => c.open = false); filter(); }, 0); });
  document.getElementById('expand-all').addEventListener('click', event => {
    const visible = cards.filter(c => !c.hidden);
    const open = !visible.every(c => c.open);
    visible.forEach(c => c.open = open);
    event.currentTarget.textContent = open ? 'Collapse visible requests' : 'Expand visible requests';
  });
  function clearFilters() { input.value = ''; request.value = ''; status.value = ''; filter(); }
  function openHash() {
    const target = document.getElementById(location.hash.slice(1));
    if (target && target.matches('[data-request]')) {
      if (target.hidden) clearFilters();
      target.open = true;
    }
  }
  document.querySelectorAll('[data-open-request]').forEach(link => link.addEventListener('click', () => {
    clearFilters();
    document.getElementById('request-' + link.dataset.openRequest).open = true;
    setTimeout(openHash, 5);
  }));
  window.addEventListener('hashchange', openHash);
  filter(); openHash();
})();
