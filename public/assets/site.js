
async function counter(type,key,increment=false){
  const el=document.querySelector(`[data-counter="${type}:${key}"]`);
  if(!el) return;
  try{
    const url=`/api/counter?type=${encodeURIComponent(type)}&key=${encodeURIComponent(key)}${increment?'&increment=1':''}`;
    const r=await fetch(url,{cache:'no-store'});
    if(!r.ok) throw new Error();
    const d=await r.json();
    el.textContent=Number(d.count||0).toLocaleString();
  }catch(e){el.textContent='Pending setup';el.classList.add('pending')}
}
document.addEventListener('DOMContentLoaded',()=>{
  document.querySelectorAll('[data-page-view]').forEach(el=>counter('page',el.dataset.pageView,true));
  document.querySelectorAll('[data-counter]').forEach(el=>{
    const [type,key]=el.dataset.counter.split(':'); counter(type,key,false);
  });
  document.querySelectorAll('a[data-download-key]').forEach(a=>{
    a.addEventListener('click',()=>{fetch(`/api/counter?type=download&key=${encodeURIComponent(a.dataset.downloadKey)}&increment=1`,{keepalive:true}).catch(()=>{})});
  });
});
