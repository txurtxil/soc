package defpackage;

import android.content.SharedPreferences;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: dk  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class dk implements ch {
    public final /* synthetic */ fk a;
    public final /* synthetic */ int b;

    public /* synthetic */ dk(int i, fk fkVar) {
        this.a = fkVar;
        this.b = i;
    }

    @Override // defpackage.ch
    public final Object b(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        fk fkVar = this.a;
        List list = fkVar.c0;
        if (list != null) {
            int i = this.b;
            list.set(i, new ck(((ck) list.get(i)).a, booleanValue));
            SharedPreferences sharedPreferences = fkVar.b0;
            if (sharedPreferences != null) {
                List list2 = fkVar.c0;
                if (list2 != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (ck ckVar : v9.C(list2)) {
                        jSONArray.put(new JSONObject().put("pkg", ckVar.a).put("on", ckVar.b));
                    }
                    sharedPreferences.edit().putString("launch_shortcuts", jSONArray.toString()).apply();
                    return f60.a;
                }
                qj.v("model");
                throw null;
            }
            qj.v("prefs");
            throw null;
        }
        qj.v("model");
        throw null;
    }
}
