package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
/* loaded from: classes.dex */
public class CarToast {
    private CarToast() {
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        Context createPackageContext;
        if (Log.isLoggable("CSL.CarToast", 3)) {
            String valueOf = String.valueOf(charSequence);
            StringBuilder sb = new StringBuilder(valueOf.length() + 31);
            sb.append("makeText ");
            sb.append(valueOf);
            sb.append(", duration ");
            sb.append(i);
            Log.d("CSL.CarToast", sb.toString());
        }
        if (context == null) {
            c2.n("Context cannot be null");
            return null;
        }
        aa aaVar = new aa(context);
        String a = ab.a(context);
        if (context.getPackageName().equals(a)) {
            try {
                createPackageContext = context.createPackageContext("com.google.android.gms", 2);
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalStateException("Bad package: com.google.android.gms", e);
            }
        } else {
            createPackageContext = aaVar.a();
        }
        FrameLayout frameLayout = new FrameLayout(createPackageContext);
        frameLayout.setClipChildren(false);
        Resources resources = aaVar.a().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(resources.getIdentifier("car_toast_padding", "dimen", a));
        frameLayout.setPadding(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
        ((TextView) ((ViewGroup) LayoutInflater.from(aaVar.a()).inflate(resources.getIdentifier("adu_toast", "layout", a), frameLayout)).findViewById(16908299)).setText(charSequence);
        Toast toast = new Toast(aaVar.a());
        toast.setView(frameLayout);
        toast.setDuration(i);
        toast.setGravity(87, 0, resources.getDimensionPixelOffset(resources.getIdentifier("toast_y_offset", "dimen", a)));
        return toast;
    }

    public static Toast makeText(Context context, int i, int i2) {
        return makeText(context, context.getResources().getText(i), i2);
    }
}
