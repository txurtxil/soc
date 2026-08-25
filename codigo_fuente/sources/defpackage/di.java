package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
/* renamed from: di  reason: default package */
/* loaded from: classes.dex */
public abstract class di {
    public static Signature[] a(PackageInfo packageInfo) {
        SigningInfo signingInfo = packageInfo.signingInfo;
        if (signingInfo == null) {
            return null;
        }
        return signingInfo.getSigningCertificateHistory();
    }
}
