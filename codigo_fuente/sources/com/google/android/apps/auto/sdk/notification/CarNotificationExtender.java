package com.google.android.apps.auto.sdk.notification;

import android.app.Notification;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class CarNotificationExtender {
    private boolean a;
    private Long b;
    private CharSequence c;
    private CharSequence d;
    private Bitmap e;
    private int f;
    private Intent g;
    private int h;
    private int i;
    private boolean j;

    /* loaded from: classes.dex */
    public static class Builder {
        private final CarNotificationExtender a = new CarNotificationExtender((byte) 0);

        public CarNotificationExtender build() {
            String str;
            if (TextUtils.isEmpty(this.a.c)) {
                str = "A title is required.";
            } else if (this.a.f == 0) {
                str = "An action icon is required";
            } else if (!this.a.j || this.a.e != null) {
                return this.a;
            } else {
                str = "A thumbnail icon is required for heads up notification.";
            }
            c2.n(str);
            return null;
        }

        public Builder setActionIconResId(int i) {
            this.a.f = i;
            return this;
        }

        public Builder setActionIntent(Intent intent) {
            this.a.g = intent;
            return this;
        }

        public Builder setBackgroundColor(int i) {
            this.a.h = i;
            return this;
        }

        public Builder setContentId(long j) {
            this.a.b = Long.valueOf(j);
            return this;
        }

        public Builder setNightBackgroundColor(int i) {
            this.a.i = i;
            return this;
        }

        public Builder setShouldShowAsHeadsUp(boolean z) {
            this.a.j = z;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.a.d = charSequence;
            return this;
        }

        public Builder setThumbnail(Bitmap bitmap) {
            this.a.e = bitmap;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.a.c = charSequence;
            return this;
        }
    }

    public CarNotificationExtender(Notification notification) {
        Bundle bundle;
        this.h = 0;
        this.i = 0;
        Bundle bundle2 = notification.extras;
        if (bundle2 == null) {
            bundle = null;
        } else {
            bundle = bundle2.getBundle("android.car.EXTENSIONS");
        }
        if (bundle != null) {
            this.a = bundle.getBoolean("com.google.android.gms.car.support.CarNotificationExtender.EXTENDED");
            this.b = (Long) bundle.getSerializable("content_id");
            this.c = bundle.getCharSequence("android.title");
            this.d = bundle.getCharSequence("subtitle");
            this.e = (Bitmap) bundle.getParcelable("thumbnail");
            this.f = bundle.getInt("action_icon");
            this.g = (Intent) bundle.getParcelable("content_intent");
            this.h = bundle.getInt("app_color", 0);
            this.i = bundle.getInt("app_night_color", 0);
            this.j = bundle.getBoolean("heads_up_visibility");
        }
    }

    public r90 extend(r90 r90Var) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.car.support.CarNotificationExtender.EXTENDED", true);
        bundle.putSerializable("content_id", this.b);
        bundle.putCharSequence("android.title", this.c);
        bundle.putCharSequence("subtitle", this.d);
        bundle.putParcelable("thumbnail", this.e);
        bundle.putInt("action_icon", this.f);
        bundle.putParcelable("content_intent", this.g);
        bundle.putInt("app_color", this.h);
        bundle.putInt("app_night_color", this.i);
        bundle.putBoolean("heads_up_visibility", this.j);
        throw null;
    }

    public int getActionIconResId() {
        return this.f;
    }

    public Intent getActionIntent() {
        return this.g;
    }

    public int getBackgroundColor() {
        return this.h;
    }

    public Long getContentId() {
        return this.b;
    }

    public int getNightBackgroundColor() {
        return this.i;
    }

    public boolean getShouldShowAsHeadsUp() {
        return this.j;
    }

    public CharSequence getSubtitle() {
        return this.d;
    }

    public Bitmap getThumbnail() {
        return this.e;
    }

    public CharSequence getTitle() {
        return this.c;
    }

    public boolean isExtended() {
        return this.a;
    }

    public /* synthetic */ CarNotificationExtender(byte b) {
        this();
    }

    private CarNotificationExtender() {
        this.h = 0;
        this.i = 0;
    }
}
