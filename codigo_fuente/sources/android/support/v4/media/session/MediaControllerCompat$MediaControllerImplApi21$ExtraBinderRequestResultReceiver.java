package android.support.v4.media.session;

import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver {
    public WeakReference a;

    /* JADX WARN: Removed duplicated region for block: B:32:0x006d A[Catch: all -> 0x00a1, TRY_ENTER, TryCatch #3 {all -> 0x0094, blocks: (B:8:0x0011, B:17:0x0036, B:18:0x0038, B:21:0x003c, B:22:0x0040, B:25:0x004a, B:27:0x005d, B:30:0x006a, B:31:0x006c, B:34:0x0070, B:43:0x0092, B:37:0x007b, B:39:0x0085, B:40:0x0089, B:42:0x008f, B:47:0x0096, B:48:0x00a0, B:28:0x0062, B:29:0x0069, B:11:0x0020, B:13:0x0028, B:15:0x002c, B:16:0x002f, B:32:0x006d, B:33:0x006f, B:19:0x0039, B:20:0x003b), top: B:60:0x0011 }] */
    /* JADX WARN: Type inference failed for: r3v2, types: [ii, java.lang.Object] */
    @Override // android.os.ResultReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceiveResult(int r6, android.os.Bundle r7) {
        /*
            r5 = this;
            java.lang.ref.WeakReference r5 = r5.a
            java.lang.Object r5 = r5.get()
            android.support.v4.media.session.a r5 = (android.support.v4.media.session.a) r5
            if (r5 == 0) goto La9
            if (r7 != 0) goto Le
            goto La9
        Le:
            java.lang.Object r6 = r5.a
            monitor-enter(r6)
            android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.d     // Catch: java.lang.Throwable -> L94
            java.lang.String r1 = "android.support.v4.media.session.EXTRA_BINDER"
            android.os.IBinder r1 = defpackage.v7.a(r7, r1)     // Catch: java.lang.Throwable -> L94
            int r2 = android.support.v4.media.session.b.b     // Catch: java.lang.Throwable -> L94
            r2 = 0
            if (r1 != 0) goto L20
            r3 = r2
            goto L36
        L20:
            java.lang.String r3 = "android.support.v4.media.session.IMediaSession"
            android.os.IInterface r3 = r1.queryLocalInterface(r3)     // Catch: java.lang.Throwable -> L94
            if (r3 == 0) goto L2f
            boolean r4 = r3 instanceof defpackage.ji     // Catch: java.lang.Throwable -> L94
            if (r4 == 0) goto L2f
            ji r3 = (defpackage.ji) r3     // Catch: java.lang.Throwable -> L94
            goto L36
        L2f:
            ii r3 = new ii     // Catch: java.lang.Throwable -> L94
            r3.<init>()     // Catch: java.lang.Throwable -> L94
            r3.a = r1     // Catch: java.lang.Throwable -> L94
        L36:
            java.lang.Object r1 = r0.a     // Catch: java.lang.Throwable -> L94
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L94
            r0.c = r3     // Catch: java.lang.Throwable -> La4
            monitor-exit(r1)     // Catch: java.lang.Throwable -> La4
            android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.d     // Catch: java.lang.Throwable -> L94
            java.lang.String r1 = "android.support.v4.media.session.SESSION_TOKEN2"
            android.os.Parcelable r7 = r7.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            android.os.Bundle r7 = (android.os.Bundle) r7     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            if (r7 != 0) goto L4a
        L48:
            r7 = r2
            goto L6a
        L4a:
            java.lang.Class<gt> r1 = defpackage.gt.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            r7.setClassLoader(r1)     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            java.lang.String r1 = "a"
            android.os.Parcelable r7 = r7.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            boolean r1 = r7 instanceof androidx.versionedparcelable.ParcelImpl     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            if (r1 == 0) goto L62
            androidx.versionedparcelable.ParcelImpl r7 = (androidx.versionedparcelable.ParcelImpl) r7     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            y60 r7 = r7.a     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            goto L6a
        L62:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            java.lang.String r1 = "Invalid parcel"
            r7.<init>(r1)     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
            throw r7     // Catch: java.lang.RuntimeException -> L48 java.lang.Throwable -> L94
        L6a:
            java.lang.Object r1 = r0.a     // Catch: java.lang.Throwable -> L94
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L94
            r0.d = r7     // Catch: java.lang.Throwable -> La1
            monitor-exit(r1)     // Catch: java.lang.Throwable -> La1
            java.util.ArrayList r7 = r5.b     // Catch: java.lang.Throwable -> L94
            android.support.v4.media.session.MediaSessionCompat$Token r0 = r5.d     // Catch: java.lang.Throwable -> L94
            ji r0 = r0.a()     // Catch: java.lang.Throwable -> L94
            if (r0 != 0) goto L7b
            goto L92
        L7b:
            java.util.Iterator r0 = r7.iterator()     // Catch: java.lang.Throwable -> L94
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L94
            if (r1 != 0) goto L89
            r7.clear()     // Catch: java.lang.Throwable -> L94
            goto L92
        L89:
            java.lang.Object r7 = r0.next()     // Catch: java.lang.Throwable -> L94
            if (r7 == 0) goto L96
            defpackage.c2.l()     // Catch: java.lang.Throwable -> L94
        L92:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L94
            goto La9
        L94:
            r5 = move-exception
            goto La7
        L96:
            xn r7 = new xn     // Catch: java.lang.Throwable -> L94
            r7.<init>()     // Catch: java.lang.Throwable -> L94
            java.util.HashMap r5 = r5.c     // Catch: java.lang.Throwable -> L94
            r5.put(r2, r7)     // Catch: java.lang.Throwable -> L94
            throw r2     // Catch: java.lang.Throwable -> L94
        La1:
            r5 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> La1
            throw r5     // Catch: java.lang.Throwable -> L94
        La4:
            r5 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> La4
            throw r5     // Catch: java.lang.Throwable -> L94
        La7:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L94
            throw r5
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.onReceiveResult(int, android.os.Bundle):void");
    }
}
