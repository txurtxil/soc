package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import java.util.Objects;
/* renamed from: n2  reason: default package */
/* loaded from: classes.dex */
public class n2 {
    public final /* synthetic */ int a = 3;
    public int b;
    public final Object c;

    public n2(Context context, int i) {
        this.c = new k2(new ContextThemeWrapper(context, o2.h(context, i)));
        this.b = i;
    }

    public Object a() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = (Object[]) this.c;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.b = i2;
        return obj;
    }

    public o2 b() {
        int i;
        ListAdapter listAdapter;
        k2 k2Var = (k2) this.c;
        ContextThemeWrapper contextThemeWrapper = k2Var.a;
        ContextThemeWrapper contextThemeWrapper2 = k2Var.a;
        o2 o2Var = new o2(contextThemeWrapper, this.b);
        View view = k2Var.e;
        m2 m2Var = o2Var.f;
        if (view != null) {
            m2Var.w = view;
        } else {
            CharSequence charSequence = k2Var.d;
            if (charSequence != null) {
                m2Var.d = charSequence;
                TextView textView = m2Var.u;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = k2Var.c;
            if (drawable != null) {
                m2Var.s = drawable;
                ImageView imageView = m2Var.t;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    m2Var.t.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = k2Var.f;
        if (charSequence2 != null) {
            m2Var.e = charSequence2;
            TextView textView2 = m2Var.v;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = k2Var.g;
        if (charSequence3 != null) {
            m2Var.c(-1, charSequence3, k2Var.h);
        }
        CharSequence charSequence4 = k2Var.i;
        if (charSequence4 != null) {
            m2Var.c(-2, charSequence4, k2Var.j);
        }
        if (k2Var.l != null || k2Var.m != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) k2Var.b.inflate(m2Var.A, (ViewGroup) null);
            if (k2Var.q) {
                listAdapter = new h2(k2Var, contextThemeWrapper2, m2Var.B, k2Var.l, alertController$RecycleListView);
            } else {
                if (k2Var.r) {
                    i = m2Var.C;
                } else {
                    i = m2Var.D;
                }
                listAdapter = k2Var.m;
                if (listAdapter == null) {
                    listAdapter = new ArrayAdapter(contextThemeWrapper2, i, 16908308, k2Var.l);
                }
            }
            m2Var.x = listAdapter;
            m2Var.y = k2Var.s;
            if (k2Var.n != null) {
                alertController$RecycleListView.setOnItemClickListener(new i2(k2Var, m2Var));
            } else if (k2Var.t != null) {
                alertController$RecycleListView.setOnItemClickListener(new j2(k2Var, alertController$RecycleListView, m2Var));
            }
            if (k2Var.r) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (k2Var.q) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            m2Var.f = alertController$RecycleListView;
        }
        View view2 = k2Var.o;
        if (view2 != null) {
            m2Var.g = view2;
            m2Var.h = false;
        }
        o2Var.setCancelable(true);
        o2Var.setCanceledOnTouchOutside(true);
        o2Var.setOnCancelListener(null);
        o2Var.setOnDismissListener(null);
        to toVar = k2Var.k;
        if (toVar != null) {
            o2Var.setOnKeyListener(toVar);
        }
        return o2Var;
    }

    public void c(Object obj) {
        int i = 0;
        while (true) {
            int i2 = this.b;
            Object[] objArr = (Object[]) this.c;
            if (i < i2) {
                if (objArr[i] != obj) {
                    i++;
                } else {
                    c2.g("Already in the pool!");
                    return;
                }
            } else if (i2 < objArr.length) {
                objArr[i2] = obj;
                this.b = i2 + 1;
                return;
            } else {
                return;
            }
        }
    }

    public void d(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        k2 k2Var = (k2) this.c;
        k2Var.g = charSequence;
        k2Var.h = onClickListener;
    }

    public String toString() {
        switch (this.a) {
            case 2:
                return ((String) this.c) + ", uid: " + this.b;
            default:
                return super.toString();
        }
    }

    public n2(int i) {
        if (i > 0) {
            this.c = new Object[i];
        } else {
            c2.n("The max pool size must be > 0");
            throw null;
        }
    }

    public n2(Context context) {
        this(context, o2.h(context, 0));
    }

    public n2(String str, int i) {
        Objects.requireNonNull(str);
        this.c = str;
        this.b = i;
    }

    public n2(int i, pf[] pfVarArr) {
        this.b = i;
        this.c = pfVarArr;
    }
}
