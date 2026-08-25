package defpackage;

import android.content.ClipData;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.IInterface;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import androidx.car.app.IAppHost;
import androidx.car.app.ICarHost;
import androidx.car.app.j;
import androidx.car.app.k;
import androidx.car.app.model.TemplateInfo;
import androidx.car.app.model.TemplateWrapper;
import androidx.car.app.navigation.model.NavigationTemplate;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: b2  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class b2 implements au, ai, hx, ix, mg, gh {
    public final /* synthetic */ Object a;

    public /* synthetic */ b2(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.au
    public boolean a(Preference preference, Object obj) {
        int i;
        d2 d2Var = (d2) this.a;
        List list = d2.c0;
        if (qj.c(obj, Boolean.TRUE)) {
            Context G = d2Var.G();
            SharedPreferences sharedPreferences = G.getSharedPreferences(lu.b(G), 0);
            List<String> list2 = d2.c0;
            if (list2 != null && list2.isEmpty()) {
                i = 0;
            } else {
                i = 0;
                for (String str : list2) {
                    if (!qj.c(str, preference.l) && sharedPreferences.getBoolean(str, qj.c(str, "map_action_force_landscape")) && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            if (i >= 4) {
                View H = d2Var.H();
                int[] iArr = l20.z;
                l20.e(H, H.getResources().getText(R.string.mapstrip_max_buttons)).f();
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // defpackage.hx
    public Object b() {
        TemplateWrapper wrap;
        TemplateWrapper templateWrapper;
        n40.a();
        n40.a();
        ArrayDeque arrayDeque = ((k) this.a).a;
        mq mqVar = (mq) arrayDeque.peek();
        Objects.requireNonNull(mqVar);
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Requesting template from Screen " + mqVar);
        }
        NavigationTemplate g = mqVar.g();
        if (mqVar.e && (templateWrapper = mqVar.d) != null) {
            wrap = TemplateWrapper.wrap(g, new TemplateInfo(templateWrapper.getTemplate().getClass(), templateWrapper.getId()).getTemplateId());
        } else {
            wrap = TemplateWrapper.wrap(g);
        }
        mqVar.e = false;
        mqVar.d = wrap;
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Returning " + g + " from screen " + mqVar);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayDeque.iterator();
        while (it.hasNext()) {
            mq mqVar2 = (mq) it.next();
            if (mqVar2.d == null) {
                mqVar2.d = TemplateWrapper.wrap(mqVar2.g());
            }
            arrayList.add(new TemplateInfo(mqVar2.d.getTemplate().getClass(), mqVar2.d.getId()));
        }
        wrap.setTemplateInfosForScreenStack(arrayList);
        return wrap;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9 A[RETURN] */
    @Override // defpackage.gh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object c(java.lang.Object r9, java.lang.Object r10) {
        /*
            r8 = this;
            java.lang.Object r8 = r8.a
            java.util.List r8 = (java.util.List) r8
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            java.lang.Integer r10 = (java.lang.Integer) r10
            int r10 = r10.intValue()
            r9.getClass()
            int r0 = r8.size()
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 != r2) goto L48
            int r0 = r8.size()
            if (r0 == 0) goto L40
            if (r0 != r2) goto L3a
            java.lang.Object r8 = r8.get(r1)
            java.lang.String r8 = (java.lang.String) r8
            int r9 = defpackage.i30.v(r9, r8, r10, r1)
            if (r9 >= 0) goto L2f
        L2c:
            r10 = r3
            goto Lc3
        L2f:
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            at r10 = new at
            r10.<init>(r9, r8)
            goto Lc3
        L3a:
            java.lang.String r8 = "List has more than one element."
            defpackage.c2.n(r8)
            return r3
        L40:
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            java.lang.String r9 = "List is empty."
            r8.<init>(r9)
            throw r8
        L48:
            nj r0 = new nj
            if (r10 >= 0) goto L4d
            r10 = r1
        L4d:
            int r4 = r9.length()
            r0.<init>(r10, r4, r2)
            boolean r2 = r9 instanceof java.lang.String
            int r0 = r0.b
            if (r2 == 0) goto L90
            if (r10 <= r0) goto L5d
            goto L2c
        L5d:
            java.util.Iterator r2 = r8.iterator()
        L61:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L7c
            java.lang.Object r4 = r2.next()
            r5 = r4
            java.lang.String r5 = (java.lang.String) r5
            r6 = r9
            java.lang.String r6 = (java.lang.String) r6
            int r7 = r5.length()
            boolean r5 = r5.regionMatches(r1, r6, r10, r7)
            if (r5 == 0) goto L61
            goto L7d
        L7c:
            r4 = r3
        L7d:
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto L8b
            java.lang.Integer r8 = java.lang.Integer.valueOf(r10)
            at r10 = new at
            r10.<init>(r8, r4)
            goto Lc3
        L8b:
            if (r10 == r0) goto L2c
            int r10 = r10 + 1
            goto L5d
        L90:
            if (r10 <= r0) goto L93
            goto L2c
        L93:
            java.util.Iterator r2 = r8.iterator()
        L97:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto Laf
            java.lang.Object r4 = r2.next()
            r5 = r4
            java.lang.String r5 = (java.lang.String) r5
            int r6 = r5.length()
            boolean r5 = defpackage.i30.w(r5, r9, r10, r6, r1)
            if (r5 == 0) goto L97
            goto Lb0
        Laf:
            r4 = r3
        Lb0:
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto Lbe
            java.lang.Integer r8 = java.lang.Integer.valueOf(r10)
            at r10 = new at
            r10.<init>(r8, r4)
            goto Lc3
        Lbe:
            if (r10 == r0) goto L2c
            int r10 = r10 + 1
            goto L93
        Lc3:
            if (r10 == 0) goto Ld9
            java.lang.Object r8 = r10.a
            java.lang.Object r9 = r10.b
            java.lang.String r9 = (java.lang.String) r9
            int r9 = r9.length()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            at r10 = new at
            r10.<init>(r8, r9)
            return r10
        Ld9:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b2.c(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.ix
    public Object call() {
        ICarHost iCarHost = ((j) this.a).a;
        Objects.requireNonNull(iCarHost);
        return IAppHost.Stub.asInterface(iCarHost.getHost("app"));
    }

    @Override // defpackage.mg
    public void d(Bundle bundle) {
        boolean z;
        fk fkVar = (fk) this.a;
        int i = bundle.getInt("slot", -1);
        if (i >= 0 && i < 4) {
            String string = bundle.getString("package");
            if (string == null) {
                string = "";
            }
            List list = fkVar.c0;
            if (list != null) {
                if (string.length() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                list.set(i, new ck(string, z));
                SharedPreferences sharedPreferences = fkVar.b0;
                if (sharedPreferences != null) {
                    List list2 = fkVar.c0;
                    if (list2 != null) {
                        JSONArray jSONArray = new JSONArray();
                        for (ck ckVar : v9.C(list2)) {
                            jSONArray.put(new JSONObject().put("pkg", ckVar.a).put("on", ckVar.b));
                        }
                        sharedPreferences.edit().putString("launch_shortcuts", jSONArray.toString()).apply();
                        fkVar.Q(i);
                        return;
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

    @Override // defpackage.ai
    public void e(IInterface iInterface) {
        ((IAppHost) iInterface).sendLocation((Location) this.a);
    }

    public boolean f(c9 c9Var, int i, Bundle bundle) {
        sa saVar;
        b4 b4Var = (b4) this.a;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((hj) c9Var.b).d();
                InputContentInfo a = kd.a(((hj) c9Var.b).b());
                if (bundle == null) {
                    bundle = new Bundle();
                } else {
                    bundle = new Bundle(bundle);
                }
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", a);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        hj hjVar = (hj) c9Var.b;
        ClipData clipData = new ClipData(hjVar.a(), new ClipData.Item(hjVar.c()));
        if (i2 >= 31) {
            saVar = new c9(clipData, 2);
        } else {
            ta taVar = new ta();
            taVar.b = clipData;
            taVar.c = 2;
            saVar = taVar;
        }
        saVar.o(hjVar.e());
        saVar.setExtras(bundle);
        if (u70.f(b4Var, saVar.build()) != null) {
            return false;
        }
        return true;
    }
}
