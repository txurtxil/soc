package defpackage;

import android.app.AppOpsManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.Trace;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: gn  reason: default package */
/* loaded from: classes.dex */
public abstract class gn {
    public static final Object[] a = new Object[0];
    public static final byte[] b = {112, 114, 111, 0};
    public static final byte[] c = {112, 114, 109, 0};
    public static final i90 d = new Object();
    public static boolean e = false;
    public static Method f = null;
    public static boolean g = false;
    public static Field h;
    public static long i;
    public static Method j;

    public static mc[] A(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (Arrays.equals(bArr, gt.d)) {
            int r = (int) gt.r(fileInputStream, 1);
            byte[] p = gt.p(fileInputStream, (int) gt.r(fileInputStream, 4), (int) gt.r(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(p);
                try {
                    mc[] B = B(byteArrayInputStream, str, r);
                    byteArrayInputStream.close();
                    return B;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            c2.g("Content found after the end of file");
            return null;
        }
        c2.g("Unsupported version");
        return null;
    }

    public static mc[] B(ByteArrayInputStream byteArrayInputStream, String str, int i2) {
        int i3;
        int i4 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new mc[0];
        }
        mc[] mcVarArr = new mc[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            int r = (int) gt.r(byteArrayInputStream, 2);
            mcVarArr[i5] = new mc(str, new String(gt.o(byteArrayInputStream, (int) gt.r(byteArrayInputStream, 2)), StandardCharsets.UTF_8), gt.r(byteArrayInputStream, 4), r, (int) gt.r(byteArrayInputStream, 4), (int) gt.r(byteArrayInputStream, 4), new int[r], new TreeMap());
        }
        int i6 = 0;
        while (i6 < i2) {
            mc mcVar = mcVarArr[i6];
            int available = byteArrayInputStream.available();
            int i7 = mcVar.f;
            int i8 = mcVar.g;
            TreeMap treeMap = mcVar.i;
            int i9 = available - i7;
            int i10 = i4;
            while (byteArrayInputStream.available() > i9) {
                i10 += (int) gt.r(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i10), 1);
                int r2 = (int) gt.r(byteArrayInputStream, 2);
                while (r2 > 0) {
                    gt.r(byteArrayInputStream, 2);
                    int r3 = (int) gt.r(byteArrayInputStream, 1);
                    if (r3 != 6 && r3 != 7) {
                        while (r3 > 0) {
                            gt.r(byteArrayInputStream, 1);
                            int i11 = i4;
                            int i12 = i6;
                            for (int r4 = (int) gt.r(byteArrayInputStream, 1); r4 > 0; r4--) {
                                gt.r(byteArrayInputStream, 2);
                            }
                            r3--;
                            i4 = i11;
                            i6 = i12;
                        }
                    }
                    r2--;
                    i4 = i4;
                    i6 = i6;
                }
            }
            int i13 = i4;
            int i14 = i6;
            if (byteArrayInputStream.available() == i9) {
                mcVar.h = w(byteArrayInputStream, mcVar.e);
                BitSet valueOf = BitSet.valueOf(gt.o(byteArrayInputStream, (((i8 * 2) + 7) & (-8)) / 8));
                for (int i15 = i13; i15 < i8; i15++) {
                    if (valueOf.get(i15)) {
                        i3 = 2;
                    } else {
                        i3 = i13;
                    }
                    if (valueOf.get(i15 + i8)) {
                        i3 |= 4;
                    }
                    if (i3 != 0) {
                        Integer num = (Integer) treeMap.get(Integer.valueOf(i15));
                        if (num == null) {
                            num = Integer.valueOf(i13);
                        }
                        treeMap.put(Integer.valueOf(i15), Integer.valueOf(i3 | num.intValue()));
                    }
                }
                i6 = i14 + 1;
                i4 = i13;
            } else {
                c2.g("Read too much data during profile line parse");
                return null;
            }
        }
        return mcVarArr;
    }

    public static void E(View view, en enVar) {
        md mdVar = enVar.a.b;
        if (mdVar != null && mdVar.a) {
            float f2 = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap weakHashMap = u70.a;
                f2 += j70.i((View) parent);
            }
            dn dnVar = enVar.a;
            if (dnVar.l != f2) {
                dnVar.l = f2;
                enVar.k();
            }
        }
    }

