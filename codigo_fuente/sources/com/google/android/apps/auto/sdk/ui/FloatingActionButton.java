package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Checkable;
import android.widget.ImageButton;
/* loaded from: classes.dex */
public class FloatingActionButton extends ImageButton implements Checkable {
    private static final int[] h = {16842912};
    private Animation a;
    private Animation b;
    private Drawable c;
    private b d;
    private boolean e;
    private boolean f;
    private OnCheckedChangeListener g;

    /* loaded from: classes.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(FloatingActionButton floatingActionButton, boolean z);
    }

    /* loaded from: classes.dex */
    public static final class a extends View.BaseSavedState {
        public static final Parcelable.Creator<a> CREATOR = new d();
        boolean a;

        private a(Parcel parcel) {
            super(parcel);
            this.a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public final String toString() {
            String valueOf = String.valueOf(Integer.toHexString(System.identityHashCode(this)));
            boolean z = this.a;
            StringBuilder sb = new StringBuilder(valueOf.length() + 47);
            sb.append("FloatingActionButton.SavedState{");
            sb.append(valueOf);
            sb.append(" checked=");
            sb.append(z);
            sb.append("}");
            return sb.toString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.a));
        }

        public /* synthetic */ a(Parcel parcel, byte b) {
            this(parcel);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        Custom(0, 0),
        Oval(1, R.drawable.car_oval_button_ripple),
        Rectangular(2, R.drawable.car_rectangular_button_ripple),
        Toggle(3, R.drawable.car_toggle_button_ripple);
        
        final int b;

        b(int i, int i2) {
            this.b = i2;
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton, i, i2);
        try {
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.FloatingActionButton_focusGainedAnimation, 0);
            if (resourceId != 0) {
                this.a = AnimationUtils.loadAnimation(getContext(), resourceId);
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.FloatingActionButton_focusLostAnimation, 0);
            if (resourceId2 != 0) {
                this.b = AnimationUtils.loadAnimation(getContext(), resourceId2);
            }
            b bVar = b.values()[obtainStyledAttributes.getInt(R.styleable.FloatingActionButton_buttonType, 0)];
            this.d = bVar;
            Context context2 = getContext();
            int i3 = bVar.b;
            this.c = i3 == 0 ? null : context2.getDrawable(i3);
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.e;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Animation animation = this.b;
        if (animation != null) {
            startAnimation(animation);
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            setBackground(drawable);
        }
        String valueOf = String.valueOf(getResources().getResourceEntryName(getId()));
        Log.i("FloatingActionButton", valueOf.length() != 0 ? "id: ".concat(valueOf) : new String("id: "));
        String valueOf2 = String.valueOf(this.d);
        StringBuilder sb = new StringBuilder(valueOf2.length() + 7);
        sb.append("mType: ");
        sb.append(valueOf2);
        Log.i("FloatingActionButton", sb.toString());
        String valueOf3 = String.valueOf(this.a);
        StringBuilder sb2 = new StringBuilder(valueOf3.length() + 23);
        sb2.append("mFocusGainedAnimation: ");
        sb2.append(valueOf3);
        Log.i("FloatingActionButton", sb2.toString());
        String valueOf4 = String.valueOf(this.b);
        StringBuilder sb3 = new StringBuilder(valueOf4.length() + 21);
        sb3.append("mFocusLostAnimation: ");
        sb3.append(valueOf4);
        Log.i("FloatingActionButton", sb3.toString());
        String valueOf5 = String.valueOf(this.c);
        StringBuilder sb4 = new StringBuilder(valueOf5.length() + 13);
        sb4.append("mBackground: ");
        sb4.append(valueOf5);
        Log.i("FloatingActionButton", sb4.toString());
        boolean z = this.e;
        StringBuilder sb5 = new StringBuilder(17);
        sb5.append("mIsChecked: ");
        sb5.append(z);
        Log.i("FloatingActionButton", sb5.toString());
        boolean z2 = this.f;
        StringBuilder sb6 = new StringBuilder(22);
        sb6.append("mIsBroadcasting: ");
        sb6.append(z2);
        Log.i("FloatingActionButton", sb6.toString());
        String valueOf6 = String.valueOf(this.g);
        StringBuilder sb7 = new StringBuilder(valueOf6.length() + 26);
        sb7.append("mOnCheckedChangeListener: ");
        sb7.append(valueOf6);
        Log.i("FloatingActionButton", sb7.toString());
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArr = h;
        int[] onCreateDrawableState = super.onCreateDrawableState(iArr.length + i);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, iArr);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            Animation animation = this.a;
            if (animation != null) {
                startAnimation(animation);
                return;
            }
            return;
        }
        Animation animation2 = this.b;
        if (animation2 != null) {
            startAnimation(animation2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        setChecked(aVar.a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.a = isChecked();
        return aVar;
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.e == z) {
            return;
        }
        this.e = z;
        refreshDrawableState();
        if (this.f) {
            return;
        }
        this.f = true;
        OnCheckedChangeListener onCheckedChangeListener = this.g;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(this, this.e);
        }
        this.f = false;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.g = onCheckedChangeListener;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (this.d == b.Toggle) {
            setChecked(!this.e);
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.carButtonStyle, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public FloatingActionButton(Context context) {
        this(context, null, R.attr.carButtonStyle, 0);
    }
}
