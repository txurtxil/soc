package defpackage;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: mk  reason: default package */
/* loaded from: classes.dex */
public final class mk {
    public static final mk a;
    public static final mk b;
    public static final mk c;
    public static final mk d;
    public static final mk e;
    public static final /* synthetic */ mk[] f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, mk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, mk] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, mk] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, mk] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, mk] */
    static {
        ?? r0 = new Enum("DESTROYED", 0);
        a = r0;
        ?? r1 = new Enum("INITIALIZED", 1);
        b = r1;
        ?? r2 = new Enum("CREATED", 2);
        c = r2;
        ?? r3 = new Enum("STARTED", 3);
        d = r3;
        ?? r4 = new Enum("RESUMED", 4);
        e = r4;
        f = new mk[]{r0, r1, r2, r3, r4};
    }

    public static mk valueOf(String str) {
        return (mk) Enum.valueOf(mk.class, str);
    }

    public static mk[] values() {
        return (mk[]) f.clone();
    }
}
