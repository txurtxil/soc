package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: td  reason: default package */
/* loaded from: classes.dex */
public final class td {
    public static final Object i = new Object();
    public static volatile td j;
    public final ReentrantReadWriteLock a;
    public final v6 b;
    public volatile int c;
    public final Handler d;
    public final od e;
    public final sd f;
    public final int g;
    public final sb h;

    public td(ef efVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock;
        this.c = 3;
        sd sdVar = (sd) efVar.b;
        this.f = sdVar;
        int i2 = efVar.a;
        this.g = i2;
        this.h = (sb) efVar.c;
        this.d = new Handler(Looper.getMainLooper());
        this.b = new v6(0);
        od odVar = new od(this);
        this.e = odVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i2 == 0) {
            try {
                this.c = 0;
            } catch (Throwable th) {
                this.a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                sdVar.c(new nd(odVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static td a() {
        td tdVar;
        boolean z;
        synchronized (i) {
            try {
                tdVar = j;
                if (tdVar != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return tdVar;
    }

    public final int b() {
        this.a.readLock().lock();
        try {
            return this.c;
        } finally {
            this.a.readLock().unlock();
        }
    }

    public final void c() {
        boolean z;
        if (this.g == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (b() == 1) {
                return;
            }
            this.a.writeLock().lock();
            try {
                if (this.c == 0) {
                    return;
                }
                this.c = 0;
                this.a.writeLock().unlock();
                od odVar = this.e;
                td tdVar = odVar.a;
                try {
                    tdVar.f.c(new nd(odVar));
                    return;
                } catch (Throwable th) {
                    tdVar.d(th);
                    return;
                }
            } finally {
                this.a.writeLock().unlock();
            }
        }
        c2.g("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.a.writeLock().lock();
        try {
            this.c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.a.writeLock().unlock();
            this.d.post(new rd(arrayList, this.c, th));
        } catch (Throwable th2) {
            this.a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0161, code lost:
        if (r0 != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0163, code lost:
        ((defpackage.p20) r11).b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0169, code lost:
        return r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008b A[Catch: all -> 0x006d, TryCatch #0 {all -> 0x006d, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:47:0x007a, B:49:0x0084, B:51:0x0087, B:53:0x008b, B:55:0x009b, B:56:0x009e, B:58:0x00ab, B:61:0x00b3, B:66:0x00d2, B:72:0x00de, B:75:0x00ea, B:76:0x00f4, B:77:0x0103, B:79:0x010a, B:80:0x010f, B:82:0x011a, B:84:0x0121, B:86:0x0125, B:88:0x012b, B:90:0x012f, B:93:0x0137, B:96:0x0143, B:97:0x0149, B:99:0x0157, B:45:0x0070), top: B:124:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0143 A[Catch: all -> 0x006d, TryCatch #0 {all -> 0x006d, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:47:0x007a, B:49:0x0084, B:51:0x0087, B:53:0x008b, B:55:0x009b, B:56:0x009e, B:58:0x00ab, B:61:0x00b3, B:66:0x00d2, B:72:0x00de, B:75:0x00ea, B:76:0x00f4, B:77:0x0103, B:79:0x010a, B:80:0x010f, B:82:0x011a, B:84:0x0121, B:86:0x0125, B:88:0x012b, B:90:0x012f, B:93:0x0137, B:96:0x0143, B:97:0x0149, B:99:0x0157, B:45:0x0070), top: B:124:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0157 A[Catch: all -> 0x006d, TRY_LEAVE, TryCatch #0 {all -> 0x006d, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:47:0x007a, B:49:0x0084, B:51:0x0087, B:53:0x008b, B:55:0x009b, B:56:0x009e, B:58:0x00ab, B:61:0x00b3, B:66:0x00d2, B:72:0x00de, B:75:0x00ea, B:76:0x00f4, B:77:0x0103, B:79:0x010a, B:80:0x010f, B:82:0x011a, B:84:0x0121, B:86:0x0125, B:88:0x012b, B:90:0x012f, B:93:0x0137, B:96:0x0143, B:97:0x0149, B:99:0x0157, B:45:0x0070), top: B:124:0x0051 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence e(java.lang.CharSequence r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.td.e(java.lang.CharSequence, int, int):java.lang.CharSequence");
    }

    public final void f(qd qdVar) {
        qj.d(qdVar, "initCallback cannot be null");
        this.a.writeLock().lock();
        try {
            if (this.c != 1 && this.c != 2) {
                this.b.add(qdVar);
                this.a.writeLock().unlock();
            }
            this.d.post(new rd(Arrays.asList(qdVar), this.c, null));
            this.a.writeLock().unlock();
        } catch (Throwable th) {
            this.a.writeLock().unlock();
            throw th;
        }
    }
}
