package defpackage;

import idv.lzn.screenonauto.privileged.PrivilegedManager;
/* renamed from: cz  reason: default package */
/* loaded from: classes.dex */
public abstract /* synthetic */ class cz {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[PrivilegedManager.Kind.values().length];
        try {
            iArr[PrivilegedManager.Kind.ROOT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        a = iArr;
    }
}
