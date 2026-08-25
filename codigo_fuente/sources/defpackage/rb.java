package defpackage;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
/* renamed from: rb  reason: default package */
/* loaded from: classes.dex */
public final class rb extends hd {
    @Override // defpackage.hd
    public final Signature[] b(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