    public static final Object[] F(Collection collection) {
        int size = collection.size();
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    objArr[i2] = it.next();
                    if (i3 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            i4 = 2147483645;
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr = Arrays.copyOf(objArr, i4);
                    } else if (!it.hasNext()) {
                        return Arrays.copyOf(objArr, i3);
                    }
                    i2 = i3;
                }
            }
        }
        return a;
    }

    public static final Object[] G(Collection collection, Object[] objArr) {
        Object[] objArr2;
        int size = collection.size();
        int i2 = 0;
        if (size == 0) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
        } else {
            Iterator it = collection.iterator();
            if (!it.hasNext()) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                }
            } else {
                if (size <= objArr.length) {
                    objArr2 = objArr;
                } else {
                    Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    newInstance.getClass();
                    objArr2 = (Object[]) newInstance;
                }
                while (true) {
                    int i3 = i2 + 1;
                    objArr2[i2] = it.next();
                    if (i3 >= objArr2.length) {
                        if (!it.hasNext()) {
                            return objArr2;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            i4 = 2147483645;
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr2 = Arrays.copyOf(objArr2, i4);
                    } else if (!it.hasNext()) {
                        if (objArr2 == objArr) {
                            objArr[i3] = null;
                            return objArr;
                        }
                        return Arrays.copyOf(objArr2, i3);
                    }
                    i2 = i3;
                }
            }
        }
        return objArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean H(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, mc[] mcVarArr) {
        int i2;
        long j2;
        int length;
        byte[] bArr2 = gt.g;
        byte[] bArr3 = gt.f;
        byte[] bArr4 = gt.c;
        int i3 = 0;
        if (Arrays.equals(bArr, bArr4)) {
            ArrayList arrayList = new ArrayList(3);
            ArrayList arrayList2 = new ArrayList(3);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                gt.t(byteArrayOutputStream2, mcVarArr.length);
                int i4 = 2;
                int i5 = 2;
                for (mc mcVar : mcVarArr) {
                    gt.s(byteArrayOutputStream2, mcVar.c, 4);
                    gt.s(byteArrayOutputStream2, mcVar.d, 4);
                    gt.s(byteArrayOutputStream2, mcVar.g, 4);
                    String n = n(mcVar.a, mcVar.b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    int length2 = n.getBytes(charset).length;
                    gt.t(byteArrayOutputStream2, length2);
                    i5 = i5 + 14 + length2;
                    byteArrayOutputStream2.write(n.getBytes(charset));
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (i5 == byteArray.length) {
                    g90 g90Var = new g90(1, byteArray, false);
                    byteArrayOutputStream2.close();
                    arrayList.add(g90Var);
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < mcVarArr.length) {
                        try {
                            mc mcVar2 = mcVarArr[i6];
                            gt.t(byteArrayOutputStream3, i6);
                            gt.t(byteArrayOutputStream3, mcVar2.e);
                            i7 = i7 + 4 + (mcVar2.e * i4);
                            int[] iArr = mcVar2.h;
                            int length3 = iArr.length;
                            int i8 = i3;
                            while (i3 < length3) {
                                int i9 = iArr[i3];
                                gt.t(byteArrayOutputStream3, i9 - i8);
                                i3++;
                                i4 = i4;
                                i8 = i9;
                            }
                            i6++;
                            i3 = 0;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    int i10 = i4;
                    byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                    if (i7 == byteArray2.length) {
                        g90 g90Var2 = new g90(3, byteArray2, true);
                        byteArrayOutputStream3.close();
                        arrayList.add(g90Var2);
                        byteArrayOutputStream3 = new ByteArrayOutputStream();
                        int i11 = 0;
                        for (int i12 = 0; i12 < mcVarArr.length; i12++) {
                            try {
                                mc mcVar3 = mcVarArr[i12];
                                int i13 = 0;
                                for (Map.Entry entry : mcVar3.i.entrySet()) {
                                    i13 |= ((Integer) entry.getValue()).intValue();
                                }
                                ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                                L(byteArrayOutputStream4, mcVar3);
                                byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                                byteArrayOutputStream4.close();
                                ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                                M(byteArrayOutputStream5, mcVar3);
                                byte[] byteArray4 = byteArrayOutputStream5.toByteArray();
                                byteArrayOutputStream5.close();
                                gt.t(byteArrayOutputStream3, i12);
                                int length4 = byteArray3.length + 2 + byteArray4.length;
                                int i14 = i11 + 6;
                                gt.s(byteArrayOutputStream3, length4, 4);
                                gt.t(byteArrayOutputStream3, i13);
                                byteArrayOutputStream3.write(byteArray3);
                                byteArrayOutputStream3.write(byteArray4);
                                i11 = i14 + length4;
                            } finally {
                                try {
                                    byteArrayOutputStream3.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                        }
                        byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
                        if (i11 == byteArray5.length) {
                            g90 g90Var3 = new g90(4, byteArray5, true);
                            byteArrayOutputStream3.close();
                            arrayList.add(g90Var3);
                            long size = 12 + (arrayList.size() * 16);
                            gt.s(byteArrayOutputStream, arrayList.size(), 4);
                            int i15 = 0;
                            while (i15 < arrayList.size()) {
                                g90 g90Var4 = (g90) arrayList.get(i15);
                                int i16 = g90Var4.a;
                                byte[] bArr5 = g90Var4.b;
                                if (i16 != 1) {
                                    i2 = i10;
                                    if (i16 != i2) {
                                        if (i16 != 3) {
                                            if (i16 != 4) {
                                                if (i16 == 5) {
                                                    j2 = 4;
                                                } else {
                                                    throw null;
                                                }
                                            } else {
                                                j2 = 3;
                                            }
                                        } else {
                                            j2 = 2;
                                        }
                                    } else {
                                        j2 = 1;
                                    }
                                } else {
                                    i2 = i10;
                                    j2 = 0;
                                }
                                gt.s(byteArrayOutputStream, j2, 4);
                                gt.s(byteArrayOutputStream, size, 4);
                                if (g90Var4.c) {
                                    long length5 = bArr5.length;
                                    byte[] f2 = gt.f(bArr5);
                                    arrayList2.add(f2);
                                    gt.s(byteArrayOutputStream, f2.length, 4);
                                    gt.s(byteArrayOutputStream, length5, 4);
                                    length = f2.length;
                                } else {
                                    arrayList2.add(bArr5);
                                    gt.s(byteArrayOutputStream, bArr5.length, 4);
                                    gt.s(byteArrayOutputStream, 0L, 4);
                                    length = bArr5.length;
                                }
                                size += length;
                                i15++;
                                i10 = i2;
                            }
                            for (int i17 = 0; i17 < arrayList2.size(); i17++) {
                                byteArrayOutputStream.write((byte[]) arrayList2.get(i17));
                            }
                            return true;
                        }
                        throw new IllegalStateException("Expected size " + i11 + ", does not match actual size " + byteArray5.length);
                    }
                    throw new IllegalStateException("Expected size " + i7 + ", does not match actual size " + byteArray2.length);
                }
                throw new IllegalStateException("Expected size " + i5 + ", does not match actual size " + byteArray.length);
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream2.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        byte[] bArr6 = gt.d;
        if (Arrays.equals(bArr, bArr6)) {
            byte[] j3 = j(mcVarArr, bArr6);
            gt.s(byteArrayOutputStream, mcVarArr.length, 1);
            gt.s(byteArrayOutputStream, j3.length, 4);
            byte[] f3 = gt.f(j3);
            gt.s(byteArrayOutputStream, f3.length, 4);
            byteArrayOutputStream.write(f3);
            return true;
        } else if (Arrays.equals(bArr, bArr3)) {
            gt.s(byteArrayOutputStream, mcVarArr.length, 1);
            for (mc mcVar4 : mcVarArr) {
                String n2 = n(mcVar4.a, mcVar4.b, bArr3);
                Charset charset2 = StandardCharsets.UTF_8;
                gt.t(byteArrayOutputStream, n2.getBytes(charset2).length);
                gt.t(byteArrayOutputStream, mcVar4.h.length);
                gt.s(byteArrayOutputStream, mcVar4.i.size() * 4, 4);
                gt.s(byteArrayOutputStream, mcVar4.c, 4);
                byteArrayOutputStream.write(n2.getBytes(charset2));
                for (Integer num : mcVar4.i.keySet()) {
                    gt.t(byteArrayOutputStream, num.intValue());
                    gt.t(byteArrayOutputStream, 0);
                }
                for (int i18 : mcVar4.h) {
                    gt.t(byteArrayOutputStream, i18);
                }
            }
            return true;
        } else {
            byte[] bArr7 = gt.e;
            if (Arrays.equals(bArr, bArr7)) {
                byte[] j4 = j(mcVarArr, bArr7);
                gt.s(byteArrayOutputStream, mcVarArr.length, 1);
                gt.s(byteArrayOutputStream, j4.length, 4);
                byte[] f4 = gt.f(j4);
                gt.s(byteArrayOutputStream, f4.length, 4);
                byteArrayOutputStream.write(f4);
                return true;
            } else if (Arrays.equals(bArr, bArr2)) {
                gt.t(byteArrayOutputStream, mcVarArr.length);
                for (mc mcVar5 : mcVarArr) {
                    String str = mcVar5.a;
                    TreeMap treeMap = mcVar5.i;
                    String n3 = n(str, mcVar5.b, bArr2);
                    Charset charset3 = StandardCharsets.UTF_8;
                    gt.t(byteArrayOutputStream, n3.getBytes(charset3).length);
                    gt.t(byteArrayOutputStream, treeMap.size());
                    gt.t(byteArrayOutputStream, mcVar5.h.length);
                    gt.s(byteArrayOutputStream, mcVar5.c, 4);
                    byteArrayOutputStream.write(n3.getBytes(charset3));
                    for (Integer num2 : treeMap.keySet()) {
                        gt.t(byteArrayOutputStream, num2.intValue());
                    }
                    for (int i19 : mcVar5.h) {
                        gt.t(byteArrayOutputStream, i19);
                    }
                }
                return true;
            } else {
                return false;
            }
        }
    }

    public static nj I(int i2, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            nj njVar = nj.d;
            return nj.d;
        }
        return new nj(i2, i3 - 1, 1);
    }

    public static void K(ByteArrayOutputStream byteArrayOutputStream, mc mcVar, String str) {
        Charset charset = StandardCharsets.UTF_8;
        gt.t(byteArrayOutputStream, str.getBytes(charset).length);
        gt.t(byteArrayOutputStream, mcVar.e);
        gt.s(byteArrayOutputStream, mcVar.f, 4);
        gt.s(byteArrayOutputStream, mcVar.c, 4);
        gt.s(byteArrayOutputStream, mcVar.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void L(ByteArrayOutputStream byteArrayOutputStream, mc mcVar) {
        byte[] bArr = new byte[(((mcVar.g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : mcVar.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i2 = intValue / 8;
                bArr[i2] = (byte) (bArr[i2] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i3 = intValue + mcVar.g;
                int i4 = i3 / 8;
                bArr[i4] = (byte) ((1 << (i3 % 8)) | bArr[i4]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void M(ByteArrayOutputStream byteArrayOutputStream, mc mcVar) {
        int i2 = 0;
        for (Map.Entry entry : mcVar.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                gt.t(byteArrayOutputStream, intValue - i2);
                gt.t(byteArrayOutputStream, 0);
                i2 = intValue;
            }
        }
    }

    public static void a(eb0 eb0Var, StringBuilder sb) {
        String hexString;
        int lastIndexOf;
        if (eb0Var == null) {
            hexString = "null";
        } else {
            String simpleName = eb0.class.getSimpleName();
            if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = eb0.class.getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(lastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            hexString = Integer.toHexString(System.identityHashCode(eb0Var));
        }
        sb.append(hexString);
    }

    public static Object b(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static void c(Parcel parcel, Parcelable parcelable) {
        if (parcelable != null) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
            return;
        }
        parcel.writeInt(0);
    }

    public static int g(Context context, String str) {
        if (str != null) {
            if (!t7.a() && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
                if (sr.a(new ur(context).a)) {
                    return 0;
                }
                return -1;
            }
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new NullPointerException("permission must be non-null");
    }

    public static int h(Context context, String str) {
        int c2;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) != -1) {
            String d2 = h6.d(str);
            if (d2 != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int myUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                if (myUid2 == myUid && vr.a(packageName2, packageName)) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        AppOpsManager c3 = i6.c(context);
                        c2 = i6.a(c3, d2, Binder.getCallingUid(), packageName);
                        if (c2 == 0) {
                            c2 = i6.a(c3, d2, myUid, i6.b(context));
                        }
                    } else {
                        c2 = h6.c((AppOpsManager) h6.a(context, AppOpsManager.class), d2, packageName);
                    }
                } else {
                    c2 = h6.c((AppOpsManager) h6.a(context, AppOpsManager.class), d2, packageName);
                }
                if (c2 != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static float i(float f2, float f3, float f4) {
        if (f3 <= f4) {
            if (f2 < f3) {
                return f3;
            }
            if (f2 > f4) {
                return f4;
            }
            return f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static byte[] j(mc[] mcVarArr, byte[] bArr) {
        int i2 = 0;
        for (mc mcVar : mcVarArr) {
            i2 += ((((mcVar.g * 2) + 7) & (-8)) / 8) + (mcVar.e * 2) + n(mcVar.a, mcVar.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + mcVar.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, gt.e)) {
            for (mc mcVar2 : mcVarArr) {
                K(byteArrayOutputStream, mcVar2, n(mcVar2.a, mcVar2.b, bArr));
                M(byteArrayOutputStream, mcVar2);
                int[] iArr = mcVar2.h;
                int length = iArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    int i5 = iArr[i3];
                    gt.t(byteArrayOutputStream, i5 - i4);
                    i3++;
                    i4 = i5;
                }
                L(byteArrayOutputStream, mcVar2);
            }
        } else {
            for (mc mcVar3 : mcVarArr) {
                K(byteArrayOutputStream, mcVar3, n(mcVar3.a, mcVar3.b, bArr));
            }
            for (mc mcVar4 : mcVarArr) {
                M(byteArrayOutputStream, mcVar4);
                int[] iArr2 = mcVar4.h;
                int length2 = iArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length2) {
                    int i8 = iArr2[i6];
                    gt.t(byteArrayOutputStream, i8 - i7);
                    i6++;
                    i7 = i8;
                }
                L(byteArrayOutputStream, mcVar4);
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [k60, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [k60, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [k60, java.lang.Object] */
    public static k60 k(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return new Object();
            }
            return new Object();
        }
        return new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, t70] */
    public static boolean l(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = u70.a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList2 = t70.d;
            t70 t70Var = (t70) view.getTag(R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            t70 t70Var2 = t70Var;
            if (t70Var == null) {
                ?? obj = new Object();
                obj.a = null;
                obj.b = null;
                obj.c = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, obj);
                t70Var2 = obj;
            }
            WeakReference weakReference2 = t70Var2.c;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                t70Var2.c = new WeakReference(keyEvent);
                if (t70Var2.b == null) {
                    t70Var2.b = new SparseArray();
                }
                SparseArray sparseArray = t70Var2.b;
                if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 == null || !g70.b(view2) || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
                        return true;
                    }
                    arrayList.get(size).getClass();
                    c2.l();
                    return false;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m(defpackage.zj r6, android.view.View r7, android.view.Window.Callback r8, android.view.KeyEvent r9) {
        /*
            r0 = 0
            if (r6 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r6 = r6.b(r9)
            return r6
        L10:
            boolean r1 = r8 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r8 = (android.app.Activity) r8
            r8.onUserInteraction()
            android.view.Window r6 = r8.getWindow()
            r7 = 8
            boolean r7 = r6.hasFeature(r7)
            if (r7 == 0) goto L65
            android.app.ActionBar r7 = r8.getActionBar()
            int r1 = r9.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r7 == 0) goto L65
            boolean r1 = defpackage.gn.e
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r7.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class<android.view.KeyEvent> r5 = android.view.KeyEvent.class
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            defpackage.gn.f = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            defpackage.gn.e = r3
        L4d:
            java.lang.reflect.Method r1 = defpackage.gn.f
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[]{r9}     // Catch: java.lang.Throwable -> L62
            java.lang.Object r7 = r1.invoke(r7, r4)     // Catch: java.lang.Throwable -> L62
            if (r7 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L62
            boolean r0 = r7.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r7 = r6.superDispatchKeyEvent(r9)
            if (r7 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r6 = r6.getDecorView()
            boolean r7 = defpackage.u70.b(r6, r9)
            if (r7 == 0) goto L77
            goto L81
        L77:
            if (r6 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r6.getKeyDispatcherState()
        L7d:
            boolean r3 = r9.dispatch(r8, r2, r8)
        L81:
            return r3
        L82:
            boolean r1 = r8 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r8 = (android.app.Dialog) r8
            boolean r6 = defpackage.gn.g
            if (r6 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r6 = android.app.Dialog.class
            java.lang.String r7 = "mOnKeyListener"
            java.lang.reflect.Field r6 = r6.getDeclaredField(r7)     // Catch: java.lang.NoSuchFieldException -> L99
            defpackage.gn.h = r6     // Catch: java.lang.NoSuchFieldException -> L99
            r6.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            defpackage.gn.g = r3
        L9b:
            java.lang.reflect.Field r6 = defpackage.gn.h
            if (r6 == 0) goto La6
            java.lang.Object r6 = r6.get(r8)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r6 = (android.content.DialogInterface.OnKeyListener) r6     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r6 = r2
        La7:
            if (r6 == 0) goto Lb4
            int r7 = r9.getKeyCode()
            boolean r6 = r6.onKey(r8, r7, r9)
            if (r6 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r6 = r8.getWindow()
            boolean r7 = r6.superDispatchKeyEvent(r9)
            if (r7 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r6 = r6.getDecorView()
            boolean r7 = defpackage.u70.b(r6, r9)
            if (r7 == 0) goto Lca
            goto Ld4
        Lca:
            if (r6 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r6.getKeyDispatcherState()
        Ld0:
            boolean r3 = r9.dispatch(r8, r2, r8)
        Ld4:
            return r3
        Ld5:
            if (r7 == 0) goto Ldd
            boolean r7 = defpackage.u70.b(r7, r9)
            if (r7 != 0) goto Le3
        Ldd:
            boolean r6 = r6.b(r9)
            if (r6 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gn.m(zj, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }

    public static String n(String str, String str2, byte[] bArr) {
        Object obj;
        byte[] bArr2 = gt.f;
        byte[] bArr3 = gt.g;
        String str3 = "!";
        if (!Arrays.equals(bArr, bArr3) && !Arrays.equals(bArr, bArr2)) {
            obj = "!";
        } else {
            obj = ":";
        }
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else if (str2.equals("classes.dex")) {
            return str;
        } else {
            if (!str2.contains("!") && !str2.contains(":")) {
                if (!str2.endsWith(".apk")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append((Arrays.equals(bArr, bArr3) || Arrays.equals(bArr, bArr2)) ? ":" : ":");
                    sb.append(str2);
                    return sb.toString();
                }
            } else if ("!".equals(obj)) {
                return str2.replace(":", "!");
            } else {
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        if (r5.c == r8.hashCode()) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList o(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            vx r1 = new vx
            r1.<init>(r0, r8)
            java.lang.Object r2 = defpackage.xx.c
            monitor-enter(r2)
            java.util.WeakHashMap r3 = defpackage.xx.b     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L50
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L50
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            ux r5 = (defpackage.ux) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L50
            android.content.res.Configuration r6 = r5.b     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4d
            if (r8 != 0) goto L3f
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L49
            goto L3f
        L3c:
            r8 = move-exception
            goto Lb8
        L3f:
            if (r8 == 0) goto L4d
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4d
        L49:
            android.content.res.ColorStateList r3 = r5.a     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L52
        L4d:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L50:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L52:
            if (r3 == 0) goto L55
            return r3
        L55:
            java.lang.ThreadLocal r2 = defpackage.xx.a
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L67
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L67:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L76
            r3 = 31
            if (r2 > r3) goto L76
            goto L87
        L76:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = defpackage.ca.a(r0, r2, r8)     // Catch: java.lang.Exception -> L7f
            goto L87
        L7f:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L87:
            if (r4 == 0) goto Lb3
            java.lang.Object r2 = defpackage.xx.c
            monitor-enter(r2)
            java.util.WeakHashMap r0 = defpackage.xx.b     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L9f
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L9f
            if (r3 != 0) goto La1
            android.util.SparseArray r3 = new android.util.SparseArray     // Catch: java.lang.Throwable -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9f
            r0.put(r1, r3)     // Catch: java.lang.Throwable -> L9f
            goto La1
        L9f:
            r8 = move-exception
            goto Lb1
        La1:
            ux r0 = new ux     // Catch: java.lang.Throwable -> L9f
            android.content.res.Resources r1 = r1.a     // Catch: java.lang.Throwable -> L9f
            android.content.res.Configuration r1 = r1.getConfiguration()     // Catch: java.lang.Throwable -> L9f
            r0.<init>(r4, r1, r8)     // Catch: java.lang.Throwable -> L9f
            r3.append(r9, r0)     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            goto Lb7
        Lb1:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            throw r8
        Lb3:
            android.content.res.ColorStateList r4 = defpackage.tx.b(r0, r9, r8)
        Lb7:
            return r4
        Lb8:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gn.o(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static Drawable p(Context context, int i2) {
        return rx.c().d(context, i2);
    }

    public static boolean s() {
        boolean isEnabled;
        try {
            if (j == null) {
                isEnabled = Trace.isEnabled();
                return isEnabled;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (j == null) {
                i = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                j = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) j.invoke(null, Long.valueOf(i))).booleanValue();
        } catch (Exception e2) {
            if (e2 instanceof InvocationTargetException) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof RuntimeException)) {
                    c2.k(cause);
                    return false;
                }
                throw ((RuntimeException) cause);
            }
            Log.v("Trace", "Unable to call isTagEnabled via reflection", e2);
            return false;
        }
    }

    public static String t(String str, Object... objArr) {
        int indexOf;
        String str2;
        String sb;
        int i2 = 0;
        for (int i3 = 0; i3 < objArr.length; i3++) {
            Object obj = objArr[i3];
            if (obj == null) {
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e2) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(hexString).length() + name.length() + 1);
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    if (sb3.length() != 0) {
                        str2 = "Exception during lenientFormat for ".concat(sb3);
                    } else {
                        str2 = new String("Exception during lenientFormat for ");
                    }
                    logger.log(level, str2, (Throwable) e2);
                    String name2 = e2.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(name2.length() + sb3.length() + 9);
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i3] = sb;
        }
        StringBuilder sb5 = new StringBuilder((objArr.length * 16) + str.length());
        int i4 = 0;
        while (i2 < objArr.length && (indexOf = str.indexOf("%s", i4)) != -1) {
            sb5.append((CharSequence) str, i4, indexOf);
            sb5.append(objArr[i2]);
            i4 = indexOf + 2;
            i2++;
        }
        sb5.append((CharSequence) str, i4, str.length());
        if (i2 < objArr.length) {
            sb5.append(" [");
            sb5.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb5.append(", ");
                sb5.append(objArr[i5]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }

    public static int[] w(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += (int) gt.r(byteArrayInputStream, 2);
            iArr[i4] = i3;
        }
        return iArr;
    }

    public static mc[] x(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, mc[] mcVarArr) {
        byte[] bArr3 = gt.h;
        if (Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(gt.c, bArr2)) {
                if (Arrays.equals(bArr, bArr3)) {
                    int r = (int) gt.r(fileInputStream, 1);
                    byte[] p = gt.p(fileInputStream, (int) gt.r(fileInputStream, 4), (int) gt.r(fileInputStream, 4));
                    if (fileInputStream.read() <= 0) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(p);
                        try {
                            mc[] y = y(byteArrayInputStream, r, mcVarArr);
                            byteArrayInputStream.close();
                            return y;
                        } catch (Throwable th) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    c2.g("Content found after the end of file");
                    return null;
                }
                c2.g("Unsupported meta version");
                return null;
            }
            c2.g("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            return null;
        } else if (Arrays.equals(bArr, gt.i)) {
            int r2 = (int) gt.r(fileInputStream, 2);
            byte[] p2 = gt.p(fileInputStream, (int) gt.r(fileInputStream, 4), (int) gt.r(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(p2);
                try {
                    mc[] z = z(byteArrayInputStream2, bArr2, r2, mcVarArr);
                    byteArrayInputStream2.close();
                    return z;
                } catch (Throwable th3) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            c2.g("Content found after the end of file");
            return null;
        } else {
            c2.g("Unsupported meta version");
            return null;
        }
    }

    public static mc[] y(ByteArrayInputStream byteArrayInputStream, int i2, mc[] mcVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new mc[0];
        }
        if (i2 == mcVarArr.length) {
            String[] strArr = new String[i2];
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = (int) gt.r(byteArrayInputStream, 2);
                strArr[i3] = new String(gt.o(byteArrayInputStream, (int) gt.r(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                mc mcVar = mcVarArr[i4];
                if (mcVar.b.equals(strArr[i4])) {
                    int i5 = iArr[i4];
                    mcVar.e = i5;
                    mcVar.h = w(byteArrayInputStream, i5);
                } else {
                    c2.g("Order of dexfiles in metadata did not match baseline");
                    return null;
                }
            }
            return mcVarArr;
        }
        c2.g("Mismatched number of dex files found in metadata");
        return null;
    }

    public static mc[] z(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, mc[] mcVarArr) {
        String str;
        mc mcVar;
        if (byteArrayInputStream.available() == 0) {
            return new mc[0];
        }
        if (i2 == mcVarArr.length) {
            for (int i3 = 0; i3 < i2; i3++) {
                gt.r(byteArrayInputStream, 2);
                String str2 = new String(gt.o(byteArrayInputStream, (int) gt.r(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
                long r = gt.r(byteArrayInputStream, 4);
                int r2 = (int) gt.r(byteArrayInputStream, 2);
                if (mcVarArr.length > 0) {
                    int indexOf = str2.indexOf("!");
                    if (indexOf < 0) {
                        indexOf = str2.indexOf(":");
                    }
                    if (indexOf > 0) {
                        str = str2.substring(indexOf + 1);
                    } else {
                        str = str2;
                    }
                    for (int i4 = 0; i4 < mcVarArr.length; i4++) {
                        if (mcVarArr[i4].b.equals(str)) {
                            mcVar = mcVarArr[i4];
                            break;
                        }
                    }
                }
                mcVar = null;
                if (mcVar != null) {
                    mcVar.d = r;
                    int[] w = w(byteArrayInputStream, r2);
                    if (Arrays.equals(bArr, gt.g)) {
                        mcVar.e = r2;
                        mcVar.h = w;
                    }
                } else {
                    c2.g("Missing profile key: ".concat(str2));
                    return null;
                }
            }
            return mcVarArr;
        }
        c2.g("Mismatched number of dex files found in metadata");
        return null;
    }

    public abstract void C(boolean z);

    public abstract void D(boolean z);

    public abstract TransformationMethod J(TransformationMethod transformationMethod);

    public abstract boolean d(s sVar, o oVar);

    public abstract boolean e(s sVar, Object obj, Object obj2);

    public abstract boolean f(s sVar, r rVar, r rVar2);

    public abstract InputFilter[] q(InputFilter[] inputFilterArr);

    public abstract boolean r();

    public abstract void u(r rVar, r rVar2);

    public abstract void v(r rVar, Thread thread);
}
