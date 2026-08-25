package defpackage;

import android.graphics.Path;
import android.util.Log;
/* renamed from: jt  reason: default package */
/* loaded from: classes.dex */
public final class jt {
    public char a;
    public float[] b;

    public static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
        double d;
        double d2;
        double radians = Math.toRadians(f7);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d3 = f;
        double d4 = f2;
        double d5 = f5;
        double d6 = ((d4 * sin) + (d3 * cos)) / d5;
        double d7 = f6;
        double d8 = ((d4 * cos) + ((-f) * sin)) / d7;
        double d9 = f4;
        double d10 = ((d9 * sin) + (f3 * cos)) / d5;
        double d11 = ((d9 * cos) + ((-f3) * sin)) / d7;
        double d12 = d6 - d10;
        double d13 = d8 - d11;
        double d14 = (d6 + d10) / 2.0d;
        double d15 = (d8 + d11) / 2.0d;
        double d16 = (d13 * d13) + (d12 * d12);
        if (d16 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d17 = (1.0d / d16) - 0.25d;
        if (d17 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d16);
            float sqrt = (float) (Math.sqrt(d16) / 1.99999d);
            a(path, f, f2, f3, f4, f5 * sqrt, sqrt * f6, f7, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d17);
        double d18 = sqrt2 * d12;
        double d19 = sqrt2 * d13;
        if (z == z2) {
            d = d14 - d19;
            d2 = d15 + d18;
        } else {
            d = d14 + d19;
            d2 = d15 - d18;
        }
        double atan2 = Math.atan2(d8 - d2, d6 - d);
        double atan22 = Math.atan2(d11 - d2, d10 - d) - atan2;
        int i = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
        if (z2 != (i >= 0)) {
            atan22 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d20 = d * d5;
        double d21 = d2 * d7;
        double d22 = (d20 * cos) - (d21 * sin);
        double d23 = (d21 * cos) + (d20 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d24 = -d5;
        double d25 = d24 * cos2;
        double d26 = d7 * sin2;
        double d27 = (d25 * sin3) - (d26 * cos3);
        double d28 = d24 * sin2;
        double d29 = d7 * cos2;
        double d30 = atan22 / ceil;
        double d31 = (cos3 * d29) + (sin3 * d28);
        double d32 = d3;
        double d33 = d4;
        int i2 = 0;
        double d34 = atan2;
        while (i2 < ceil) {
            double d35 = d34 + d30;
            double sin4 = Math.sin(d35);
            double cos4 = Math.cos(d35);
            int i3 = ceil;
            double d36 = (((d5 * cos2) * cos4) + d22) - (d26 * sin4);
            double d37 = (d29 * sin4) + (d5 * sin2 * cos4) + d23;
            double d38 = (d25 * sin4) - (d26 * cos4);
            double d39 = (cos4 * d29) + (sin4 * d28);
            double d40 = d35 - d34;
            double tan = Math.tan(d40 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d40)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d27 * sqrt3) + d32), (float) ((d31 * sqrt3) + d33), (float) (d36 - (sqrt3 * d38)), (float) (d37 - (sqrt3 * d39)), (float) d36, (float) d37);
            i2++;
            d33 = d37;
            cos2 = cos2;
            d28 = d28;
            d34 = d35;
            d31 = d39;
            d32 = d36;
            ceil = i3;
            d27 = d38;
            d30 = d30;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(jt[] jtVarArr, Path path) {
        int i;
        int i2;
        float[] fArr;
        int i3;
        char c;
        boolean z;
        boolean z2;
        float f;
        float f2;
        float[] fArr2;
        boolean z3;
        boolean z4;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        Path path2 = path;
        int i4 = 6;
        float[] fArr3 = new float[6];
        int i5 = 0;
        char c2 = 'm';
        int i6 = 0;
        while (i6 < jtVarArr.length) {
            jt jtVar = jtVarArr[i6];
            char c3 = jtVar.a;
            float[] fArr4 = jtVar.b;
            float f12 = fArr3[i5];
            float f13 = fArr3[1];
            float f14 = fArr3[2];
            float f15 = fArr3[3];
            float f16 = fArr3[4];
            float f17 = fArr3[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = i4;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f16, f17);
                    f12 = f16;
                    f14 = f12;
                    f13 = f17;
                    f15 = f13;
                default:
                    i = 2;
                    break;
            }
            float f18 = f13;
            float f19 = f16;
            float f20 = f17;
            float f21 = f12;
            int i7 = i5;
            while (i7 < fArr4.length) {
                if (c3 != 'A') {
                    if (c3 != 'C') {
                        if (c3 != 'H') {
                            if (c3 != 'Q') {
                                i3 = i5;
                                if (c3 != 'V') {
                                    if (c3 != 'a') {
                                        if (c3 != 'c') {
                                            if (c3 != 'h') {
                                                if (c3 != 'q') {
                                                    if (c3 != 'v') {
                                                        if (c3 != 'L') {
                                                            if (c3 != 'M') {
                                                                if (c3 != 'S') {
                                                                    if (c3 != 'T') {
                                                                        if (c3 != 'l') {
                                                                            if (c3 != 'm') {
                                                                                if (c3 != 's') {
                                                                                    if (c3 != 't') {
                                                                                        i2 = i7;
                                                                                    } else {
                                                                                        if (c2 != 'q' && c2 != 't' && c2 != 'Q' && c2 != 'T') {
                                                                                            f11 = 0.0f;
                                                                                            f10 = 0.0f;
                                                                                        } else {
                                                                                            f10 = f21 - f14;
                                                                                            f11 = f18 - f15;
                                                                                        }
                                                                                        int i8 = i7 + 1;
                                                                                        path2.rQuadTo(f10, f11, fArr4[i7], fArr4[i8]);
                                                                                        float f22 = f10 + f21;
                                                                                        float f23 = f18 + f11;
                                                                                        f21 += fArr4[i7];
                                                                                        f18 += fArr4[i8];
                                                                                        f15 = f23;
                                                                                        i2 = i7;
                                                                                        f14 = f22;
                                                                                    }
                                                                                } else {
                                                                                    if (c2 != 'c' && c2 != 's' && c2 != 'C' && c2 != 'S') {
                                                                                        f9 = 0.0f;
                                                                                        f8 = 0.0f;
                                                                                    } else {
                                                                                        f8 = f18 - f15;
                                                                                        f9 = f21 - f14;
                                                                                    }
                                                                                    int i9 = i7 + 1;
                                                                                    int i10 = i7 + 2;
                                                                                    int i11 = i7 + 3;
                                                                                    i2 = i7;
                                                                                    path2.rCubicTo(f9, f8, fArr4[i7], fArr4[i9], fArr4[i10], fArr4[i11]);
                                                                                    f3 = fArr4[i2] + f21;
                                                                                    f4 = f18 + fArr4[i9];
                                                                                    f21 += fArr4[i10];
                                                                                    f5 = fArr4[i11];
                                                                                }
                                                                            } else {
                                                                                i2 = i7;
                                                                                float f24 = fArr4[i2];
                                                                                f21 += f24;
                                                                                float f25 = fArr4[i2 + 1];
                                                                                f18 += f25;
                                                                                if (i2 > 0) {
                                                                                    path2.rLineTo(f24, f25);
                                                                                } else {
                                                                                    path2.rMoveTo(f24, f25);
                                                                                    fArr = fArr4;
                                                                                    f19 = f21;
                                                                                    f = f18;
                                                                                    f20 = f;
                                                                                    c = c3;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            i2 = i7;
                                                                            int i12 = i2 + 1;
                                                                            path2.rLineTo(fArr4[i2], fArr4[i12]);
                                                                            f21 += fArr4[i2];
                                                                            f6 = fArr4[i12];
                                                                        }
                                                                    } else {
                                                                        i2 = i7;
                                                                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                                                            f21 = (f21 * 2.0f) - f14;
                                                                            f18 = (f18 * 2.0f) - f15;
                                                                        }
                                                                        float f26 = f18;
                                                                        int i13 = i2 + 1;
                                                                        path2.quadTo(f21, f26, fArr4[i2], fArr4[i13]);
                                                                        f15 = f26;
                                                                        c = c3;
                                                                        fArr = fArr4;
                                                                        f14 = f21;
                                                                        f21 = fArr4[i2];
                                                                        f = fArr4[i13];
                                                                    }
                                                                } else {
                                                                    i2 = i7;
                                                                    if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                                                        f21 = (f21 * 2.0f) - f14;
                                                                        f18 = (f18 * 2.0f) - f15;
                                                                    }
                                                                    float f27 = f21;
                                                                    int i14 = i2 + 1;
                                                                    int i15 = i2 + 2;
                                                                    int i16 = i2 + 3;
                                                                    path2.cubicTo(f27, f18, fArr4[i2], fArr4[i14], fArr4[i15], fArr4[i16]);
                                                                    f2 = fArr4[i2];
                                                                    f15 = fArr4[i14];
                                                                    f21 = fArr4[i15];
                                                                    f = fArr4[i16];
                                                                    c = c3;
                                                                    fArr = fArr4;
                                                                }
                                                            } else {
                                                                i2 = i7;
                                                                f7 = fArr4[i2];
                                                                f = fArr4[i2 + 1];
                                                                if (i2 > 0) {
                                                                    path2.lineTo(f7, f);
                                                                } else {
                                                                    path2.moveTo(f7, f);
                                                                    f21 = f7;
                                                                    f19 = f21;
                                                                    f20 = f;
                                                                    c = c3;
                                                                    fArr = fArr4;
                                                                }
                                                            }
                                                        } else {
                                                            i2 = i7;
                                                            int i17 = i2 + 1;
                                                            path2.lineTo(fArr4[i2], fArr4[i17]);
                                                            f7 = fArr4[i2];
                                                            f = fArr4[i17];
                                                        }
                                                        f21 = f7;
                                                        c = c3;
                                                        fArr = fArr4;
                                                    } else {
                                                        i2 = i7;
                                                        path2.rLineTo(0.0f, fArr4[i2]);
                                                        f6 = fArr4[i2];
                                                    }
                                                    f18 += f6;
                                                } else {
                                                    i2 = i7;
                                                    int i18 = i2 + 1;
                                                    int i19 = i2 + 2;
                                                    int i20 = i2 + 3;
                                                    path2.rQuadTo(fArr4[i2], fArr4[i18], fArr4[i19], fArr4[i20]);
                                                    f3 = fArr4[i2] + f21;
                                                    f4 = f18 + fArr4[i18];
                                                    f21 += fArr4[i19];
                                                    f5 = fArr4[i20];
                                                }
                                                f18 += f5;
                                                f14 = f3;
                                                f15 = f4;
                                            } else {
                                                i2 = i7;
                                                path2.rLineTo(fArr4[i2], 0.0f);
                                                f21 += fArr4[i2];
                                            }
                                        } else {
                                            i2 = i7;
                                            int i21 = i2 + 2;
                                            int i22 = i2 + 3;
                                            int i23 = i2 + 4;
                                            int i24 = i2 + 5;
                                            path2.rCubicTo(fArr4[i2], fArr4[i2 + 1], fArr4[i21], fArr4[i22], fArr4[i23], fArr4[i24]);
                                            float f28 = fArr4[i21] + f21;
                                            float f29 = f18 + fArr4[i22];
                                            f21 += fArr4[i23];
                                            f18 += fArr4[i24];
                                            f14 = f28;
                                            f15 = f29;
                                        }
                                        fArr = fArr4;
                                        f = f18;
                                        c = c3;
                                    } else {
                                        i2 = i7;
                                        int i25 = i2 + 5;
                                        float f30 = fArr4[i25] + f21;
                                        int i26 = i2 + 6;
                                        float f31 = fArr4[i26] + f18;
                                        float f32 = fArr4[i2];
                                        float f33 = fArr4[i2 + 1];
                                        float f34 = fArr4[i2 + 2];
                                        if (fArr4[i2 + 3] != 0.0f) {
                                            fArr2 = fArr4;
                                            z3 = 1;
                                        } else {
                                            fArr2 = fArr4;
                                            z3 = i3;
                                        }
                                        int i27 = (fArr2[i2 + 4] > 0.0f ? 1 : (fArr2[i2 + 4] == 0.0f ? 0 : -1));
                                        fArr = fArr2;
                                        float f35 = f21;
                                        if (i27 != 0) {
                                            z4 = 1;
                                        } else {
                                            z4 = i3;
                                        }
                                        float f36 = f18;
                                        c = c3;
                                        a(path, f35, f36, f30, f31, f32, f33, f34, z3, z4);
                                        f21 = f35 + fArr[i25];
                                        f = fArr[i26] + f36;
                                        f15 = f;
                                        f14 = f21;
                                    }
                                } else {
                                    i2 = i7;
                                    c = c3;
                                    fArr = fArr4;
                                    path2.lineTo(f21, fArr[i2]);
                                    f = fArr[i2];
                                }
                            } else {
                                i2 = i7;
                                c = c3;
                                fArr = fArr4;
                                i3 = i5;
                                int i28 = i2 + 1;
                                int i29 = i2 + 2;
                                int i30 = i2 + 3;
                                path2.quadTo(fArr[i2], fArr[i28], fArr[i29], fArr[i30]);
                                f2 = fArr[i2];
                                f15 = fArr[i28];
                                f21 = fArr[i29];
                                f = fArr[i30];
                            }
                            f14 = f2;
                        } else {
                            i2 = i7;
                            fArr = fArr4;
                            i3 = i5;
                            f = f18;
                            c = c3;
                            path2.lineTo(fArr[i2], f);
                            f21 = fArr[i2];
                        }
                    } else {
                        i2 = i7;
                        c = c3;
                        fArr = fArr4;
                        i3 = i5;
                        int i31 = i2 + 2;
                        int i32 = i2 + 3;
                        int i33 = i2 + 4;
                        int i34 = i2 + 5;
                        path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i31], fArr[i32], fArr[i33], fArr[i34]);
                        float f37 = fArr[i33];
                        float f38 = fArr[i34];
                        f21 = f37;
                        f14 = fArr[i31];
                        f15 = fArr[i32];
                        f = f38;
                    }
                } else {
                    i2 = i7;
                    fArr = fArr4;
                    float f39 = f21;
                    i3 = i5;
                    float f40 = f18;
                    c = c3;
                    int i35 = i2 + 5;
                    float f41 = fArr[i35];
                    int i36 = i2 + 6;
                    float f42 = fArr[i36];
                    float f43 = fArr[i2];
                    float f44 = fArr[i2 + 1];
                    float f45 = fArr[i2 + 2];
                    if (fArr[i2 + 3] != 0.0f) {
                        z = 1;
                    } else {
                        z = i3;
                    }
                    if (fArr[i2 + 4] != 0.0f) {
                        z2 = 1;
                    } else {
                        z2 = i3;
                    }
                    a(path, f39, f40, f41, f42, f43, f44, f45, z, z2);
                    f14 = fArr[i35];
                    f21 = f14;
                    f = fArr[i36];
                    f15 = f;
                }
                c2 = c;
                c3 = c2;
                i5 = i3;
                fArr4 = fArr;
                f18 = f;
                i7 = i2 + i;
                path2 = path;
            }
            fArr3[i5] = f21;
            fArr3[1] = f18;
            fArr3[2] = f14;
            fArr3[3] = f15;
            fArr3[4] = f19;
            fArr3[5] = f20;
            c2 = jtVarArr[i6].a;
            i6++;
            path2 = path;
            i4 = 6;
        }
    }
}
