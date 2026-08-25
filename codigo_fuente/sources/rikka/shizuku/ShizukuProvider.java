package rikka.shizuku;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import moe.shizuku.api.BinderContainer;
/* loaded from: classes.dex */
public class ShizukuProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.multiprocess) {
            if (providerInfo.exported) {
                return;
            }
            c2.g("android:exported must be true");
            return;
        }
        c2.g("android:multiprocess must be false");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.os.Parcelable, java.lang.Object, moe.shizuku.api.BinderContainer] */
    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        IBinder iBinder;
        if (k60.r) {
            Log.w("ShizukuProvider", "Provider called when Sui is available. Are you using Shizuku and Sui at the same time?");
            return new Bundle();
        } else if (bundle != null) {
            bundle.setClassLoader(BinderContainer.class.getClassLoader());
            Bundle bundle2 = new Bundle();
            str.getClass();
            if (!str.equals("sendBinder")) {
                if (str.equals("getBinder")) {
                    IBinder iBinder2 = z10.a;
                    if (iBinder2 != null && iBinder2.pingBinder()) {
                        ?? obj = new Object();
                        obj.a = iBinder2;
                        bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", obj);
                        return bundle2;
                    }
                    return null;
                }
            } else {
                IBinder iBinder3 = z10.a;
                if (iBinder3 != null && iBinder3.pingBinder()) {
                    Log.d("ShizukuProvider", "sendBinder is called when already a living binder");
                    return bundle2;
                }
                BinderContainer binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
                if (binderContainer != null && (iBinder = binderContainer.a) != null) {
                    Log.d("ShizukuProvider", "binder received");
                    z10.d(iBinder, getContext().getPackageName());
                }
            }
            return bundle2;
        } else {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (k60.r) {
            return true;
        }
        String packageName = getContext().getPackageName();
        HashMap hashMap = x30.a;
        IBinder iBinder = (IBinder) hashMap.get("activity");
        IBinder iBinder2 = null;
        if (iBinder == null) {
            try {
                iBinder = (IBinder) x30.b.invoke(null, "activity");
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.w("SystemServiceHelper", Log.getStackTraceString(e));
            }
            hashMap.put("activity", iBinder);
        }
        boolean z = false;
        if (iBinder != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("android.app.IActivityManager");
                obtain.writeInt(2);
                iBinder.transact(1599296841, obtain, obtain2, 0);
                obtain2.readException();
                IBinder readStrongBinder = obtain2.readStrongBinder();
                if (readStrongBinder != null) {
                    obtain.recycle();
                    obtain2.recycle();
                    iBinder2 = readStrongBinder;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        if (iBinder2 != null) {
            z10.d(iBinder2, packageName);
            k60.r = true;
            z = true;
        } else {
            k60.r = false;
        }
        Log.d("ShizukuProvider", "Initialize Sui: " + z);
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
