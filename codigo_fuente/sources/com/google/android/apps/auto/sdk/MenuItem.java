package com.google.android.apps.auto.sdk;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class MenuItem extends a {
    public static final Parcelable.Creator<MenuItem> CREATOR = new b(MenuItem.class);
    private int a;
    private int b;
    private Bundle c;
    private CharSequence d;
    private CharSequence e;
    private CharSequence f;
    private int g;
    private Bitmap h;
    private boolean i;
    private RemoteViews j;
    private char k;

    /* loaded from: classes.dex */
    public static class Builder {
        private MenuItem a;

        public Builder(MenuItem menuItem) {
            Bundle bundle = new Bundle();
            menuItem.a(bundle);
            MenuItem menuItem2 = new MenuItem();
            this.a = menuItem2;
            menuItem2.b(bundle);
        }

        public MenuItem build() {
            String str;
            if (TextUtils.isEmpty(this.a.d)) {
                Log.w("CSL.MenuItem", "MenuItem title should be non-empty");
            }
            if (this.a.b != 1 && this.a.i) {
                str = "MenuItem is not a checkbox type but is checked";
            } else if (this.a.b != 3 && this.a.j != null) {
                str = "The menu is not a special view, but has remote views";
            } else if (this.a.getIconBitmap() == null || this.a.getIconResId() == 0) {
                return this.a;
            } else {
                str = "Cannot set both icon resId and bitmap";
            }
            c2.n(str);
            return null;
        }

        public Builder setChecked(boolean z) {
            this.a.i = z;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.a.c = bundle;
            return this;
        }

        public Builder setIconBitmap(Bitmap bitmap) {
            this.a.h = bitmap;
            return this;
        }

        public Builder setIconResId(int i) {
            this.a.g = i;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.a.e = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.a.d = charSequence;
            return this;
        }

        public Builder setType(int i) {
            this.a.b = i;
            return this;
        }

        public Builder() {
            this.a = new MenuItem();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Type {
        public static final int CHECKBOX = 1;
        public static final int ITEM = 0;
        public static final int SUBMENU = 2;
    }

    @Override // com.google.android.apps.auto.sdk.a
    public final void a(Bundle bundle) {
        bundle.putInt("position", this.a);
        bundle.putInt("type", this.b);
        bundle.putBundle("extras", this.c);
        bundle.putCharSequence("title", this.d);
        bundle.putCharSequence("subtitle", this.e);
        bundle.putCharSequence("description", this.f);
        bundle.putInt("icon_res_id", this.g);
        bundle.putParcelable("icon_bitmap_id", this.h);
        bundle.putBoolean("is_checked", this.i);
        bundle.putParcelable("remote_views", this.j);
        bundle.putChar("normalized_title_initial", this.k);
    }

    @Override // com.google.android.apps.auto.sdk.a
    public final void b(Bundle bundle) {
        this.a = bundle.getInt("position");
        this.b = bundle.getInt("type");
        this.c = bundle.getBundle("extras");
        CharSequence charSequence = bundle.getCharSequence("title");
        this.d = charSequence;
        if (charSequence != null) {
            this.d = charSequence.toString();
        }
        CharSequence charSequence2 = bundle.getCharSequence("subtitle");
        this.e = charSequence2;
        if (charSequence2 != null) {
            this.e = charSequence2.toString();
        }
        CharSequence charSequence3 = bundle.getCharSequence("description");
        this.f = charSequence3;
        if (charSequence3 != null) {
            this.f = charSequence3.toString();
        }
        this.g = bundle.getInt("icon_res_id");
        this.h = (Bitmap) bundle.getParcelable("icon_bitmap_id");
        this.i = bundle.getBoolean("is_checked");
        this.j = (RemoteViews) bundle.getParcelable("remote_views");
        this.k = bundle.getChar("normalized_title_initial");
    }

    public Bundle getExtras() {
        return this.c;
    }

    public Bitmap getIconBitmap() {
        return this.h;
    }

    public int getIconResId() {
        return this.g;
    }

    public CharSequence getSubtitle() {
        return this.e;
    }

    public CharSequence getTitle() {
        return this.d;
    }

    public int getType() {
        return this.b;
    }

    public boolean isChecked() {
        return this.i;
    }

    @Override // com.google.android.apps.auto.sdk.a
    public String toString() {
        return "[MenuItem " + this.a + ", type " + this.b + ", extras " + this.c + ", title " + this.d + ", subtitle " + this.e + ", description " + this.f + ", iconResId " + this.g + ", iconBitmap " + this.h + ", isChecked " + this.i + ", remoteViews " + this.j + ", normalizedTitleInitial " + this.k + "]";
    }

    public final void a(int i) {
        this.a = i;
    }

    public final int a() {
        return this.a;
    }

    public final void a(boolean z) {
        if (this.b == 1) {
            this.i = z;
        } else {
            c2.n("MenuItem is not a checkbox type");
        }
    }
}
