package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class CarRecyclerView extends RecyclerView {
    private boolean a;
    private Constructor<?> b;
    private boolean c;

    public CarRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setFocusableInTouchMode(false);
        setFocusable(false);
    }

    private final void a(View view, float f) {
        if (!(view instanceof ViewGroup)) {
            view.setAlpha(f);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            a(viewGroup.getChildAt(i), f);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j) {
        float f;
        int bottom;
        int top;
        if (this.a) {
            if (view.getTop() < getBottom() && view.getBottom() > getBottom()) {
                bottom = getBottom();
                top = view.getTop();
            } else if (view.getTop() >= getTop() || view.getBottom() <= getTop()) {
                f = 1.0f;
                float f2 = 1.0f - f;
                a(view, 1.0f - (f2 * f2));
            } else {
                bottom = view.getBottom();
                top = getTop();
            }
            f = (bottom - top) / view.getHeight();
            float f22 = 1.0f - f;
            a(view, 1.0f - (f22 * f22));
        }
        return super.drawChild(canvas, view, j);
    }

    public boolean fling(int i, int i2) {
        this.c = true;
        return ((CarLayoutManager) getLayoutManager()).settleScrollForFling(this, i2);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        Class<?> cls;
        if (parcelable.getClass().getClassLoader() == getClass().getClassLoader()) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        if (this.b == null) {
            Class<?>[] declaredClasses = RecyclerView.class.getDeclaredClasses();
            int length = declaredClasses.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cls = null;
                    break;
                }
                cls = declaredClasses[i];
                if (cls.getCanonicalName().equals("android.support.v7.widget.RecyclerView.SavedState")) {
                    break;
                }
                i++;
            }
            if (cls == null) {
                throw new RuntimeException("RecyclerView$SavedState not found!");
            }
            Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
            int length2 = declaredConstructors.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                Constructor<?> constructor = declaredConstructors[i2];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0].getCanonicalName().equals("android.os.Parcel")) {
                    this.b = constructor;
                    constructor.setAccessible(true);
                    break;
                }
                i2++;
            }
            Constructor<?> constructor2 = this.b;
            if (constructor2 == null) {
                throw new RuntimeException("RecyclerView$SavedState constructor not found!");
            }
            this.b = constructor2;
        }
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        try {
            super.onRestoreInstanceState((Parcelable) this.b.newInstance(obtain));
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException e) {
            c2.k(e);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 1) {
            if (!this.c) {
                ((CarLayoutManager) getLayoutManager()).settleScrollForFling(this, 0);
            }
            this.c = false;
        }
        return onTouchEvent;
    }

    public void pageDown() {
        int pageDownPosition = ((CarLayoutManager) getLayoutManager()).getPageDownPosition();
        if (pageDownPosition == -1) {
            return;
        }
        smoothScrollToPosition(pageDownPosition);
    }

    public void pageUp() {
        int pageUpPosition = ((CarLayoutManager) getLayoutManager()).getPageUpPosition();
        if (pageUpPosition == -1) {
            return;
        }
        smoothScrollToPosition(pageUpPosition);
    }

    public void setFadeLastItem(boolean z) {
        this.a = z;
    }

    public CarRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CarRecyclerView(Context context) {
        this(context, null);
    }
}
