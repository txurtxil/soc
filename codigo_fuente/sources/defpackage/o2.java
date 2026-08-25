package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.b;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.a;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* renamed from: o2  reason: default package */
/* loaded from: classes.dex */
public final class o2 extends Dialog implements DialogInterface, c3, sk, vz {
    public a a;
    public final qg b;
    public final b c;
    public w3 d;
    public final x3 e;
    public final m2 f;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v4, types: [x3] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o2(android.view.ContextThemeWrapper r6, int r7) {
        /*
            r5 = this;
            int r7 = h(r6, r7)
            r0 = 1
            r1 = 2130968947(0x7f040173, float:1.7546562E38)
            if (r7 != 0) goto L19
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r6.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L1a
        L19:
            r2 = r7
        L1a:
            r5.<init>(r6, r2)
            qg r2 = new qg
            r2.<init>(r5)
            r5.b = r2
            androidx.activity.b r2 = new androidx.activity.b
            m1 r3 = new m1
            r4 = 6
            r3.<init>(r4, r5)
            r2.<init>(r3)
            r5.c = r2
            x3 r2 = new x3
            r2.<init>()
            r5.e = r2
            j3 r2 = r5.c()
            if (r7 != 0) goto L4c
            android.util.TypedValue r7 = new android.util.TypedValue
            r7.<init>()
            android.content.res.Resources$Theme r6 = r6.getTheme()
            r6.resolveAttribute(r1, r7, r0)
            int r7 = r7.resourceId
        L4c:
            r6 = r2
            w3 r6 = (defpackage.w3) r6
            r6.T = r7
            r2.d()
            m2 r6 = new m2
            android.content.Context r7 = r5.getContext()
            android.view.Window r0 = r5.getWindow()
            r6.<init>(r7, r5, r0)
            r5.f = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o2.<init>(android.view.ContextThemeWrapper, int):void");
    }

    public static void b(o2 o2Var) {
        super.onBackPressed();
    }

    public static int h(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // defpackage.vz
    public final f3 a() {
        return (f3) this.b.c;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        w3 w3Var = (w3) c();
        w3Var.y();
        ((ViewGroup) w3Var.A.findViewById(16908290)).addView(view, layoutParams);
        w3Var.m.a(w3Var.l.getCallback());
    }

    public final j3 c() {
        if (this.d == null) {
            c6 c6Var = j3.a;
            this.d = new w3(getContext(), getWindow(), this, this);
        }
        return this.d;
    }

    public final void d(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            b bVar = this.c;
            bVar.getClass();
            bVar.e = onBackInvokedDispatcher;
            bVar.c(bVar.g);
        }
        this.b.b(bundle);
        a aVar = this.a;
        if (aVar == null) {
            aVar = new a(this);
            this.a = aVar;
        }
        aVar.e(lk.ON_CREATE);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        c().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return gn.m(this.e, getWindow().getDecorView(), this, keyEvent);
    }

    public final void e(Bundle bundle) {
        c().a();
        d(bundle);
        c().d();
    }

    @Override // defpackage.sk
    public final a f() {
        a aVar = this.a;
        if (aVar == null) {
            a aVar2 = new a(this);
            this.a = aVar2;
            return aVar2;
        }
        return aVar;
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        w3 w3Var = (w3) c();
        w3Var.y();
        return w3Var.l.findViewById(i);
    }

    public final void g() {
        a aVar = this.a;
        if (aVar == null) {
            aVar = new a(this);
            this.a = aVar;
        }
        aVar.e(lk.ON_DESTROY);
        this.a = null;
        super.onStop();
    }

    public final void i(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().o(charSequence);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        c().b();
    }

    public final boolean j(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.c.b();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        ListAdapter listAdapter;
        int i2;
        int i3;
        View findViewById;
        View findViewById2;
        e(bundle);
        m2 m2Var = this.f;
        m2Var.b.setContentView(m2Var.z);
        Context context = m2Var.a;
        Window window = m2Var.c;
        View findViewById3 = window.findViewById(R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        View view = m2Var.g;
        if (view == null) {
            view = null;
        }
        int i4 = 0;
        if (view != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !m2.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (m2Var.h) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (m2Var.f != null) {
                ((LinearLayout.LayoutParams) ((vk) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById7 = viewGroup.findViewById(R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup b = m2.b(findViewById7, findViewById4);
        ViewGroup b2 = m2.b(findViewById8, findViewById5);
        ViewGroup b3 = m2.b(findViewById9, findViewById6);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        m2Var.r = nestedScrollView;
        nestedScrollView.setFocusable(false);
        m2Var.r.setNestedScrollingEnabled(false);
        TextView textView = (TextView) b2.findViewById(16908299);
        m2Var.v = textView;
        if (textView != null) {
            CharSequence charSequence = m2Var.e;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                m2Var.r.removeView(m2Var.v);
                if (m2Var.f != null) {
                    ViewGroup viewGroup2 = (ViewGroup) m2Var.r.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(m2Var.r);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(m2Var.f, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    b2.setVisibility(8);
                }
            }
        }
        Button button = (Button) b3.findViewById(16908313);
        m2Var.i = button;
        s0 s0Var = m2Var.G;
        button.setOnClickListener(s0Var);
        boolean isEmpty = TextUtils.isEmpty(m2Var.j);
        Button button2 = m2Var.i;
        if (isEmpty) {
            button2.setVisibility(8);
            z2 = false;
        } else {
            button2.setText(m2Var.j);
            m2Var.i.setVisibility(0);
            z2 = true;
        }
        Button button3 = (Button) b3.findViewById(16908314);
        m2Var.l = button3;
        button3.setOnClickListener(s0Var);
        boolean isEmpty2 = TextUtils.isEmpty(m2Var.m);
        Button button4 = m2Var.l;
        if (isEmpty2) {
            button4.setVisibility(8);
        } else {
            button4.setText(m2Var.m);
            m2Var.l.setVisibility(0);
            z2 |= true;
        }
        Button button5 = (Button) b3.findViewById(16908315);
        m2Var.o = button5;
        button5.setOnClickListener(s0Var);
        boolean isEmpty3 = TextUtils.isEmpty(m2Var.p);
        Button button6 = m2Var.o;
        if (isEmpty3) {
            button6.setVisibility(8);
        } else {
            button6.setText(m2Var.p);
            m2Var.o.setVisibility(0);
            z2 |= true;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z2) {
                Button button7 = m2Var.i;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button7.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button7.setLayoutParams(layoutParams);
            } else if (z2) {
                Button button8 = m2Var.l;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button8.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button8.setLayoutParams(layoutParams2);
            } else if (z2) {
                Button button9 = m2Var.o;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button9.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button9.setLayoutParams(layoutParams3);
            }
        }
        if (!z2) {
            b3.setVisibility(8);
        }
        if (m2Var.w != null) {
            b.addView(m2Var.w, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            m2Var.t = (ImageView) window.findViewById(16908294);
            if (!TextUtils.isEmpty(m2Var.d) && m2Var.E) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                m2Var.u = textView2;
                textView2.setText(m2Var.d);
                Drawable drawable = m2Var.s;
                if (drawable != null) {
                    m2Var.t.setImageDrawable(drawable);
                } else {
                    m2Var.u.setPadding(m2Var.t.getPaddingLeft(), m2Var.t.getPaddingTop(), m2Var.t.getPaddingRight(), m2Var.t.getPaddingBottom());
                    m2Var.t.setVisibility(8);
                }
            } else {
                window.findViewById(R.id.title_template).setVisibility(8);
                m2Var.t.setVisibility(8);
                b.setVisibility(8);
            }
        }
        if (viewGroup.getVisibility() != 8) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (b != null && b.getVisibility() != 8) {
            i = 1;
        } else {
            i = 0;
        }
        if (b3.getVisibility() != 8) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z4 && (findViewById2 = b2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (i != 0) {
            NestedScrollView nestedScrollView2 = m2Var.r;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            if (m2Var.e == null && m2Var.f == null) {
                findViewById = null;
            } else {
                findViewById = b.findViewById(R.id.titleDividerNoCustom);
            }
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
        } else {
            View findViewById10 = b2.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = m2Var.f;
        if (alertController$RecycleListView != null && (!z4 || i == 0)) {
            int paddingLeft = alertController$RecycleListView.getPaddingLeft();
            if (i != 0) {
                i2 = alertController$RecycleListView.getPaddingTop();
            } else {
                i2 = alertController$RecycleListView.a;
            }
            int paddingRight = alertController$RecycleListView.getPaddingRight();
            if (z4) {
                i3 = alertController$RecycleListView.getPaddingBottom();
            } else {
                i3 = alertController$RecycleListView.b;
            }
            alertController$RecycleListView.setPadding(paddingLeft, i2, paddingRight, i3);
        }
        if (!z3) {
            View view2 = m2Var.f;
            if (view2 == null) {
                view2 = m2Var.r;
            }
            if (view2 != null) {
                if (z4) {
                    i4 = 2;
                }
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = u70.a;
                k70.d(view2, i | i4, 3);
                if (findViewById11 != null) {
                    b2.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    b2.removeView(findViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = m2Var.f;
        if (alertController$RecycleListView2 != null && (listAdapter = m2Var.x) != null) {
            alertController$RecycleListView2.setAdapter(listAdapter);
            int i5 = m2Var.y;
            if (i5 > -1) {
                alertController$RecycleListView2.setItemChecked(i5, true);
                alertController$RecycleListView2.setSelection(i5);
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f.r;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f.r;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.getClass();
        this.b.c(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        a aVar = this.a;
        if (aVar == null) {
            aVar = new a(this);
            this.a = aVar;
        }
        aVar.e(lk.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        g();
        w3 w3Var = (w3) c();
        w3Var.C();
        k60 k60Var = w3Var.n;
        if (k60Var != null) {
            k60Var.G(false);
        }
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        c().i(i);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        c().o(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        c().j(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().k(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        i(charSequence);
        m2 m2Var = this.f;
        m2Var.d = charSequence;
        TextView textView = m2Var.u;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
