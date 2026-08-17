
async function counter(type,key,increment=false){const el=document.querySelector(`[data-counter="${type}:${key}"]`);if(!el)return;try{const u=`/api/counter?type=${encodeURIComponent(type)}&key=${encodeURIComponent(key)}${increment?'&increment=1':''}`;const r=await fetch(u,{cache:'no-store'});if(!r.ok)throw new Error();const d=await r.json();el.textContent=Number(d.count||0).toLocaleString()}catch(e){el.textContent='Pending setup';el.classList.add('pending')}}
document.addEventListener('DOMContentLoaded',()=>{document.querySelectorAll('[data-page-view]').forEach(el=>counter('page',el.dataset.pageView,true));document.querySelectorAll('[data-counter]').forEach(el=>{const [type,key]=el.dataset.counter.split(':');counter(type,key,false)});document.querySelectorAll('a[data-download-key]').forEach(a=>a.addEventListener('click',()=>fetch(`/api/counter?type=download&key=${encodeURIComponent(a.dataset.downloadKey)}&increment=1`,{keepalive:true}).catch(()=>{})));const search=document.querySelector('[data-repository-search]');if(search){search.addEventListener('input',()=>{const q=search.value.trim().toLowerCase();document.querySelectorAll('[data-repository-item]').forEach(item=>{item.hidden=q&&!item.textContent.toLowerCase().includes(q)})})}});

document.addEventListener('DOMContentLoaded',()=>{
  document.querySelectorAll('.interactive-map-frame').forEach(frame=>{
    frame.addEventListener('load',()=>{
      try{
        const doc=frame.contentDocument;
        const resize=()=>{
          const height=Math.max(640,doc.documentElement.scrollHeight,doc.body?.scrollHeight||0);
          frame.style.height=`${height+4}px`;
        };
        resize();
        if('ResizeObserver' in window){
          const observer=new ResizeObserver(resize);
          observer.observe(doc.documentElement);
          if(doc.body)observer.observe(doc.body);
        }
      }catch(error){
        /* The fixed CSS height remains available if the frame cannot be measured. */
      }
    });
  });
});
