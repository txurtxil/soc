package defpackage;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: yz  reason: default package */
/* loaded from: classes.dex */
public final class yz {
    public static final yz a;
    public static final yz b;
    public static final /* synthetic */ yz[] c;

    /* JADX WARN: Type inference failed for: r0v0, types: [yz, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [yz, java.lang.Enum] */
    static {
        ?? r0 = new Enum("NAV", 0);
        a = r0;
        ?? r1 = new Enum("LEGACY", 1);
        b = r1;
        c = new yz[]{r0, r1};
    }

    public static yz valueOf(String str) {
        return (yz) Enum.valueOf(yz.class, str);
    }

    public static yz[] values() {
        return (yz[]) c.clone();
    }
}
