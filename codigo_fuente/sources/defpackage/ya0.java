package defpackage;

import android.content.Context;
import com.google.android.gms.car.CarInfoManager;
import com.google.android.gms.car.CarNotConnectedException;
import com.google.android.gms.car.CarNotSupportedException;
/* renamed from: ya0  reason: default package */
/* loaded from: classes.dex */
public abstract class ya0 extends cb0 {
    public static void a(Context context, String str) {
        za0.b(context, str);
    }

    public final boolean f() {
        try {
            return ((CarInfoManager) a("info")).loadCarInfo().isHidePhoneSignal();
        } catch (CarNotSupportedException e) {
            throw new CarNotConnectedException(e);
        }
    }

    public final boolean g() {
        try {
            return ((CarInfoManager) a("info")).loadCarInfo().isHideBatteryLevel();
        } catch (CarNotSupportedException e) {
            throw new CarNotConnectedException(e);
        }
    }

    public final boolean h() {
        try {
            return ((CarInfoManager) a("info")).loadCarInfo().isHideProjectedClock();
        } catch (CarNotSupportedException e) {
            throw new CarNotConnectedException(e);
        }
    }
}
