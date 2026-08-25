package com.google.android.apps.auto.sdk;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class SearchItem extends a {
    public static final Parcelable.Creator<SearchItem> CREATOR = new b(SearchItem.class);
    private int a;
    private Bundle b;
    private CharSequence c;
    private CharSequence d;
    private CharSequence e;
    private CharSequence f;
    private int g;
    private Bitmap h;

    /* loaded from: classes.dex */
    public static class Builder {
        private SearchItem a = new SearchItem();

        public SearchItem build() {
            String str;
            if (TextUtils.isEmpty(this.a.c)) {
                str = "SearchItem title must be non-empty";
            } else {
                boolean z = (TextUtils.isEmpty(this.a.d) && TextUtils.isEmpty(this.a.e) && TextUtils.isEmpty(this.a.f) && this.a.g == 0) ? false : true;
                if (this.a.a == 1 && z) {
                    str = "Search suggestion can only contain title";
                } else if (this.a.getIconBitmap() == null || this.a.getIconResId() == 0) {
                    return this.a;
                } else {
                    str = "Cannot set both icon resId and bitmap";
                }
            }
            c2.n(str);
            return null;
        }

        public Builder setDescription(CharSequence charSequence) {
            this.a.e = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.a.b = bundle;
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

        public Builder setSubDescription(CharSequence charSequence) {
            this.a.f = charSequence;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.a.d = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.a.c = charSequence;
            return this;
        }

        public Builder setType(int i) {
            this.a.a = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Type {
        public static final int SEARCH_RESULT = 0;
        public static final int SUGGESTION = 1;
    }

    @Override // com.google.android.apps.auto.sdk.a
    public final void a(Bundle bundle) {
        bundle.putInt("type", this.a);
        bundle.putBundle("extras", this.b);
        bundle.putCharSequence("title", this.c);
        bundle.putCharSequence("subtitle", this.d);
        bundle.putCharSequence("description", this.e);
        bundle.putCharSequence("sub_description", this.f);
        bundle.putInt("icon_res_id", this.g);
        bundle.putParcelable("icon_bitmap_id", this.h);
    }

    @Override // com.google.android.apps.auto.sdk.a
    public final void b(Bundle bundle) {
        this.a = bundle.getInt("type");
        this.b = bundle.getBundle("extras");
        CharSequence charSequence = bundle.getCharSequence("title");
        this.c = charSequence;
        if (charSequence != null) {
            this.c = charSequence.toString();
        }
        CharSequence charSequence2 = bundle.getCharSequence("subtitle");
        this.d = charSequence2;
        if (charSequence2 != null) {
            this.d = charSequence2.toString();
        }
        this.e = bundle.getCharSequence("description");
        this.f = bundle.getCharSequence("sub_description");
        this.g = bundle.getInt("icon_res_id");
        this.h = (Bitmap) bundle.getParcelable("icon_bitmap_id");
    }

    public CharSequence getDescription() {
        return this.e;
    }

    public Bundle getExtras() {
        return this.b;
    }

    public Bitmap getIconBitmap() {
        return this.h;
    }

    public int getIconResId() {
        return this.g;
    }

    public CharSequence getSubDescription() {
        return this.f;
    }

    public CharSequence getSubtitle() {
        return this.d;
    }

    public CharSequence getTitle() {
        return this.c;
    }

    public int getType() {
        return this.a;
    }

    @Override // com.google.android.apps.auto.sdk.a
    public String toString() {
        return "[SearchItem type " + this.a + ", extras " + this.b + ", title " + this.c + ", subtitle " + this.d + ", description " + this.e + ", sub-description " + this.f + ", iconResId " + this.g + ", iconBitmap " + this.h + "]";
    }
}
