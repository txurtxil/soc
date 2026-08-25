package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes.dex */
public final class ab {
    private static final String[] a = {"com.google.android.projection.bumblebee", "com.google.android.projection.gearhead"};

    public static String a(Context context) {
        String[] strArr;
        PackageManager packageManager = context.getPackageManager();
        for (String str : a) {
            if (packageManager.getPackageInfo(str, 0) != null) {
                return str;
            }
        }
        c2.g("Android Auto is not installed!");
        return null;
    }
}
