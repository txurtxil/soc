package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;
/* renamed from: r3  reason: default package */
/* loaded from: classes.dex */
public final class r3 extends t3 {
    public final /* synthetic */ int c = 0;
    public final /* synthetic */ w3 d;
    public final Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(w3 w3Var, Context context) {
        super(w3Var);
        this.d = w3Var;
        this.e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // defpackage.t3
    public final IntentFilter e() {
        switch (this.c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.Object, r50] */
    @Override // defpackage.t3
    public final int f() {
        Location location;
        boolean z;
        long j;
        Location location2;
        int i = this.c;
        Object obj = this.e;
        switch (i) {
            case 0:
                if (((PowerManager) obj).isPowerSaveMode()) {
                    return 2;
                }
                return 1;
            default:
                v5 v5Var = (v5) obj;
                s50 s50Var = (s50) v5Var.c;
                LocationManager locationManager = (LocationManager) v5Var.b;
                if (s50Var.b > System.currentTimeMillis()) {
                    z = s50Var.a;
                } else {
                    Context context = (Context) v5Var.d;
                    Location location3 = null;
                    if (gn.h(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        try {
                        } catch (Exception e) {
                            Log.d("TwilightManager", "Failed to get last known location", e);
                        }
                        if (locationManager.isProviderEnabled("network")) {
                            location2 = locationManager.getLastKnownLocation("network");
                            location = location2;
                        }
                        location2 = null;
                        location = location2;
                    } else {
                        location = null;
                    }
                    if (gn.h(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                location3 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e2) {
                            Log.d("TwilightManager", "Failed to get last known location", e2);
                        }
                    }
                    if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                        location = location3;
                    }
                    z = false;
                    if (location != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (r50.d == null) {
                            r50.d = new Object();
                        }
                        r50 r50Var = r50.d;
                        r50Var.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        r50Var.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
                        if (r50Var.c == 1) {
                            z = true;
                        }
                        long j2 = r50Var.b;
                        long j3 = r50Var.a;
                        r50Var.a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
                        long j4 = r50Var.b;
                        if (j2 != -1 && j3 != -1) {
                            if (currentTimeMillis > j3) {
                                j2 = j4;
                            } else if (currentTimeMillis > j2) {
                                j2 = j3;
                            }
                            j = j2 + 60000;
                        } else {
                            j = currentTimeMillis + 43200000;
                        }
                        s50Var.a = z;
                        s50Var.b = j;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i2 = Calendar.getInstance().get(11);
                        if (i2 < 6 || i2 >= 22) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    return 2;
                }
                return 1;
        }
    }

    @Override // defpackage.t3
    public final void h() {
        int i = this.c;
        w3 w3Var = this.d;
        switch (i) {
            case 0:
                w3Var.p(true, true);
                return;
            default:
                w3Var.p(true, true);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(w3 w3Var, v5 v5Var) {
        super(w3Var);
        this.d = w3Var;
        this.e = v5Var;
    }
}
