package defpackage;

import android.util.Base64;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: cf  reason: default package */
/* loaded from: classes.dex */
public class cf {
    public final /* synthetic */ int a;
    public final Serializable b;
    public Object c;
    public Object d;
    public final Object e;
    public final Object f;

    public cf(String str, String str2, String str3, List list) {
        this.a = 0;
        str.getClass();
        this.b = str;
        str2.getClass();
        this.c = str2;
        this.d = str3;
        list.getClass();
        this.f = list;
        this.e = str + "-" + str2 + "-" + str3;
    }

    public void a(Class cls, String str, gm gmVar) {
        ((HashMap) this.d).put(cls, gmVar);
        if (str != null) {
            ((HashMap) this.e).put(str, cls);
            ((HashMap) this.f).put(cls, str);
        }
    }

    public void b() {
        ln lnVar = new ln(this, (vn) this.f);
        this.c = lnVar;
        lnVar.onCreate();
    }

    public String toString() {
        switch (this.a) {
            case 0:
                List list = (List) this.f;
                StringBuilder sb = new StringBuilder();
                sb.append("FontRequest {mProviderAuthority: " + ((String) this.b) + ", mProviderPackage: " + ((String) this.c) + ", mQuery: " + ((String) this.d) + ", mCertificates:");
                for (int i = 0; i < list.size(); i++) {
                    sb.append(" [");
                    List list2 = (List) list.get(i);
                    for (int i2 = 0; i2 < list2.size(); i2++) {
                        sb.append(" \"");
                        sb.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                        sb.append("\"");
                    }
                    sb.append(" ]");
                }
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public cf() {
        this.a = 1;
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new HashMap();
    }

    public cf(vn vnVar) {
        this.a = 2;
        this.f = vnVar;
        this.e = vnVar;
        this.b = new ArrayList();
    }
}
