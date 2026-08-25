package idv.lzn.screenonauto;

import android.app.UiModeManager;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public final class AdvancedSettingsActivity extends z2 {
    @Override // defpackage.z2, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        context.getClass();
        j3.l();
        super.attachBaseContext(context);
    }

    @Override // defpackage.z2, androidx.activity.a, defpackage.ka, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_advanced_settings);
        w((Toolbar) findViewById(R.id.toolbar));
        k60 l = l();
        if (l != null) {
            l.F(true);
        }
        setTitle(R.string.pref_advanced_title);
        if (bundle == null) {
            ig igVar = ((wf) this.t.b).m;
            igVar.getClass();
            e7 e7Var = new e7(igVar);
            e7Var.g(R.id.advanced_settings_container, new d2());
            e7Var.d(false);
        }
    }

    @Override // defpackage.z2, android.app.Activity
    public final void onStart() {
        Object systemService = getSystemService("uimode");
        systemService.getClass();
        int nightMode = ((UiModeManager) systemService).getNightMode();
        j3 k = k();
        int i = 2;
        if (nightMode != 2) {
            i = 1;
        }
        k.n(i);
        super.onStart();
    }

    @Override // defpackage.z2
    public final boolean v() {
        finish();
        return true;
    }
}
