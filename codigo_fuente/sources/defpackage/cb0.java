package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: cb0  reason: default package */
/* loaded from: classes.dex */
public abstract class cb0 extends bb0 {
    final Handler a;
    j90 b;
    boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;

    static {
        ay.s = Log.isLoggable("CAR.PROJECTION", 2);
    }

    public cb0() {
        super(null);
        this.a = new db0(this);
    }

    public static void f(String str, PrintWriter printWriter, View view) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        ViewGroup viewGroup;
        int childCount;
        String str2;
        char c8;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        int visibility = view.getVisibility();
        char c9 = 'V';
        char c10 = '.';
        if (visibility != 0) {
            if (visibility != 4) {
                if (visibility != 8) {
                    sb.append('.');
                } else {
                    c8 = 'G';
                }
            } else {
                c8 = 'I';
            }
            sb.append(c8);
        } else {
            sb.append('V');
        }
        char c11 = 'F';
        if (view.isFocusable()) {
            c = 'F';
        } else {
            c = '.';
        }
        sb.append(c);
        if (view.isEnabled()) {
            c2 = 'E';
        } else {
            c2 = '.';
        }
        sb.append(c2);
        if (view.willNotDraw()) {
            c3 = '.';
        } else {
            c3 = 'D';
        }
        sb.append(c3);
        if (view.isHorizontalScrollBarEnabled()) {
            c4 = 'H';
        } else {
            c4 = '.';
        }
        sb.append(c4);
        if (!view.isVerticalScrollBarEnabled()) {
            c9 = '.';
        }
        sb.append(c9);
        if (view.isClickable()) {
            c5 = 'C';
        } else {
            c5 = '.';
        }
        sb.append(c5);
        if (view.isLongClickable()) {
            c6 = 'L';
        } else {
            c6 = '.';
        }
        sb.append(c6);
        sb.append(' ');
        if (!view.isFocused()) {
            c11 = '.';
        }
        sb.append(c11);
        if (view.isSelected()) {
            c7 = 'S';
        } else {
            c7 = '.';
        }
        sb.append(c7);
        if (view.isPressed()) {
            c10 = 'P';
        }
        sb.append(c10);
        sb.append(' ');
        sb.append(view.getLeft());
        sb.append(',');
        sb.append(view.getTop());
        sb.append('-');
        sb.append(view.getRight());
        sb.append(',');
        sb.append(view.getBottom());
        int id = view.getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = view.getResources();
            if (id != 0 && resources != null) {
                int i = (-16777216) & id;
                if (i != 16777216) {
                    if (i != 2130706432) {
                        try {
                            str2 = resources.getResourcePackageName(id);
                        } catch (Resources.NotFoundException unused) {
                        }
                    } else {
                        str2 = "app";
                    }
                } else {
                    str2 = "android";
                }
                String resourceTypeName = resources.getResourceTypeName(id);
                String resourceEntryName = resources.getResourceEntryName(id);
                sb.append(" ");
                sb.append(str2);
                sb.append(":");
                sb.append(resourceTypeName);
                sb.append("/");
                sb.append(resourceEntryName);
            }
        }
        sb.append("}");
        printWriter.println(sb.toString());
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String concat = str.concat("  ");
            for (int i2 = 0; i2 < childCount; i2++) {
                f(concat, printWriter, viewGroup.getChildAt(i2));
            }
        }
    }

    @Override // defpackage.bb0
    public final void a() {
        int size;
        boolean z;
        ay ayVar = this.b.a.b;
        if (!ayVar.k) {
            ayVar.v();
            ayVar.r();
            ArrayList arrayList = ayVar.n;
            ArrayList arrayList2 = ayVar.o;
            ArrayList arrayList3 = ayVar.f;
            if (arrayList3 == null || (size = arrayList3.size() - 1) < 0) {
                z = false;
            } else {
                arrayList.add(ayVar.f.remove(size));
                arrayList2.add(Boolean.TRUE);
                z = true;
            }
            if (z) {
                ayVar.b = true;
                try {
                    ArrayList arrayList4 = ayVar.n;
                    ArrayList arrayList5 = ayVar.o;
                    if (arrayList4 != null && !arrayList4.isEmpty()) {
                        if (arrayList5 != null && arrayList4.size() == arrayList5.size()) {
                            int size2 = arrayList4.size();
                            if (size2 <= 0) {
                                if (size2 != 0) {
                                    arrayList4.get(0).getClass();
                                    c2.l();
                                }
                            } else {
                                arrayList4.get(0).getClass();
                                c2.l();
                            }
                        } else {
                            c2.g("Internal error with the back stack records");
                        }
                    }
                } finally {
                    ayVar.b = false;
                    ayVar.o.clear();
                    ayVar.n.clear();
                }
            }
            ayVar.w();
            if (!z) {
                super.a();
                return;
            }
            return;
        }
        c2.g("Can not perform this action after onSaveInstanceState");
    }

    public k90 getSupportFragmentManager() {
        return this.b.a.b;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onConfigurationChanged(Configuration configuration) {
        this.b.a.b.h(configuration);
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onCreate(Bundle bundle) {
        List list;
        if (getBaseContext() != null) {
            eb0 eb0Var = this.b.a;
            ay ayVar = eb0Var.b;
            if (ayVar.h == null) {
                ayVar.h = eb0Var;
                ayVar.i = eb0Var;
                if (getLayoutInflater().getFactory() == null) {
                    getLayoutInflater().setFactory(this);
                }
                fb0 fb0Var = (fb0) e();
                if (fb0Var != null) {
                    j90 j90Var = this.b;
                    u90 u90Var = fb0Var.b;
                    eb0 eb0Var2 = j90Var.a;
                    if (u90Var != null) {
                        int i = u90Var.c;
                        for (int i2 = 0; i2 < i; i2++) {
                            ((q90) u90Var.c(i2)).getClass();
                        }
                    }
                    eb0Var2.d = u90Var;
                }
                if (bundle != null) {
                    Parcelable parcelable = bundle.getParcelable("android:support:fragments");
                    j90 j90Var2 = this.b;
                    if (fb0Var != null) {
                        list = fb0Var.a;
                    } else {
                        list = null;
                    }
                    j90Var2.a.b.j(parcelable, new az(list, null));
                }
                ay ayVar2 = this.b.a.b;
                ayVar2.k = false;
                ayVar2.b = true;
                ayVar2.g(1, false);
                ayVar2.b = false;
                return;
            }
            c2.g("Already attached");
            return;
        }
        c2.g("Context not attached to CarActivity");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View d;
        if (!"fragment".equals(str) || (d = this.b.a.b.d(str, context, attributeSet)) == null) {
            return null;
        }
        return d;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onDestroy() {
        a(false);
        ay ayVar = this.b.a.b;
        ayVar.l = true;
        ayVar.v();
        ayVar.b = true;
        ayVar.g(0, false);
        ayVar.b = false;
        ayVar.h = null;
        ayVar.i = null;
        eb0 eb0Var = this.b.a;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onLowMemory() {
        this.b.a.b.D();
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onNewIntent(Intent intent) {
        this.b.a.b.k = false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onPause() {
        this.e = false;
        if (this.a.hasMessages(2)) {
            this.a.removeMessages(2);
            this.b.a();
        }
        ay ayVar = this.b.a.b;
        ayVar.b = true;
        ayVar.g(4, false);
        ayVar.b = false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onPostResume() {
        this.a.removeMessages(2);
        this.b.a();
        this.b.a.b.v();
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onResume() {
        this.a.sendEmptyMessage(2);
        this.e = true;
        this.b.a.b.v();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [fb0, java.lang.Object] */
    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final Object onRetainNonConfigurationInstance() {
        List list;
        u90 u90Var;
        if (this.c) {
            a(true);
        }
        az y = this.b.a.b.y();
        if (y != null) {
            list = y.a;
        } else {
            list = null;
        }
        eb0 eb0Var = this.b.a;
        u90 u90Var2 = eb0Var.d;
        boolean z = false;
        if (u90Var2 != null) {
            int i = u90Var2.c;
            q90[] q90VarArr = new q90[i];
            for (int i2 = i - 1; i2 >= 0; i2--) {
                q90VarArr[i2] = (q90) eb0Var.d.c(i2);
            }
            boolean z2 = eb0Var.e;
            int i3 = 0;
            while (i3 < i) {
                q90 q90Var = q90VarArr[i3];
                if (!q90Var.a && z2) {
                    q90Var.a();
                    q90Var.b();
                }
                if (q90Var.a) {
                    i3++;
                    z = true;
                } else {
                    q90Var.c();
                    throw null;
                }
            }
        }
        if (z) {
            u90Var = eb0Var.d;
        } else {
            u90Var = null;
        }
        if (list == null && u90Var == null) {
            return null;
        }
        ?? obj = new Object();
        obj.a = list;
        obj.b = u90Var;
        return obj;
    }

    @Override // defpackage.bb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable z = this.b.a.b.z();
        if (z != null) {
            bundle.putParcelable("android:support:fragments", z);
        }
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onStart() {
        this.c = false;
        this.f = false;
        this.a.removeMessages(1);
        if (!this.d) {
            this.d = true;
            ay ayVar = this.b.a.b;
            ayVar.k = false;
            ayVar.b = true;
            ayVar.g(2, false);
            ayVar.b = false;
        }
        ay ayVar2 = this.b.a.b;
        ayVar2.k = false;
        ayVar2.v();
        eb0 eb0Var = this.b.a;
        if (!eb0Var.g) {
            eb0Var.g = true;
            if (!eb0Var.f) {
                if (eb0Var.d == null) {
                    eb0Var.d = new u90();
                }
                q90 q90Var = (q90) eb0Var.d.e("(root)");
            }
            eb0Var.f = true;
        }
        ay ayVar3 = this.b.a.b;
        ayVar3.k = false;
        ayVar3.b = true;
        ayVar3.g(4, false);
        ayVar3.b = false;
        eb0 eb0Var2 = this.b.a;
        u90 u90Var = eb0Var2.d;
        if (u90Var != null) {
            int i = u90Var.c;
            q90[] q90VarArr = new q90[i];
            for (int i2 = i - 1; i2 >= 0; i2--) {
                q90VarArr[i2] = (q90) eb0Var2.d.c(i2);
            }
            if (i > 0) {
                q90 q90Var2 = q90VarArr[0];
                q90 q90Var3 = null;
                q90Var3.getClass();
                if (q90Var3.a) {
                    q90Var3.a = false;
                    throw null;
                }
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onStop() {
        this.c = true;
        this.a.sendEmptyMessage(1);
        ay ayVar = this.b.a.b;
        ayVar.k = true;
        ayVar.b = true;
        ayVar.g(3, false);
        ayVar.b = false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void setContext(Context context) {
        attachBaseContext(context);
        this.b = new j90(new eb0(this, context));
    }

    public final void a(Intent intent, int i) {
        if (i == -1 || ((-65536) & i) == 0) {
            return;
        }
        c2.n("Can only use lower 16 bits for requestCode");
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String concat = String.valueOf(str).concat("  ");
        printWriter.print(concat);
        printWriter.print("mCreated=");
        printWriter.print(this.d);
        printWriter.print(" mResumed=");
        printWriter.print(this.e);
        printWriter.print(" mStopped=");
        printWriter.print(this.c);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.f);
        eb0 eb0Var = this.b.a;
        printWriter.print(concat);
        printWriter.print("mLoadersStarted=");
        printWriter.println(eb0Var.g);
        this.b.a.b.n(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        f(String.valueOf(str).concat("  "), printWriter, d().getDecorView());
    }

    public final void a(boolean z) {
        if (this.f) {
            return;
        }
        this.f = true;
        this.g = z;
        this.a.removeMessages(1);
        this.b.a.e = this.g;
        ay ayVar = this.b.a.b;
        ayVar.b = true;
        ayVar.g(2, false);
        ayVar.b = false;
    }
}
