package defpackage;

import android.animation.Animator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.a;
import androidx.fragment.app.b;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;
/* renamed from: gc  reason: default package */
/* loaded from: classes.dex */
public final class gc {
    public final ViewGroup a;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d = false;
    public boolean e = false;

    public gc(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public static gc f(ViewGroup viewGroup, hd hdVar) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof gc) {
            return (gc) tag;
        }
        hdVar.getClass();
        gc gcVar = new gc(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, gcVar);
        return gcVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [r8, java.lang.Object] */
    public final void a(int i, int i2, b bVar) {
        synchronized (this.b) {
            try {
                ?? obj = new Object();
                s20 d = d(bVar.c);
                if (d != null) {
                    d.c(i, i2);
                    return;
                }
                s20 s20Var = new s20(i, i2, bVar, obj);
                this.b.add(s20Var);
                s20Var.d.add(new r20(this, s20Var, 0));
                s20Var.d.add(new r20(this, s20Var, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r15v1, types: [r8, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.lang.Object, ec, t3] */
    /* JADX WARN: Type inference failed for: r8v12, types: [r8, java.lang.Object] */
    public final void b(ArrayList arrayList, boolean z) {
        int i;
        boolean z2;
        int i2;
        ViewGroup viewGroup;
        boolean z3;
        boolean z4;
        int size = arrayList.size();
        boolean z5 = false;
        s20 s20Var = null;
        int i3 = 0;
        s20 s20Var2 = null;
        while (true) {
            i = 2;
            if (i3 >= size) {
                break;
            }
            Object obj = arrayList.get(i3);
            i3++;
            s20 s20Var3 = (s20) obj;
            int c = t20.c(s20Var3.c.F);
            int h = t20.h(s20Var3.a);
            if (h != 0) {
                if (h != 1) {
                    if (h != 2 && h != 3) {
                    }
                } else if (c != 2) {
                    s20Var2 = s20Var3;
                }
            }
            if (c == 2 && s20Var == null) {
                s20Var = s20Var3;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(arrayList);
        int size2 = arrayList.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList.get(i4);
            i4++;
            s20 s20Var4 = (s20) obj2;
            ?? obj3 = new Object();
            s20Var4.d();
            HashSet hashSet = s20Var4.e;
            hashSet.add(obj3);
            ?? t3Var = new t3(s20Var4, obj3);
            t3Var.d = z5;
            t3Var.c = z;
            arrayList2.add(t3Var);
            ?? obj4 = new Object();
            s20Var4.d();
            hashSet.add(obj4);
            if (!z ? s20Var4 == s20Var2 : s20Var4 == s20Var) {
                z4 = true;
            } else {
                z4 = z5;
            }
            t3 t3Var2 = new t3(s20Var4, obj4);
            int i5 = s20Var4.a;
            vf vfVar = s20Var4.c;
            if (i5 == 2) {
                if (z) {
                    vfVar.getClass();
                } else {
                    vfVar.getClass();
                }
                if (z) {
                    vfVar.getClass();
                } else {
                    vfVar.getClass();
                }
            } else if (z) {
                vfVar.getClass();
            } else {
                vfVar.getClass();
            }
            if (z4) {
                if (z) {
                    vfVar.getClass();
                } else {
                    vfVar.getClass();
                }
            }
            arrayList3.add(t3Var2);
            s20Var4.d.add(new c1(this, arrayList4, s20Var4));
            z5 = false;
        }
        HashMap hashMap = new HashMap();
        int size3 = arrayList3.size();
        int i6 = 0;
        while (i6 < size3) {
            Object obj5 = arrayList3.get(i6);
            i6++;
            s20 s20Var5 = (s20) ((fc) obj5).a;
            t20.c(s20Var5.c.F);
            int i7 = s20Var5.a;
        }
        int size4 = arrayList3.size();
        int i8 = 0;
        while (i8 < size4) {
            Object obj6 = arrayList3.get(i8);
            i8++;
            fc fcVar = (fc) obj6;
            hashMap.put((s20) fcVar.a, Boolean.FALSE);
            fcVar.d();
        }
        boolean containsValue = hashMap.containsValue(Boolean.TRUE);
        ViewGroup viewGroup2 = this.a;
        Context context = viewGroup2.getContext();
        ArrayList arrayList5 = new ArrayList();
        int size5 = arrayList2.size();
        boolean z6 = false;
        int i9 = 0;
        while (i9 < size5) {
            Object obj7 = arrayList2.get(i9);
            i9++;
            ec ecVar = (ec) obj7;
            s20 s20Var6 = (s20) ecVar.a;
            int c2 = t20.c(s20Var6.c.F);
            int i10 = s20Var6.a;
            if (c2 == i10 || (c2 != i && i10 != i)) {
                viewGroup = viewGroup2;
                z2 = containsValue;
                i2 = i;
                ecVar.d();
            } else {
                ko j = ecVar.j(context);
                if (j == null) {
                    ecVar.d();
                } else {
                    Animator animator = (Animator) j.c;
                    if (animator == null) {
                        arrayList5.add(ecVar);
                    } else {
                        s20 s20Var7 = (s20) ecVar.a;
                        vf vfVar2 = s20Var7.c;
                        i2 = i;
                        z2 = containsValue;
                        if (Boolean.TRUE.equals(hashMap.get(s20Var7))) {
                            if (a.E(i2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + vfVar2 + " as this Fragment was involved in a Transition.");
                            }
                            ecVar.d();
                            viewGroup = viewGroup2;
                        } else {
                            if (s20Var7.a == 3) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                arrayList4.remove(s20Var7);
                            }
                            View view = vfVar2.F;
                            viewGroup2.startViewTransition(view);
                            ViewGroup viewGroup3 = viewGroup2;
                            animator.addListener(new cc(viewGroup3, view, z3, s20Var7, ecVar));
                            animator.setTarget(view);
                            animator.start();
                            ((r8) ecVar.b).a(new c9(11, animator));
                            containsValue = z2;
                            viewGroup2 = viewGroup3;
                            i = i2;
                            z6 = true;
                        }
                    }
                }
                viewGroup = viewGroup2;
                z2 = containsValue;
                i2 = i;
            }
            containsValue = z2;
            viewGroup2 = viewGroup;
            i = i2;
        }
        ViewGroup viewGroup4 = viewGroup2;
        boolean z7 = containsValue;
        int i11 = i;
        int size6 = arrayList5.size();
        int i12 = 0;
        while (i12 < size6) {
            Object obj8 = arrayList5.get(i12);
            i12++;
            ec ecVar2 = (ec) obj8;
            s20 s20Var8 = (s20) ecVar2.a;
            vf vfVar3 = s20Var8.c;
            if (z7) {
                if (a.E(i11)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + vfVar3 + " as Animations cannot run alongside Transitions.");
                }
                ecVar2.d();
            } else if (z6) {
                if (a.E(i11)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + vfVar3 + " as Animations cannot run alongside Animators.");
                }
                ecVar2.d();
            } else {
                View view2 = vfVar3.F;
                ko j2 = ecVar2.j(context);
                j2.getClass();
                Animation animation = (Animation) j2.b;
                animation.getClass();
                if (s20Var8.a != 1) {
                    view2.startAnimation(animation);
                    ecVar2.d();
                } else {
                    viewGroup4.startViewTransition(view2);
                    xf xfVar = new xf(animation, viewGroup4, view2);
                    xfVar.setAnimationListener(new dc(viewGroup4, view2, ecVar2));
                    view2.startAnimation(xfVar);
                }
                ((r8) ecVar2.b).a(new v5(view2, viewGroup4, ecVar2, i11));
            }
        }
        int size7 = arrayList4.size();
        int i13 = 0;
        while (i13 < size7) {
            Object obj9 = arrayList4.get(i13);
            i13++;
            s20 s20Var9 = (s20) obj9;
            t20.a(s20Var9.c.F, s20Var9.a);
        }
        arrayList4.clear();
    }

    public final void c() {
        if (this.e) {
            return;
        }
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = u70.a;
        if (!g70.b(viewGroup)) {
            e();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.c);
                    this.c.clear();
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        s20 s20Var = (s20) obj;
                        if (a.E(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + s20Var);
                        }
                        s20Var.a();
                        if (!s20Var.g) {
                            this.c.add(s20Var);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.c.addAll(arrayList2);
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList2.get(i2);
                        i2++;
                        ((s20) obj2).d();
                    }
                    b(arrayList2, this.d);
                    this.d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final s20 d(vf vfVar) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            s20 s20Var = (s20) obj;
            vf vfVar2 = s20Var.c;
            vfVar2.getClass();
            if (vfVar2 == vfVar && !s20Var.f) {
                return s20Var;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = u70.a;
        boolean b = g70.b(viewGroup);
        synchronized (this.b) {
            try {
                g();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((s20) obj).d();
                }
                ArrayList arrayList2 = new ArrayList(this.c);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    s20 s20Var = (s20) obj2;
                    if (a.E(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (b) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(s20Var);
                        Log.v("FragmentManager", sb.toString());
                    }
                    s20Var.a();
                }
                ArrayList arrayList3 = new ArrayList(this.b);
                int size3 = arrayList3.size();
                while (i < size3) {
                    Object obj3 = arrayList3.get(i);
                    i++;
                    s20 s20Var2 = (s20) obj3;
                    if (a.E(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (b) {
                            str = "";
                        } else {
                            str = "Container " + this.a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(s20Var2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    s20Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            s20 s20Var = (s20) obj;
            if (s20Var.b == 2) {
                s20Var.c(t20.b(s20Var.c.H().getVisibility()), 1);
            }
        }
    }
}
