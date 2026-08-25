package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
/* renamed from: ws  reason: default package */
/* loaded from: classes.dex */
public abstract class ws {
    public static Signature[] a(SigningInfo signingInfo) {
        return signingInfo.getApkContentsSigners();
    }

    public static long b(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static Signature[] c(SigningInfo signingInfo) {
        return signingInfo.getSigningCertificateHistory();
    }

    public static boolean d(SigningInfo signingInfo) {
        return signingInfo.hasMultipleSigners();
    }

    public static boolean e(PackageManager packageManager, String str, byte[] bArr, int i) {
        return packageManager.hasSigningCertificate(str, bArr, i);
    }
}
