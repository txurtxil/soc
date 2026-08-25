package defpackage;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
/* renamed from: ei  reason: default package */
/* loaded from: classes.dex */
public final class ei {
    public final HashMap a;
    public final boolean b;
    public final HashMap c = new HashMap();
    public final PackageManager d;

    static {
        new ei(null, new HashMap(), true);
    }

    public ei(PackageManager packageManager, HashMap hashMap, boolean z) {
        this.d = packageManager;
        this.a = hashMap;
        this.b = z;
    }

    public static String a(Signature signature) {
        MessageDigest messageDigest;
        byte[] byteArray = signature.toByteArray();
        try {
            messageDigest = MessageDigest.getInstance("SHA256");
        } catch (NoSuchAlgorithmException e) {
            Log.e("CarApp.Val", "Could not find SHA256 hash algorithm", e);
            messageDigest = null;
        }
        if (messageDigest == null) {
            return null;
        }
        messageDigest.update(byteArray);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder((digest.length * 3) - 1);
        for (byte b : digest) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(defpackage.n2 r13) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ei.b(n2):boolean");
    }
}
