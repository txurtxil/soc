package androidx.car.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.util.Log;
import androidx.car.app.b;
import androidx.car.app.i;
import androidx.car.app.j;
import androidx.car.app.k;
import androidx.lifecycle.a;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes.dex */
public final class i extends ContextWrapper {
    public final androidx.activity.b a;
    public final j b;
    public final cf c;
    public int d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [gm, java.lang.Object] */
    public i(final androidx.lifecycle.a aVar, final j jVar) {
        super(null);
        cf cfVar = new cf();
        this.c = cfVar;
        this.d = 0;
        this.b = jVar;
        cfVar.a(b.class, "app", new gm(this) { // from class: x8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                int i = r4;
                a aVar2 = aVar;
                j jVar2 = jVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new b(iVar, jVar2, aVar2);
                    case 1:
                        return new androidx.car.app.navigation.b(iVar, jVar2, aVar2);
                    case 2:
                        return androidx.car.app.suggestion.a.a(iVar, jVar2, aVar2);
                    default:
                        return androidx.car.app.media.a.a(iVar, jVar2, aVar2);
                }
            }
        });
        cfVar.a(androidx.car.app.navigation.b.class, "navigation", new gm(this) { // from class: x8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                int i = r4;
                a aVar2 = aVar;
                j jVar2 = jVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new b(iVar, jVar2, aVar2);
                    case 1:
                        return new androidx.car.app.navigation.b(iVar, jVar2, aVar2);
                    case 2:
                        return androidx.car.app.suggestion.a.a(iVar, jVar2, aVar2);
                    default:
                        return androidx.car.app.media.a.a(iVar, jVar2, aVar2);
                }
            }
        });
        cfVar.a(k.class, "screen", new gm(this) { // from class: y8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                String str;
                int i = r3;
                Object obj = aVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new k(iVar, (a) obj);
                    default:
                        j jVar2 = (j) obj;
                        int i2 = iVar.d;
                        if (i2 != 0) {
                            if (i2 >= 3) {
                                try {
                                    int i3 = t8.a;
                                    Bundle bundle = iVar.getPackageManager().getServiceInfo(new ComponentName(iVar, t8.class), 640).metaData;
                                    if (bundle != null) {
                                        str = bundle.getString("androidx.car.app.CarAppMetadataHolderService.CAR_HARDWARE_MANAGER");
                                    } else {
                                        str = null;
                                    }
                                    if (str != null) {
                                        if (Class.forName(str).getConstructor(i.class, j.class).newInstance(iVar, jVar2) != null) {
                                            throw new ClassCastException();
                                        }
                                    } else {
                                        throw new ClassNotFoundException("CarHardwareManager metadata could not be found");
                                    }
                                } catch (PackageManager.NameNotFoundException | ReflectiveOperationException unused) {
                                    c2.g("CarHardwareManager not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?");
                                }
                            } else {
                                throw new RuntimeException("Create CarHardwareManager failed", new IllegalArgumentException("Attempted to retrieve CarHardwareManager service, but the host is less than 3"));
                            }
                        } else {
                            c2.g("Car App API level hasn't been established yet");
                        }
                        return null;
                }
            }
        });
        cfVar.a(pa.class, "constraints", new Object());
        cfVar.a(b9.class, "hardware", new gm(this) { // from class: y8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                String str;
                int i = r3;
                Object obj = jVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new k(iVar, (a) obj);
                    default:
                        j jVar2 = (j) obj;
                        int i2 = iVar.d;
                        if (i2 != 0) {
                            if (i2 >= 3) {
                                try {
                                    int i3 = t8.a;
                                    Bundle bundle = iVar.getPackageManager().getServiceInfo(new ComponentName(iVar, t8.class), 640).metaData;
                                    if (bundle != null) {
                                        str = bundle.getString("androidx.car.app.CarAppMetadataHolderService.CAR_HARDWARE_MANAGER");
                                    } else {
                                        str = null;
                                    }
                                    if (str != null) {
                                        if (Class.forName(str).getConstructor(i.class, j.class).newInstance(iVar, jVar2) != null) {
                                            throw new ClassCastException();
                                        }
                                    } else {
                                        throw new ClassNotFoundException("CarHardwareManager metadata could not be found");
                                    }
                                } catch (PackageManager.NameNotFoundException | ReflectiveOperationException unused) {
                                    c2.g("CarHardwareManager not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?");
                                }
                            } else {
                                throw new RuntimeException("Create CarHardwareManager failed", new IllegalArgumentException("Attempted to retrieve CarHardwareManager service, but the host is less than 3"));
                            }
                        } else {
                            c2.g("Car App API level hasn't been established yet");
                        }
                        return null;
                }
            }
        });
        cfVar.a(ey.class, null, new gm() { // from class: a9
            @Override // defpackage.gm
            public final fm a() {
                String str;
                i iVar = i.this;
                try {
                    int i = t8.a;
                    Bundle bundle = iVar.getPackageManager().getServiceInfo(new ComponentName(iVar, t8.class), 640).metaData;
                    if (bundle != null) {
                        str = bundle.getString("androidx.car.app.CarAppMetadataHolderService.RESULT_MANAGER");
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        if (Class.forName(str).getConstructor(null).newInstance(null) == null) {
                            return null;
                        }
                        throw new ClassCastException();
                    }
                    throw new ClassNotFoundException("ResultManager metadata could not be found");
                } catch (PackageManager.NameNotFoundException | ReflectiveOperationException unused) {
                    c2.g("ResultManager not configured. Did you forget to add a dependency on the app-automotive artifact?");
                    return null;
                }
            }
        });
        cfVar.a(androidx.car.app.suggestion.a.class, "suggestion", new gm(this) { // from class: x8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                int i = r4;
                a aVar2 = aVar;
                j jVar2 = jVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new b(iVar, jVar2, aVar2);
                    case 1:
                        return new androidx.car.app.navigation.b(iVar, jVar2, aVar2);
                    case 2:
                        return androidx.car.app.suggestion.a.a(iVar, jVar2, aVar2);
                    default:
                        return androidx.car.app.media.a.a(iVar, jVar2, aVar2);
                }
            }
        });
        cfVar.a(androidx.car.app.media.a.class, "media_playback", new gm(this) { // from class: x8
            public final /* synthetic */ i b;

            {
                this.b = this;
            }

            @Override // defpackage.gm
            public final fm a() {
                int i = r4;
                a aVar2 = aVar;
                j jVar2 = jVar;
                i iVar = this.b;
                switch (i) {
                    case 0:
                        return new b(iVar, jVar2, aVar2);
                    case 1:
                        return new androidx.car.app.navigation.b(iVar, jVar2, aVar2);
                    case 2:
                        return androidx.car.app.suggestion.a.a(iVar, jVar2, aVar2);
                    default:
                        return androidx.car.app.media.a.a(iVar, jVar2, aVar2);
                }
            }
        });
        this.a = new androidx.activity.b(new m1(3, this));
        aVar.a(new ac() { // from class: androidx.car.app.CarContext$2
            @Override // defpackage.ac
            public final void d(sk skVar) {
                n40.a();
                j jVar2 = j.this;
                jVar2.a = null;
                jVar2.b = null;
                jVar2.c = null;
                skVar.f().b(this);
            }
        });
    }

    public final void a(Context context, Configuration configuration) {
        n40.a();
        if (getBaseContext() == null) {
            Object systemService = context.getSystemService("display");
            Objects.requireNonNull(systemService);
            attachBaseContext(context.createDisplayContext(((DisplayManager) systemService).createVirtualDisplay("CarAppService", configuration.screenWidthDp, configuration.screenHeightDp, configuration.densityDpi, null, 8).getDisplay()).createConfigurationContext(configuration));
        }
        c(configuration);
    }

    public final fm b(Class cls) {
        cf cfVar = this.c;
        HashMap hashMap = (HashMap) cfVar.b;
        HashMap hashMap2 = (HashMap) cfVar.c;
        RuntimeException runtimeException = (RuntimeException) hashMap2.get(cls);
        if (runtimeException == null) {
            fm fmVar = (fm) hashMap.get(cls);
            if (fmVar != null) {
                return fmVar;
            }
            gm gmVar = (gm) ((HashMap) cfVar.d).get(cls);
            if (gmVar != null) {
                try {
                    fm a = gmVar.a();
                    hashMap.put(cls, a);
                    return a;
                } catch (RuntimeException e) {
                    hashMap2.put(cls, e);
                    throw e;
                }
            }
            throw new IllegalArgumentException("The class '" + cls + "' does not correspond to a car service");
        }
        throw runtimeException;
    }

    public final void c(Configuration configuration) {
        n40.a();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "Car configuration changed, configuration: " + configuration + ", displayMetrics: " + getResources().getDisplayMetrics());
        }
        Resources resources = getResources();
        Objects.requireNonNull(configuration);
        resources.updateConfiguration(configuration, getResources().getDisplayMetrics());
    }
}
