package defpackage;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.car.app.navigation.model.Maneuver;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;
/* renamed from: lc  reason: default package */
/* loaded from: classes.dex */
public final class lc {
    public final Executor a;
    public final dv b;
    public final byte[] c;
    public final File d;
    public final String e;
    public boolean f = false;
    public mc[] g;
    public byte[] h;

    public lc(AssetManager assetManager, Executor executor, dv dvVar, String str, File file) {
        this.a = executor;
        this.b = dvVar;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i <= 33) {
            switch (i) {
                case Maneuver.TYPE_OFF_RAMP_NORMAL_RIGHT /* 24 */:
                case Maneuver.TYPE_FORK_LEFT /* 25 */:
                    bArr = gt.g;
                    break;
                case Maneuver.TYPE_FORK_RIGHT /* 26 */:
                    bArr = gt.f;
                    break;
                case Maneuver.TYPE_MERGE_LEFT /* 27 */:
                    bArr = gt.e;
                    break;
                case Maneuver.TYPE_MERGE_RIGHT /* 28 */:
                case Maneuver.TYPE_MERGE_SIDE_UNSPECIFIED /* 29 */:
                case 30:
                    bArr = gt.d;
                    break;
                case 31:
                case 32:
                case Maneuver.TYPE_ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE /* 33 */:
                    bArr = gt.c;
                    break;
            }
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.b.i();
                return null;
            }
            return null;
        }
    }

    public final void b(int i, Serializable serializable) {
        this.a.execute(new kc(this, i, serializable, 0));
    }
}
