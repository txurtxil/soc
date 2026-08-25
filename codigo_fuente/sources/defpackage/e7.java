package defpackage;

import android.util.Log;
import androidx.fragment.app.a;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: e7  reason: default package */
/* loaded from: classes.dex */
public final class e7 implements gg {
    public final ArrayList a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;
    public String i;
    public int j;
    public CharSequence k;
    public int l;
    public CharSequence m;
    public ArrayList n;
    public ArrayList o;
    public boolean p;
    public final a q;
    public boolean r;
    public int s;

    public e7(a aVar) {
        aVar.B();
        wf wfVar = aVar.o;
        if (wfVar != null) {
            wfVar.k.getClassLoader();
        }
        this.a = new ArrayList();
        this.h = true;
        this.p = false;
        this.s = -1;
        this.q = aVar;
    }

    @Override // defpackage.gg
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (a.E(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.g) {
            a aVar = this.q;
            if (aVar.d == null) {
                aVar.d = new ArrayList();
            }
            aVar.d.add(this);
            return true;
        }
        return true;
    }

    public final void b(og ogVar) {
        this.a.add(ogVar);
        ogVar.c = this.b;
        ogVar.d = this.c;
        ogVar.e = this.d;
        ogVar.f = this.e;
    }

    public final void c(int i) {
        og ogVar;
        if (this.g) {
            if (a.E(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            ArrayList arrayList = this.a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                vf vfVar = ((og) arrayList.get(i2)).b;
                if (vfVar != null) {
                    vfVar.r += i;
                    if (a.E(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + ogVar.b + " to " + ogVar.b.r);
                    }
                }
            }
        }
    }

    public final int d(boolean z) {
        if (!this.r) {
            if (a.E(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new yl(0));
                f("  ", printWriter, true);
                printWriter.close();
            }
            this.r = true;
            boolean z2 = this.g;
            a aVar = this.q;
            if (z2) {
                this.s = aVar.i.getAndIncrement();
            } else {
                this.s = -1;
            }
            aVar.u(this, z);
            return this.s;
        }
        c2.g("commit already called");
        return 0;
    }

    public final void e(int i, vf vfVar, String str, int i2) {
        Class<?> cls = vfVar.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str2 = vfVar.y;
                if (str2 != null && !str.equals(str2)) {
                    StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                    sb.append(vfVar);
                    String str3 = vfVar.y;
                    sb.append(": was ");
                    sb.append(str3);
                    sb.append(" now ");
                    sb.append(str);
                    throw new IllegalStateException(sb.toString());
                }
                vfVar.y = str;
            }
            if (i != 0) {
                if (i != -1) {
                    int i3 = vfVar.w;
                    if (i3 != 0 && i3 != i) {
                        StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                        sb2.append(vfVar);
                        int i4 = vfVar.w;
                        sb2.append(": was ");
                        sb2.append(i4);
                        sb2.append(" now ");
                        sb2.append(i);
                        throw new IllegalStateException(sb2.toString());
                    }
                    vfVar.w = i;
                    vfVar.x = i;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + vfVar + " with tag " + str + " to container view with no id");
                }
            }
            b(new og(i2, vfVar));
            vfVar.s = this.q;
            return;
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalStateException("Fragment " + canonicalName + " must be a public static class to be  properly recreated from instance state.");
    }

    public final void f(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.r);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.j != 0 || this.k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        ArrayList arrayList = this.a;
        if (!arrayList.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                og ogVar = (og) arrayList.get(i);
                switch (ogVar.a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + ogVar.a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(ogVar.b);
                if (z) {
                    if (ogVar.c != 0 || ogVar.d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(ogVar.c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(ogVar.d));
                    }
                    if (ogVar.e != 0 || ogVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(ogVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(ogVar.f));
                    }
                }
            }
        }
    }

    public final void g(int i, vf vfVar) {
        if (i != 0) {
            e(i, vfVar, null, 2);
        } else {
            c2.n("Must use non-zero containerViewId");
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.s >= 0) {
            sb.append(" #");
            sb.append(this.s);
        }
        if (this.i != null) {
            sb.append(" ");
            sb.append(this.i);
        }
        sb.append("}");
        return sb.toString();
    }
}
