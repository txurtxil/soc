package com.google.android.apps.auto.sdk.service.a;

import android.util.Log;
import com.google.android.gms.car.CarMessageManager;
import com.google.android.gms.car.CarNotConnectedException;
/* loaded from: classes.dex */
public final class a extends p90 {
    private CarMessageManager a;
    private b b;

    public a(CarMessageManager carMessageManager) {
        this.a = carMessageManager;
        b bVar = new b(this);
        this.b = bVar;
        this.a.registerMessageListener(bVar);
    }

    private final void a(int i, boolean z) {
        StringBuilder sb;
        String str;
        CarMessageManager carMessageManager = this.a;
        int i2 = 1;
        if (i == 0 || i == 1) {
            if (i != 0) {
                if (i != 1) {
                    sb = new StringBuilder(28);
                    str = "Unknown category ";
                } else if (!z) {
                    i2 = 0;
                }
            } else if (!z) {
                i2 = 2;
            }
            carMessageManager.sendIntegerMessage(i, 0, i2);
            return;
        }
        sb = new StringBuilder(27);
        str = "Unknown appType ";
        sb.append(str);
        sb.append(i);
        Log.d("CarAppFocusManagerGms", sb.toString());
        c2.n("invalid category");
    }

    private static int b(int i) {
        if (i != 1) {
            if (i == 2) {
                return 0;
            }
            StringBuilder sb = new StringBuilder(27);
            sb.append("Unknown appType ");
            sb.append(i);
            Log.d("CarAppFocusManagerGms", sb.toString());
            c2.n("invalid app type");
            return 0;
        }
        return 1;
    }

    public final void abandonAppFocus(o90 o90Var) {
        String str;
        String str2;
        synchronized (this.b) {
            for (Integer num : this.b.a(o90Var)) {
                try {
                    a(num.intValue(), false);
                    this.a.releaseCategory(num.intValue());
                } catch (CarNotConnectedException e) {
                    e = e;
                    str = "CarAppFocusManagerGms";
                    str2 = "Abandoned app focus but car is not connected";
                    Log.d(str, str2, e);
                } catch (IllegalStateException e2) {
                    e = e2;
                    str = "CarAppFocusManagerGms";
                    str2 = "Abandoned app focus but caller isn't the owner.  Ignoring.";
                    Log.d(str, str2, e);
                }
            }
        }
    }

    public final void addFocusListener(n90 n90Var, int i) {
        this.b.b(b(i), n90Var);
    }

    public final boolean isOwningFocus(int i, o90 o90Var) {
        return this.b.a(o90Var, b(i));
    }

    public final void onCarDisconnected() {
    }

    public final void removeFocusListener(n90 n90Var, int i) {
        this.b.a(b(i), n90Var);
    }

    public final int requestAppFocus(int i, o90 o90Var) {
        boolean acquireCategory;
        if (o90Var != null) {
            synchronized (this.b) {
                int b = b(i);
                this.b.a(b);
                try {
                    acquireCategory = this.a.acquireCategory(b);
                    if (acquireCategory) {
                        this.b.a(b, o90Var);
                        a(b, true);
                        o90Var.b();
                    }
                } catch (CarNotConnectedException e) {
                    throw new Exception(e);
                }
            }
            return acquireCategory ? 1 : 0;
        }
        c2.n("null listener");
        return 0;
    }

    public static int a(int i) {
        if (i != 0) {
            if (i == 1) {
                return 1;
            }
            StringBuilder sb = new StringBuilder(28);
            sb.append("Unknown category ");
            sb.append(i);
            Log.d("CarAppFocusManagerGms", sb.toString());
            c2.n("invalid category type");
            return 0;
        }
        return 2;
    }

    public final void abandonAppFocus(o90 o90Var, int i) {
        String str;
        String str2;
        int b = b(i);
        synchronized (this.b) {
            this.b.a(b);
            if (o90Var == null) {
                this.b.b(b, o90Var);
                try {
                    a(b, false);
                    this.a.releaseCategory(b);
                } catch (CarNotConnectedException e) {
                    e = e;
                    str = "CarAppFocusManagerGms";
                    str2 = "Abandoned app focus but car is not connected";
                    Log.d(str, str2, e);
                } catch (IllegalStateException e2) {
                    e = e2;
                    str = "CarAppFocusManagerGms";
                    str2 = "Abandoned app focus but caller isn't the owner.  Ignoring.";
                    Log.d(str, str2, e);
                }
            }
        }
    }

    public final void removeFocusListener(n90 n90Var) {
        this.b.a(n90Var);
    }
}
