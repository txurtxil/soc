package defpackage;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: nu  reason: default package */
/* loaded from: classes.dex */
public final class nu {
    public static final List x = Collections.EMPTY_LIST;
    public final View a;
    public WeakReference b;
    public int j;
    public RecyclerView r;
    public final Drawable s;
    public final ColorStateList t;
    public final SparseArray u;
    public boolean v;
    public boolean w;
    public int c = -1;
    public int d = -1;
    public long e = -1;
    public int f = -1;
    public int g = -1;
    public nu h = null;
    public nu i = null;
    public ArrayList k = null;
    public List l = null;
    public int m = 0;
    public rw n = null;
    public boolean o = false;
    public int p = 0;
    public int q = -1;

    public nu(View view) {
        this.a = view;
        SparseArray sparseArray = new SparseArray(4);
        this.u = sparseArray;
        TextView textView = (TextView) view.findViewById(16908310);
        sparseArray.put(16908310, textView);
        sparseArray.put(16908304, view.findViewById(16908304));
        sparseArray.put(16908294, view.findViewById(16908294));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        sparseArray.put(16908350, view.findViewById(16908350));
        this.s = view.getBackground();
        if (textView != null) {
            this.t = textView.getTextColors();
        }
    }

    public final void a(int i) {
        this.j = i | this.j;
    }

    public final View b(int i) {
        SparseArray sparseArray = this.u;
        View view = (View) sparseArray.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.a.findViewById(i);
        if (findViewById != null) {
            sparseArray.put(i, findViewById);
        }
        return findViewById;
    }

    public final int c() {
        int i = this.g;
        if (i == -1) {
            return this.c;
        }
        return i;
    }

    public final List d() {
        ArrayList arrayList;
        if ((this.j & 1024) == 0 && (arrayList = this.k) != null && arrayList.size() != 0) {
            return this.l;
        }
        return x;
    }

    public final boolean e() {
        View view = this.a;
        if (view.getParent() != null && view.getParent() != this.r) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        if ((this.j & 1) != 0) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        if ((this.j & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean h() {
        if ((this.j & 16) == 0) {
            WeakHashMap weakHashMap = u70.a;
            if (!e70.i(this.a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean i() {
        if ((this.j & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean j() {
        if (this.n != null) {
            return true;
        }
        return false;
    }

    public final boolean k() {
        if ((this.j & 256) != 0) {
            return true;
        }
        return false;
    }

    public final boolean l() {
        if ((this.j & 2) != 0) {
            return true;
        }
        return false;
    }

    public final void m(int i, boolean z) {
        if (this.d == -1) {
            this.d = this.c;
        }
        if (this.g == -1) {
            this.g = this.c;
        }
        if (z) {
            this.g += i;
        }
        this.c += i;
        View view = this.a;
        if (view.getLayoutParams() != null) {
            ((mw) view.getLayoutParams()).c = true;
        }
    }

    public final void n() {
        this.j = 0;
        this.c = -1;
        this.d = -1;
        this.e = -1L;
        this.g = -1;
        this.m = 0;
        this.h = null;
        this.i = null;
        ArrayList arrayList = this.k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.j &= -1025;
        this.p = 0;
        this.q = -1;
        RecyclerView.h(this);
    }

    public final void o(boolean z) {
        int i;
        int i2 = this.m;
        if (z) {
            i = i2 - 1;
        } else {
            i = i2 + 1;
        }
        this.m = i;
        if (i < 0) {
            this.m = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z && i == 1) {
            this.j |= 16;
        } else if (z && i == 0) {
            this.j &= -17;
        }
    }

    public final boolean p() {
        if ((this.j & 128) != 0) {
            return true;
        }
        return false;
    }

    public final boolean q() {
        if ((this.j & 32) != 0) {
            return true;
        }
        return false;
    }

    public final String toString() {
        String simpleName;
        String str;
        if (getClass().isAnonymousClass()) {
            simpleName = "ViewHolder";
        } else {
            simpleName = getClass().getSimpleName();
        }
        StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.c + " id=" + this.e + ", oldPos=" + this.d + ", pLpos:" + this.g);
        if (j()) {
            sb.append(" scrap ");
            if (this.o) {
                str = "[changeScrap]";
            } else {
                str = "[attachedScrap]";
            }
            sb.append(str);
        }
        if (g()) {
            sb.append(" invalid");
        }
        if (!f()) {
            sb.append(" unbound");
        }
        if ((this.j & 2) != 0) {
            sb.append(" update");
        }
        if (i()) {
            sb.append(" removed");
        }
        if (p()) {
            sb.append(" ignored");
        }
        if (k()) {
            sb.append(" tmpDetached");
        }
        if (!h()) {
            sb.append(" not recyclable(" + this.m + ")");
        }
        if ((this.j & 512) != 0 || g()) {
            sb.append(" undefined adapter position");
        }
        if (this.a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
