package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: z5  reason: default package */
/* loaded from: classes.dex */
public abstract class z5 {
    public static final ExecutorService a;
    public static final Handler b;

    static {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new w5(0));
        newSingleThreadExecutor.getClass();
        a = newSingleThreadExecutor;
        b = new Handler(Looper.getMainLooper());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [cy] */
    /* JADX WARN: Type inference failed for: r5v1, types: [cy] */
    public static Drawable a(Context context, String str, int i) {
        Drawable cyVar;
        Drawable cyVar2;
        context.getClass();
        PackageManager packageManager = context.getPackageManager();
        Drawable drawable = null;
        if (str.equals("@home")) {
            Intent addCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
            addCategory.getClass();
            ResolveInfo resolveActivity = packageManager.resolveActivity(addCategory, 65536);
            if (resolveActivity != null) {
                if (qj.c(resolveActivity.activityInfo.packageName, "android")) {
                    resolveActivity = null;
                }
                if (resolveActivity != null) {
                    try {
                        cyVar2 = resolveActivity.loadIcon(packageManager);
                    } catch (Throwable th) {
                        cyVar2 = new cy(th);
                    }
                    if (!(cyVar2 instanceof cy)) {
                        drawable = cyVar2;
                    }
                    drawable = drawable;
                }
            }
            if (drawable == null) {
                return ya.b(context, i);
            }
            return drawable;
        }
        try {
            cyVar = packageManager.getApplicationIcon(str);
        } catch (Throwable th2) {
            cyVar = new cy(th2);
        }
        if (!(cyVar instanceof cy)) {
            drawable = cyVar;
        }
        return drawable;
    }

    public static String b(Context context, String str) {
        Object cyVar;
        str.getClass();
        if (str.equals("@home")) {
            return context.getString(R.string.app_home_screen);
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            cyVar = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (cyVar instanceof cy) {
            cyVar = null;
        }
        return (String) cyVar;
    }

    public static void c(Context context, String str) {
        Intent intent;
        ActivityInfo activityInfo;
        str.getClass();
        if (str.equals("@home")) {
            intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
            intent.getClass();
        } else {
            PackageManager packageManager = context.getPackageManager();
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                intent = launchIntentForPackage;
            } else {
                Intent addCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
                addCategory.getClass();
                Intent intent2 = addCategory.setPackage(str);
                intent2.getClass();
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent2, 0);
                queryIntentActivities.getClass();
                ResolveInfo resolveInfo = (ResolveInfo) v9.A(queryIntentActivities);
                if (resolveInfo != null && (activityInfo = resolveInfo.activityInfo) != null) {
                    intent = intent2.setClassName(activityInfo.packageName, activityInfo.name);
                } else {
                    intent = null;
                }
            }
        }
        if (intent == null) {
            return;
        }
        intent.addFlags(268435456);
        context.startActivity(intent);
    }
}
