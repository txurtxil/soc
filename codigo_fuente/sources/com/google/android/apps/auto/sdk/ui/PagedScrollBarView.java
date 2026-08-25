package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class PagedScrollBarView extends FrameLayout implements View.OnClickListener, View.OnLongClickListener {
    private final ImageView a;
    private final ImageView b;
    private final ImageView c;
    private final View d;
    private final Interpolator e;
    private final int f;
    private final int g;
    private PaginationListener h;

    /* loaded from: classes.dex */
    public interface PaginationListener {
        public static final int PAGE_DOWN = 1;
        public static final int PAGE_UP = 0;

        void onPaginate(int i);
    }

    public PagedScrollBarView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = new AccelerateDecelerateInterpolator();
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.car_paged_scrollbar_buttons, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.page_up);
        this.a = imageView;
        imageView.setOnClickListener(this);
        imageView.setOnLongClickListener(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.page_down);
        this.b = imageView2;
        imageView2.setOnClickListener(this);
        imageView2.setOnLongClickListener(this);
        this.c = (ImageView) findViewById(R.id.scrollbar_thumb);
        this.d = findViewById(R.id.filler);
        this.f = getResources().getDimensionPixelSize(R.dimen.material_ic_clear_black_24dp);
        this.g = getResources().getDimensionPixelSize(R.dimen.material_ic_calendar_black_24dp);
        if (context.getResources().getBoolean(R.bool.btn_checkbox_checked_mtrl_animation_interpolator_0)) {
            return;
        }
        imageView.setVisibility(8);
        imageView2.setVisibility(8);
    }

    private final void a(View view) {
        PaginationListener paginationListener = this.h;
        if (paginationListener == null) {
            return;
        }
        paginationListener.onPaginate(view.getId() == R.id.page_up ? 0 : 1);
    }

    public boolean isDownEnabled() {
        return this.b.isEnabled();
    }

    public boolean isDownPressed() {
        return this.b.isPressed();
    }

    public boolean isUpPressed() {
        return this.a.isPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a(view);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        a(view);
        return true;
    }

    public void setAutoDayNightMode() {
        int color = getResources().getColor(R.color.m3_sys_motion_duration_extra_long1);
        ImageView imageView = this.a;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(color, mode);
        ImageView imageView2 = this.a;
        int i = R.drawable.car_pagination_background;
        imageView2.setBackgroundResource(i);
        this.b.setColorFilter(color, mode);
        this.b.setBackgroundResource(i);
    }

    public void setDarkMode() {
        int color = getResources().getColor(R.color.car_tint_dark);
        ImageView imageView = this.a;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(color, mode);
        ImageView imageView2 = this.a;
        int i = R.drawable.car_pagination_background_dark;
        imageView2.setBackgroundResource(i);
        this.b.setColorFilter(color, mode);
        this.b.setBackgroundResource(i);
    }

    public void setDownEnabled(boolean z) {
        this.b.setEnabled(z);
        this.b.setAlpha(z ? 1.0f : 0.2f);
    }

    public void setLightMode() {
        int color = getResources().getColor(R.color.car_tint_light);
        ImageView imageView = this.a;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(color, mode);
        ImageView imageView2 = this.a;
        int i = R.drawable.car_pagination_background_light;
        imageView2.setBackgroundResource(i);
        this.b.setColorFilter(color, mode);
        this.b.setBackgroundResource(i);
    }

    public void setPaginationListener(PaginationListener paginationListener) {
        this.h = paginationListener;
    }

    public void setParameters(int i, int i2, int i3, boolean z) {
        int height = (this.d.getHeight() - this.d.getPaddingTop()) - this.d.getPaddingBottom();
        int max = Math.max(Math.min((i3 * height) / i, this.g), this.f);
        int i4 = height - max;
        if (isDownEnabled()) {
            i4 = (i4 * i2) / i;
        }
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        if (layoutParams.height != max) {
            layoutParams.height = max;
            this.c.requestLayout();
        }
        this.c.animate().y(i4).setDuration(z ? 200 : 0).setInterpolator(this.e).start();
    }

    public void setUpEnabled(boolean z) {
        this.a.setEnabled(z);
        this.a.setAlpha(z ? 1.0f : 0.2f);
    }

    public PagedScrollBarView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PagedScrollBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }
}
