
export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    if (url.pathname === "/api/counter") {
      const type = (url.searchParams.get("type") || "").slice(0,32);
      const key = (url.searchParams.get("key") || "").slice(0,120);
      const increment = url.searchParams.get("increment") === "1";
      if (!type || !key) return Response.json({error:"missing parameters"},{status:400});
      if (!env.DB) return Response.json({count:0,configured:false});
      await env.DB.prepare("CREATE TABLE IF NOT EXISTS counters (type TEXT NOT NULL, key TEXT NOT NULL, count INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(type,key))").run();
      if (increment) {
        await env.DB.prepare("INSERT INTO counters(type,key,count) VALUES(?1,?2,1) ON CONFLICT(type,key) DO UPDATE SET count=count+1").bind(type,key).run();
      } else {
        await env.DB.prepare("INSERT OR IGNORE INTO counters(type,key,count) VALUES(?1,?2,0)").bind(type,key).run();
      }
      const row = await env.DB.prepare("SELECT count FROM counters WHERE type=?1 AND key=?2").bind(type,key).first();
      return Response.json({count:row?.count||0,configured:true},{headers:{"Cache-Control":"no-store"}});
    }
    return env.ASSETS.fetch(request);
  }
};
