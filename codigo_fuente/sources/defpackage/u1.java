package defpackage;

import androidx.activity.result.a;
import java.util.HashMap;
/* renamed from: u1  reason: default package */
/* loaded from: classes.dex */
public final class u1 extends s8 {
    public final /* synthetic */ String j;
    public final /* synthetic */ em k;
    public final /* synthetic */ a l;

    public u1(a aVar, String str, em emVar) {
        this.l = aVar;
        this.j = str;
        this.k = emVar;
    }

    public final void G(Object obj) {
        a aVar = this.l;
        HashMap hashMap = aVar.b;
        String str = this.j;
        Integer num = (Integer) hashMap.get(str);
        em emVar = this.k;
        if (num != null) {
            aVar.d.add(str);
            try {
                aVar.b(num.intValue(), emVar, obj);
                return;
            } catch (Exception e) {
                aVar.d.remove(str);
                throw e;
            }
        }
        throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + emVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
    }
}
