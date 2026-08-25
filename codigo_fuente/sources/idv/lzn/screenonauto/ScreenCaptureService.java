package idv.lzn.screenonauto;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.hardware.display.DisplayManager;
import android.media.AudioAttributes;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class ScreenCaptureService extends Service {
    public static final /* synthetic */ int g = 0;
    public PowerManager.WakeLock a;
    public a7 b;
    public us c;
    public SharedPreferences d;
    public final iq e = new iq(2, this);
    public final y6 f = new y6(4, this);

    /* JADX WARN: Removed duplicated region for block: B:52:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r9 = this;
            android.content.SharedPreferences r0 = r9.d
            if (r0 != 0) goto L6
            goto L96
        L6:
            java.lang.String r1 = "prefs"
            r2 = 0
            if (r0 == 0) goto La3
            java.lang.String r3 = "root_user_disconnected"
            r4 = 0
            boolean r0 = r0.getBoolean(r3, r4)
            if (r0 == 0) goto L16
            goto L96
        L16:
            android.content.SharedPreferences r0 = r9.d
            if (r0 == 0) goto L9f
            java.lang.String r3 = "root_screen_off"
            boolean r0 = r0.getBoolean(r3, r4)
            if (r0 != 0) goto L64
            android.content.SharedPreferences r0 = r9.d
            if (r0 == 0) goto L60
            java.lang.String r3 = "root_touch_injection"
            boolean r0 = r0.getBoolean(r3, r4)
            if (r0 != 0) goto L64
            android.content.SharedPreferences r0 = r9.d
            if (r0 == 0) goto L5c
            java.lang.String r3 = "map_action_back"
            boolean r0 = r0.getBoolean(r3, r4)
            if (r0 != 0) goto L64
            android.content.SharedPreferences r0 = r9.d
            if (r0 == 0) goto L58
            java.lang.String r3 = "map_action_home"
            boolean r0 = r0.getBoolean(r3, r4)
            if (r0 != 0) goto L64
            android.content.SharedPreferences r0 = r9.d
            if (r0 == 0) goto L54
            java.lang.String r1 = "map_action_recents"
            boolean r0 = r0.getBoolean(r1, r4)
            if (r0 == 0) goto L53
            goto L64
        L53:
            return
        L54:
            defpackage.qj.v(r1)
            throw r2
        L58:
            defpackage.qj.v(r1)
            throw r2
        L5c:
            defpackage.qj.v(r1)
            throw r2
        L60:
            defpackage.qj.v(r1)
            throw r2
        L64:
            idv.lzn.screenonauto.privileged.PrivilegedManager r3 = idv.lzn.screenonauto.privileged.PrivilegedManager.INSTANCE
            boolean r0 = r3.isConnected()
            if (r0 == 0) goto L6d
            goto L96
        L6d:
            java.util.List r0 = r3.presentBackends(r9)
            idv.lzn.screenonauto.privileged.PrivilegedManager$Kind r1 = r3.getLastConnectedKind()
            if (r1 == 0) goto L81
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L7f
            r5 = r1
            goto L89
        L7f:
            r5 = r2
            goto L89
        L81:
            java.lang.Object r0 = defpackage.v9.A(r0)
            r2 = r0
            idv.lzn.screenonauto.privileged.PrivilegedManager$Kind r2 = (idv.lzn.screenonauto.privileged.PrivilegedManager.Kind) r2
            goto L7f
        L89:
            if (r5 != 0) goto L8c
            goto L96
        L8c:
            idv.lzn.screenonauto.privileged.PrivilegedManager$Kind r0 = idv.lzn.screenonauto.privileged.PrivilegedManager.Kind.SHIZUKU
            if (r5 != r0) goto L97
            boolean r0 = r3.isAuthorised(r9, r5)
            if (r0 != 0) goto L97
        L96:
            return
        L97:
            r7 = 4
            r8 = 0
            r6 = 0
            r4 = r9
            idv.lzn.screenonauto.privileged.PrivilegedManager.connect$default(r3, r4, r5, r6, r7, r8)
            return
        L9f:
            defpackage.qj.v(r1)
            throw r2
        La3:
            defpackage.qj.v(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: idv.lzn.screenonauto.ScreenCaptureService.a():void");
    }

    public final void b() {
        PowerManager.WakeLock wakeLock;
        SharedPreferences sharedPreferences = this.d;
        if (sharedPreferences != null) {
            boolean z = sharedPreferences.getBoolean("keep_awake", false);
            if (z && this.a == null) {
                Object systemService = getSystemService("power");
                systemService.getClass();
                PowerManager.WakeLock newWakeLock = ((PowerManager) systemService).newWakeLock(6, "ScreenOnAuto:mirror");
                newWakeLock.acquire();
                this.a = newWakeLock;
                return;
            } else if (!z && (wakeLock = this.a) != null) {
                if (wakeLock != null) {
                    wakeLock.release();
                }
                this.a = null;
                return;
            } else {
                return;
            }
        }
        qj.v("prefs");
        throw null;
    }

    public final void c() {
        DisplayManager displayManager = (DisplayManager) getSystemService(DisplayManager.class);
        if (displayManager != null) {
            boolean z = false;
            Display display = displayManager.getDisplay(0);
            if (display != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                display.getRealMetrics(displayMetrics);
                int i = b00.a;
                int i2 = b00.c;
                int i3 = displayMetrics.widthPixels;
                z = (i2 == i3 && b00.d == displayMetrics.heightPixels) ? true : true;
                b00.c = i3;
                b00.d = displayMetrics.heightPixels;
                b00.e = displayMetrics.densityDpi;
                if (z) {
                    b00.k.post(new ou(3));
                }
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Uri uri = Settings.System.DEFAULT_NOTIFICATION_URI;
        AudioAttributes audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        String string = getString(R.string.notification_title);
        ur urVar = new ur(this);
        int i = Build.VERSION.SDK_INT;
        NotificationChannel notificationChannel = null;
        if (i >= 26) {
            NotificationChannel c = fr.c("car_mirror_channel", string, 2);
            fr.p(c, null);
            fr.q(c, null);
            fr.s(c, true);
            fr.t(c, uri, audioAttributes);
            fr.d(c, false);
            fr.r(c, 0);
            fr.u(c, null);
            fr.e(c, false);
            notificationChannel = c;
        }
        if (i >= 26) {
            tr.a(urVar.a, notificationChannel);
        }
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        y6 y6Var = this.f;
        privilegedManager.addOnBackendAvailableListener(y6Var);
        privilegedManager.addOnConnectionLostListener(y6Var);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        y6 y6Var = this.f;
        privilegedManager.removeOnBackendAvailableListener(y6Var);
        privilegedManager.removeOnConnectionLostListener(y6Var);
        SharedPreferences sharedPreferences = this.d;
        if (sharedPreferences != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this.e);
        }
        PowerManager.WakeLock wakeLock = this.a;
        if (wakeLock != null) {
            wakeLock.release();
        }
        this.a = null;
        nq.f = null;
        a7 a7Var = this.b;
        if (a7Var != null) {
            privilegedManager.removeOnStateChangedListener(a7Var.l);
            privilegedManager.removeOnBeforeDisconnectListener(a7Var.m);
            a7Var.c.removeCallbacks(a7Var.k);
            if (a7Var.f) {
                a7Var.c();
            }
            View view = a7Var.i;
            if (view != null) {
                try {
                    a7Var.d.removeView(view);
                } catch (Throwable unused) {
                }
            }
            a7Var.i = null;
            a7Var.j.screenBrightness = -1.0f;
        }
        this.b = null;
        us usVar = this.c;
        if (usVar != null) {
            usVar.c();
        }
        this.c = null;
        privilegedManager.disconnect(this);
        b00.f = false;
        b00.k.post(new ou(4));
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        String str;
        boolean z;
        Notification.Builder builder;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        String str2;
        Bundle bundle;
        Notification a;
        String string;
        String str3;
        int i3;
        Bundle bundle2;
        Icon icon;
        Bundle bundle3;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (qj.c(str, "idv.lzn.screenonauto.STOP_CAPTURE")) {
            stopSelf();
            return 2;
        }
        int i4 = b00.a;
        Intent intent2 = b00.b;
        b00.a = 0;
        b00.b = null;
        if (i4 == -1 && intent2 != null) {
            z = true;
        } else {
            z = false;
        }
        Intent intent3 = new Intent(this, ScreenCaptureService.class);
        intent3.setAction("idv.lzn.screenonauto.STOP_CAPTURE");
        PendingIntent service = PendingIntent.getService(this, 0, intent3, 201326592);
        Intent intent4 = new Intent(this, MainActivity.class);
        intent4.addFlags(603979776);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent4, 201326592);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Notification notification = new Notification();
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        ArrayList arrayList4 = new ArrayList();
        String string2 = getString(R.string.notification_title);
        CharSequence charSequence = string2;
        if (string2 != null) {
            int length = string2.length();
            charSequence = string2;
            if (length > 5120) {
                charSequence = string2.subSequence(0, 5120);
            }
        }
        String string3 = getString(R.string.notification_text);
        CharSequence charSequence2 = string3;
        if (string3 != null) {
            int length2 = string3.length();
            charSequence2 = string3;
            if (length2 > 5120) {
                charSequence2 = string3.subSequence(0, 5120);
            }
        }
        notification.icon = 17301586;
        arrayList.add(new gr(getString(R.string.stop_mirroring), service));
        new ArrayList();
        Bundle bundle4 = new Bundle();
        String str4 = "car_mirror_channel";
        if (Build.VERSION.SDK_INT >= 26) {
            builder = or.a(this, "car_mirror_channel");
        } else {
            builder = new Notification.Builder(this);
        }
        boolean z6 = z;
        Notification.Builder lights = builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        if ((notification.flags & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z2);
        if ((notification.flags & 8) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z3);
        if ((notification.flags & 16) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        Notification.Builder deleteIntent = onlyAlertOnce.setAutoCancel(z4).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(null).setContentIntent(activity).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 128) != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        deleteIntent.setFullScreenIntent(null, z5).setLargeIcon((Bitmap) null).setNumber(0).setProgress(0, 0, false);
        hr.b(hr.d(hr.c(builder, null), false), 0);
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            int i6 = i5 + 1;
            gr grVar = (gr) obj;
            IconCompat iconCompat = grVar.b;
            IconCompat iconCompat2 = grVar.b;
            boolean z7 = grVar.c;
            Bundle bundle5 = grVar.a;
            int i7 = size;
            if (iconCompat2 != null) {
                icon = ri.f(iconCompat2, null);
            } else {
                icon = null;
            }
            Notification.Action.Builder a2 = mr.a(icon, grVar.e, grVar.f);
            if (bundle5 != null) {
                bundle3 = new Bundle(bundle5);
            } else {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android.support.allowGeneratedReplies", z7);
            nr.a(a2, z7);
            bundle3.putInt("android.support.action.semanticAction", 0);
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 28) {
                pr.b(a2, 0);
            }
            if (i8 >= 29) {
                qr.c(a2, false);
            }
            if (i8 >= 31) {
                rr.a(a2, false);
            }
            bundle3.putBoolean("android.support.action.showsUserInterface", grVar.d);
            kr.b(a2, bundle3);
            kr.a(builder, kr.d(a2));
            size = i7;
            i5 = i6;
        }
        ir.a(builder, true);
        kr.i(builder, false);
        kr.g(builder, null);
        kr.j(builder, null);
        kr.h(builder, false);
        lr.b(builder, null);
        lr.c(builder, 0);
        lr.f(builder, 0);
        lr.d(builder, null);
        lr.e(builder, notification.sound, notification.audioAttributes);
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList5 = new ArrayList(arrayList2.size());
            int size2 = arrayList2.size();
            int i9 = 0;
            while (i9 < size2) {
                Object obj2 = arrayList2.get(i9);
                i9++;
                lt ltVar = (lt) obj2;
                CharSequence charSequence3 = ltVar.a;
                String str5 = ltVar.c;
                if (str5 == null) {
                    if (charSequence3 != null) {
                        str5 = "name:" + ((Object) charSequence3);
                    } else {
                        str5 = "";
                    }
                }
                arrayList5.add(str5);
            }
            v6 v6Var = new v6(arrayList4.size() + arrayList5.size());
            v6Var.addAll(arrayList5);
            v6Var.addAll(arrayList4);
            arrayList4 = new ArrayList(v6Var);
        }
        if (!arrayList4.isEmpty()) {
            int size3 = arrayList4.size();
            int i10 = 0;
            while (i10 < size3) {
                Object obj3 = arrayList4.get(i10);
                i10++;
                lr.a(builder, (String) obj3);
            }
        }
        if (arrayList3.size() <= 0) {
            str2 = "car_mirror_channel";
            bundle = null;
        } else {
            bundle = new Bundle();
            Bundle bundle6 = bundle.getBundle("android.car.EXTENSIONS");
            if (bundle6 == null) {
                bundle6 = new Bundle();
            }
            Bundle bundle7 = new Bundle(bundle6);
            Bundle bundle8 = new Bundle();
            int i11 = 0;
            while (i11 < arrayList3.size()) {
                String num = Integer.toString(i11);
                gr grVar2 = (gr) arrayList3.get(i11);
                Bundle bundle9 = new Bundle();
                int i12 = i11;
                IconCompat iconCompat3 = grVar2.b;
                IconCompat iconCompat4 = grVar2.b;
                Bundle bundle10 = grVar2.a;
                if (iconCompat4 != null) {
                    str3 = str4;
                    i3 = iconCompat4.d();
                } else {
                    str3 = str4;
                    i3 = 0;
                }
                ArrayList arrayList6 = arrayList3;
                bundle9.putInt("icon", i3);
                bundle9.putCharSequence("title", grVar2.e);
                bundle9.putParcelable("actionIntent", grVar2.f);
                if (bundle10 != null) {
                    bundle2 = new Bundle(bundle10);
                } else {
                    bundle2 = new Bundle();
                }
                bundle2.putBoolean("android.support.allowGeneratedReplies", grVar2.c);
                bundle9.putBundle("extras", bundle2);
                bundle9.putParcelableArray("remoteInputs", null);
                bundle9.putBoolean("showsUserInterface", grVar2.d);
                bundle9.putInt("semanticAction", 0);
                bundle8.putBundle(num, bundle9);
                i11 = i12 + 1;
                str4 = str3;
                arrayList3 = arrayList6;
            }
            str2 = str4;
            bundle6.putBundle("invisible_actions", bundle8);
            bundle7.putBundle("invisible_actions", bundle8);
            bundle.putBundle("android.car.EXTENSIONS", bundle6);
            bundle4.putBundle("android.car.EXTENSIONS", bundle7);
        }
        jr.a(builder, bundle);
        nr.e(builder, null);
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 26) {
            or.b(builder, 0);
            or.e(builder, null);
            or.f(builder, null);
            or.g(builder, 0L);
            or.d(builder, 0);
            if (!TextUtils.isEmpty(str2)) {
                builder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i13 >= 28) {
            int size4 = arrayList2.size();
            int i14 = 0;
            while (i14 < size4) {
                Object obj4 = arrayList2.get(i14);
                i14++;
                lt ltVar2 = (lt) obj4;
                ltVar2.getClass();
                pr.a(builder, kt.b(ltVar2));
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 29) {
            qr.a(builder, true);
            qr.b(builder, null);
        }
        if (i15 >= 26) {
            a = hr.a(builder);
        } else {
            a = hr.a(builder);
        }
        a.getClass();
        if (z6 && i15 >= 29) {
            startForeground(1001, a, 32);
        } else {
            startForeground(1001, a);
        }
        if (!z6) {
            stopSelf();
            return 2;
        }
        intent2.getClass();
        MediaProjection mediaProjection = ((MediaProjectionManager) getSystemService(MediaProjectionManager.class)).getMediaProjection(i4, intent2);
        if (mediaProjection == null) {
            stopSelf();
            return 2;
        }
        SharedPreferences sharedPreferences = getSharedPreferences(lu.b(this), 0);
        sharedPreferences.getClass();
        this.d = sharedPreferences;
        c();
        int i16 = b00.a;
        SharedPreferences sharedPreferences2 = this.d;
        if (sharedPreferences2 != null) {
            boolean z8 = sharedPreferences2.getBoolean("self_draw", false);
            Handler handler = b00.k;
            handler.post(new su(1, z8));
            handler.post(new m1(14, mediaProjection));
            SharedPreferences sharedPreferences3 = this.d;
            if (sharedPreferences3 != null) {
                sharedPreferences3.registerOnSharedPreferenceChangeListener(this.e);
                a();
                b();
                a7 a7Var = this.b;
                if (a7Var != null) {
                    PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
                    privilegedManager.removeOnStateChangedListener(a7Var.l);
                    privilegedManager.removeOnBeforeDisconnectListener(a7Var.m);
                    a7Var.c.removeCallbacks(a7Var.k);
                    if (a7Var.f) {
                        a7Var.c();
                    }
                    View view = a7Var.i;
                    if (view != null) {
                        try {
                            a7Var.d.removeView(view);
                        } catch (Throwable unused) {
                        }
                    }
                    a7Var.i = null;
                    a7Var.j.screenBrightness = -1.0f;
                }
                SharedPreferences sharedPreferences4 = this.d;
                if (sharedPreferences4 != null) {
                    this.b = new a7(this, sharedPreferences4);
                    us usVar = this.c;
                    if (usVar != null) {
                        usVar.c();
                    }
                    SharedPreferences sharedPreferences5 = this.d;
                    if (sharedPreferences5 != null) {
                        this.c = new us(this, sharedPreferences5);
                        nq.f = new x6(4, this);
                        if (nq.d || nq.e) {
                            a7 a7Var2 = this.b;
                            if (a7Var2 != null) {
                                a7Var2.e = true;
                                a7Var2.b();
                            }
                            us usVar2 = this.c;
                            if (usVar2 != null) {
                                usVar2.b(true);
                            }
                        }
                        if ((nq.d || nq.e) && (string = getSharedPreferences(lu.b(this), 0).getString("auto_launch_package", null)) != null && string.length() != 0) {
                            z5.c(this, string);
                        }
                        return 2;
                    }
                    qj.v("prefs");
                    throw null;
                }
                qj.v("prefs");
                throw null;
            }
            qj.v("prefs");
            throw null;
        }
        qj.v("prefs");
        throw null;
    }
}
