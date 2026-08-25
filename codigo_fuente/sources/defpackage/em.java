package defpackage;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Path;
import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: em  reason: default package */
/* loaded from: classes.dex */
public abstract class em {
    public static boolean b;
    public static u7 c;
    public static final x90 n;
    public static final q10[] a = new q10[1];
    public static final int[] d = {16842755, 16843041, 16843093, 16843097, 16843551, 16843754, 16843771, 16843778, 16843779};
    public static final int[] e = {16842755, 16843189, 16843190, 16843556, 16843557, 16843558, 16843866, 16843867};
    public static final int[] f = {16842755, 16843780, 16843781, 16843782, 16843783, 16843784, 16843785, 16843786, 16843787, 16843788, 16843789, 16843979, 16843980, 16844062};
    public static final int[] g = {16842755, 16843781, 16844062};
    public static final int[] h = {16843161};
    public static final int[] i = {16842755, 16843213};
    public static final af j = new Object();
    public static final hd k = new hd(27);
    public static final hd l = new hd(28);
    public static final hd m = new hd(26);

    /* JADX WARN: Type inference failed for: r0v10, types: [af, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v14, types: [ib, java.lang.Object, x90] */
    static {
        ?? obj = new Object();
        obj.a = null;
        n = obj;
    }

    public static void a(Parcel parcel, Parcelable parcelable) {
        if (parcelable != null) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
            return;
        }
        parcel.writeInt(0);
    }

    public static float b(float f2, float f3, float f4) {
        float applyDimension = TypedValue.applyDimension(5, 10.0f, Resources.getSystem().getDisplayMetrics()) + f4;
        float f5 = f3 - applyDimension;
        if (f5 < applyDimension) {
            f5 = applyDimension;
        }
        return gn.i(f2, applyDimension, f5);
    }

    public static int c(vw vwVar, pd pdVar, View view, View view2, lw lwVar, boolean z) {
        if (lwVar.u() != 0 && vwVar.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return Math.abs(lw.D(view) - lw.D(view2)) + 1;
            }
            return Math.min(pdVar.l(), pdVar.b(view2) - pdVar.e(view));
        }
        return 0;
    }

    public static int d(vw vwVar, pd pdVar, View view, View view2, lw lwVar, boolean z, boolean z2) {
        int max;
        if (lwVar.u() == 0 || vwVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(lw.D(view), lw.D(view2));
        int max2 = Math.max(lw.D(view), lw.D(view2));
        if (z2) {
            max = Math.max(0, (vwVar.b() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(pdVar.b(view2) - pdVar.e(view)) / (Math.abs(lw.D(view) - lw.D(view2)) + 1))) + (pdVar.k() - pdVar.e(view)));
    }

    public static int e(vw vwVar, pd pdVar, View view, View view2, lw lwVar, boolean z) {
        if (lwVar.u() != 0 && vwVar.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return vwVar.b();
            }
            return (int) (((pdVar.b(view2) - pdVar.e(view)) / (Math.abs(lw.D(view) - lw.D(view2)) + 1)) * vwVar.b());
        }
        return 0;
    }

    public static boolean f(File file, Resources resources, int i2) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i2);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            boolean g2 = g(file, inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return g2;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static boolean g(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                }
            }
            fileOutputStream.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v1, types: [ef, pd] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.ef h(android.content.Context r8) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            r2 = 7
            if (r0 < r1) goto Ld
            rb r0 = new rb
            r0.<init>(r2)
            goto L12
        Ld:
            hd r0 = new hd
            r0.<init>(r2)
        L12:
            android.content.pm.PackageManager r1 = r8.getPackageManager()
            java.lang.String r2 = "Package manager required to locate emoji font provider"
            defpackage.qj.d(r1, r2)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.content.action.LOAD_EMOJI_FONT"
            r2.<init>(r3)
            r3 = 0
            java.util.List r2 = r1.queryIntentContentProviders(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L2b:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L47
            java.lang.Object r4 = r2.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r4.providerInfo
            if (r4 == 0) goto L2b
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L2b
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L2b
            goto L48
        L47:
            r4 = r5
        L48:
            if (r4 != 0) goto L4c
        L4a:
            r1 = r5
            goto L7b
        L4c:
            java.lang.String r2 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            java.lang.String r4 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            android.content.pm.Signature[] r0 = r0.b(r1, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            int r6 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
        L5a:
            if (r3 >= r6) goto L68
            r7 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            r1.add(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            int r3 = r3 + 1
            goto L5a
        L68:
            java.util.List r0 = java.util.Collections.singletonList(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            cf r1 = new cf     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            java.lang.String r3 = "emojicompat-emoji-font"
            r1.<init>(r2, r4, r3, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
            goto L7b
        L74:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L4a
        L7b:
            if (r1 != 0) goto L7e
            goto L88
        L7e:
            ef r5 = new ef
            df r0 = new df
            r0.<init>(r1, r8)
            r5.<init>(r0)
        L88:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.em.h(android.content.Context):ef");
    }

    public static boolean j(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            boolean z = true;
            for (File file2 : listFiles) {
                if (j(file2) && z) {
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }
        file.delete();
        return true;
    }

    public static n2 k(cf cfVar, Context context) {
        Cursor cursor;
        int i2;
        int i3;
        Uri withAppendedId;
        int i4;
        boolean z;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = (String) cfVar.b;
        String str2 = (String) cfVar.c;
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(str2)) {
                Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArr) {
                    arrayList.add(signature.toByteArray());
                }
                af afVar = j;
                Collections.sort(arrayList, afVar);
                List list = (List) cfVar.f;
                if (list == null) {
                    list = k60.D(resources, 0);
                }
                int i5 = 0;
                loop1: while (true) {
                    cursor = null;
                    if (i5 < list.size()) {
                        ArrayList arrayList2 = new ArrayList((Collection) list.get(i5));
                        Collections.sort(arrayList2, afVar);
                        if (arrayList.size() == arrayList2.size()) {
                            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                                if (!Arrays.equals((byte[]) arrayList.get(i6), (byte[]) arrayList2.get(i6))) {
                                    break;
                                }
                            }
                            break loop1;
                        }
                        i5++;
                    } else {
                        resolveContentProvider = null;
                        break;
                    }
                }
                if (resolveContentProvider == null) {
                    return new n2(1, (pf[]) null);
                }
                String str3 = resolveContentProvider.authority;
                ArrayList arrayList3 = new ArrayList();
                Uri build = new Uri.Builder().scheme("content").authority(str3).build();
                Uri build2 = new Uri.Builder().scheme("content").authority(str3).appendPath("file").build();
                try {
                    cursor = bf.a(context.getContentResolver(), build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{(String) cfVar.d}, null, null);
                    if (cursor != null && cursor.getCount() > 0) {
                        int columnIndex = cursor.getColumnIndex("result_code");
                        arrayList3 = new ArrayList();
                        int columnIndex2 = cursor.getColumnIndex("_id");
                        int columnIndex3 = cursor.getColumnIndex("file_id");
                        int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursor.getColumnIndex("font_weight");
                        int columnIndex6 = cursor.getColumnIndex("font_italic");
                        while (cursor.moveToNext()) {
                            if (columnIndex != -1) {
                                i2 = cursor.getInt(columnIndex);
                            } else {
                                i2 = 0;
                            }
                            if (columnIndex4 != -1) {
                                i3 = cursor.getInt(columnIndex4);
                            } else {
                                i3 = 0;
                            }
                            if (columnIndex3 == -1) {
                                withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                            } else {
                                withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                            }
                            Uri uri = withAppendedId;
                            if (columnIndex5 != -1) {
                                i4 = cursor.getInt(columnIndex5);
                            } else {
                                i4 = 400;
                            }
                            if (columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList3.add(new pf(uri, i3, i4, z, i2));
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return new n2(0, (pf[]) arrayList3.toArray(new pf[0]));
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
    }

    public static float l(String[] strArr, int i2) {
        float parseFloat = Float.parseFloat(strArr[i2]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static File n(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static boolean o(String str, String str2) {
        if (str.startsWith(str2.concat("(")) && str.endsWith(")")) {
            return true;
        }
        return false;
    }

    public static ko p(Context context, vf vfVar, boolean z, boolean z2) {
        int i2;
        int i3;
        int i4;
        tf tfVar = vfVar.I;
        if (tfVar == null) {
            i2 = 0;
        } else {
            i2 = tfVar.f;
        }
        if (z2) {
            if (z) {
                if (tfVar != null) {
                    i3 = tfVar.d;
                }
                i3 = 0;
            } else {
                if (tfVar != null) {
                    i3 = tfVar.e;
                }
                i3 = 0;
            }
        } else if (z) {
            if (tfVar != null) {
                i3 = tfVar.b;
            }
            i3 = 0;
        } else {
            if (tfVar != null) {
                i3 = tfVar.c;
            }
            i3 = 0;
        }
        vfVar.I(0, 0, 0, 0);
        ViewGroup viewGroup = vfVar.E;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            vfVar.E.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = vfVar.E;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            if (i3 == 0 && i2 != 0) {
                if (i2 != 4097) {
                    if (i2 != 4099) {
                        if (i2 != 8194) {
                            i4 = -1;
                        } else if (z) {
                            i4 = R.animator.fragment_close_enter;
                        } else {
                            i4 = R.animator.fragment_close_exit;
                        }
                    } else if (z) {
                        i4 = R.animator.fragment_fade_enter;
                    } else {
                        i4 = R.animator.fragment_fade_exit;
                    }
                } else if (z) {
                    i4 = R.animator.fragment_open_enter;
                } else {
                    i4 = R.animator.fragment_open_exit;
                }
                i3 = i4;
            }
            if (i3 != 0) {
                boolean equals = "anim".equals(context.getResources().getResourceTypeName(i3));
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(context, i3);
                        if (loadAnimation != null) {
                            return new ko(loadAnimation);
                        }
                    } catch (Resources.NotFoundException e2) {
                        throw e2;
                    } catch (RuntimeException unused) {
                    }
                }
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, i3);
                    if (loadAnimator != null) {
                        return new ko(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i3);
                        if (loadAnimation2 != null) {
                            return new ko(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        return null;
    }

    public static MappedByteBuffer q(Context context, Uri uri) {
        ParcelFileDescriptor a2;
        try {
            a2 = b60.a(context.getContentResolver(), uri, "r", null);
        } catch (IOException unused) {
        }
        if (a2 == null) {
            if (a2 != null) {
                a2.close();
                return null;
            }
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(a2.getFileDescriptor());
        FileChannel channel = fileInputStream.getChannel();
        MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
        fileInputStream.close();
        a2.close();
        return map;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [ea0, java.lang.Object] */
    public static ea0 s(View view) {
        x90 x90Var = n;
        if (((WeakHashMap) x90Var.a) == null) {
            x90Var.a = new WeakHashMap();
        }
        ea0 ea0Var = (ea0) ((WeakHashMap) x90Var.a).get(view);
        if (ea0Var == null) {
            ?? obj = new Object();
            obj.a = new WeakReference(view);
            ((WeakHashMap) x90Var.a).put(view, obj);
            return obj;
        }
        return ea0Var;
    }

    public static TypedValue t(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean u(Context context, int i2, boolean z) {
        TypedValue t = t(context, i2);
        if (t != null && t.type == 18) {
            if (t.data != 0) {
                return true;
            }
            return false;
        }
        return z;
    }

    public static TimeInterpolator v(Context context, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.motionEasingEmphasizedInterpolator, typedValue, true)) {
            return timeInterpolator;
        }
        Path path = null;
        if (typedValue.type == 3) {
            String valueOf = String.valueOf(typedValue.string);
            if (!o(valueOf, "cubic-bezier") && !o(valueOf, "path")) {
                return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
            }
            if (o(valueOf, "cubic-bezier")) {
                String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
                if (split.length == 4) {
                    return ht.b(l(split, 0), l(split, 1), l(split, 2), l(split, 3));
                }
                int length = split.length;
                throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + length);
            } else if (o(valueOf, "path")) {
                String substring = valueOf.substring(5, valueOf.length() - 1);
                Path path2 = new Path();
                jt[] h2 = qj.h(substring);
                if (h2 != null) {
                    try {
                        jt.b(h2, path2);
                        path = path2;
                    } catch (RuntimeException e2) {
                        throw new RuntimeException("Error in parsing ".concat(substring), e2);
                    }
                }
                return ht.c(path);
            } else {
                c2.n("Invalid motion easing type: ".concat(valueOf));
                return null;
            }
        }
        c2.n("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        return null;
    }

    public abstract Intent i(Context context, Object obj);

    public c9 m(Context context, Object obj) {
        return null;
    }

    public abstract Object r(Intent intent, int i2);
}
