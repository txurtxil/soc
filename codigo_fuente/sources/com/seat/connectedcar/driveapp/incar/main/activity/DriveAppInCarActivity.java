package com.seat.connectedcar.driveapp.incar.main.activity;

import android.content.Context;
import android.os.Bundle;
import com.google.android.apps.auto.sdk.CarActivity;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class DriveAppInCarActivity extends CarActivity {
    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(new f8(context));
    }

    @Override // com.google.android.apps.auto.sdk.CarActivity, defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.attr.actionModeStyle);
        throw null;
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onDestroy() {
        super.onDestroy();
        throw null;
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onResume() {
        super.onResume();
        throw null;
    }

    @Override // com.google.android.apps.auto.sdk.CarActivity, defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onStop() {
        super.onStop();
        throw null;
    }
}
