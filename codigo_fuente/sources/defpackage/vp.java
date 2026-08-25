package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* renamed from: vp  reason: default package */
/* loaded from: classes.dex */
public final class vp {
    public static vp e;
    public final Object a;
    public final Object b;
    public Object c;
    public Object d;

    public vp(Typeface typeface, tp tpVar) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        this.d = typeface;
        this.a = tpVar;
        this.c = new up(1024);
        int a = tpVar.a(6);
        if (a != 0) {
            int i6 = a + tpVar.a;
            i = ((ByteBuffer) tpVar.d).getInt(((ByteBuffer) tpVar.d).getInt(i6) + i6);
        } else {
            i = 0;
        }
        this.b = new char[i * 2];
        int a2 = tpVar.a(6);
        if (a2 != 0) {
            int i7 = a2 + tpVar.a;
            i2 = ((ByteBuffer) tpVar.d).getInt(((ByteBuffer) tpVar.d).getInt(i7) + i7);
        } else {
            i2 = 0;
        }
        for (int i8 = 0; i8 < i2; i8++) {
            ae aeVar = new ae(this, i8);
            sp b = aeVar.b();
            int a3 = b.a(4);
            if (a3 != 0) {
                i3 = ((ByteBuffer) b.d).getInt(a3 + b.a);
            } else {
                i3 = 0;
            }
            Character.toChars(i3, (char[]) this.b, i8 * 2);
            sp b2 = aeVar.b();
            int a4 = b2.a(16);
            if (a4 != 0) {
                int i9 = a4 + b2.a;
                i4 = ((ByteBuffer) b2.d).getInt(((ByteBuffer) b2.d).getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            if (i4 > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                up upVar = (up) this.c;
                sp b3 = aeVar.b();
                int a5 = b3.a(16);
                if (a5 != 0) {
                    int i10 = a5 + b3.a;
                    i5 = ((ByteBuffer) b3.d).getInt(((ByteBuffer) b3.d).getInt(i10) + i10);
                } else {
                    i5 = 0;
                }
                upVar.a(aeVar, 0, i5 - 1);
            } else {
                c2.n("invalid metadata codepoint length");
                throw null;
            }
        }
    }

    public static vp c() {
        if (e == null) {
            e = new vp();
        }
        return e;
    }

    public boolean a(n20 n20Var, int i) {
        m7 m7Var = (m7) n20Var.a.get();
        if (m7Var == null) {
            return false;
        }
        ((Handler) this.b).removeCallbacksAndMessages(n20Var);
        Handler handler = p7.v;
        handler.sendMessage(handler.obtainMessage(1, i, 0, m7Var.a));
        return true;
    }

    public o30 b(i1 i1Var) {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            o30 o30Var = (o30) arrayList.get(i);
            if (o30Var != null && o30Var.b == i1Var) {
                return o30Var;
            }
        }
        o30 o30Var2 = new o30((Context) this.b, i1Var);
        arrayList.add(o30Var2);
        return o30Var2;
    }

    public boolean d(m7 m7Var) {
        n20 n20Var = (n20) this.c;
        if (n20Var != null && m7Var != null && n20Var.a.get() == m7Var) {
            return true;
        }
        return false;
    }

    public boolean e(i1 i1Var, MenuItem menuItem) {
        return ((ActionMode.Callback) this.a).onActionItemClicked(b(i1Var), new ap((Context) this.b, (s30) menuItem));
    }

    public boolean f(i1 i1Var, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.a;
        o30 b = b(i1Var);
        j20 j20Var = (j20) this.d;
        Menu menu2 = (Menu) j20Var.getOrDefault(menu, null);
        if (menu2 == null) {
            menu2 = new op((Context) this.b, (so) menu);
            j20Var.put(menu, menu2);
        }
        return callback.onCreateActionMode(b, menu2);
    }

    public void g(n20 n20Var) {
        Handler handler = (Handler) this.b;
        int i = n20Var.b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            if (i == -1) {
                i = 1500;
            } else {
                i = 2750;
            }
        }
        handler.removeCallbacksAndMessages(n20Var);
        handler.sendMessageDelayed(Message.obtain(handler, 0, n20Var), i);
    }

    public void h() {
        n20 n20Var = (n20) this.d;
        if (n20Var != null) {
            this.c = n20Var;
            this.d = null;
            m7 m7Var = (m7) n20Var.a.get();
            if (m7Var != null) {
                Handler handler = p7.v;
                handler.sendMessage(handler.obtainMessage(0, m7Var.a));
                return;
            }
            this.c = null;
        }
    }

    public vp() {
        this.a = new Object();
        this.b = new Handler(Looper.getMainLooper(), new m20(this));
    }

    public vp(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.a = callback;
        this.c = new ArrayList();
        this.d = new j20();
    }
}
