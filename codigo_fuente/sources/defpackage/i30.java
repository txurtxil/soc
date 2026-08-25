package defpackage;
/* renamed from: i30  reason: default package */
/* loaded from: classes.dex */
public abstract class i30 extends h30 {
    public static boolean u(String str, String str2) {
        if (v(str, str2, 0, false) < 0) {
            return false;
        }
        return true;
    }

    public static final int v(CharSequence charSequence, String str, int i, boolean z) {
        String str2;
        boolean z2;
        boolean regionMatches;
        charSequence.getClass();
        str.getClass();
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i);
        }
        int length = charSequence.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        nj njVar = new nj(i, length, 1);
        boolean z3 = charSequence instanceof String;
        int i2 = njVar.b;
        if (z3) {
            if (i <= i2) {
                int i3 = i;
                while (true) {
                    String str3 = (String) charSequence;
                    int length3 = str.length();
                    if (!z) {
                        regionMatches = str.regionMatches(0, str3, i3, length3);
                        str2 = str;
                        z2 = z;
                    } else {
                        str2 = str;
                        z2 = z;
                        regionMatches = str2.regionMatches(z2, 0, str3, i3, length3);
                    }
                    if (regionMatches) {
                        return i3;
                    }
                    if (i3 != i2) {
                        i3++;
                        str = str2;
                        z = z2;
                    } else {
                        return -1;
                    }
                }
            } else {
                return -1;
            }
        } else if (i <= i2) {
            while (!w(str, charSequence, i, str.length(), z)) {
                if (i != i2) {
                    i++;
                } else {
                    return -1;
                }
            }
            return i;
        } else {
            return -1;
        }
    }

    public static final boolean w(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z) {
        char upperCase;
        char upperCase2;
        charSequence.getClass();
        charSequence2.getClass();
        if (i >= 0 && charSequence.length() - i2 >= 0 && i <= charSequence2.length() - i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char charAt = charSequence.charAt(i3);
                char charAt2 = charSequence2.charAt(i + i3);
                if (charAt == charAt2 || (z && ((upperCase = Character.toUpperCase(charAt)) == (upperCase2 = Character.toUpperCase(charAt2)) || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2)))) {
                }
            }
            return true;
        }
        return false;
    }

    public static Long x(String str) {
        boolean z;
        int length = str.length();
        if (length != 0) {
            int i = 0;
            char charAt = str.charAt(0);
            long j = -9223372036854775807L;
            if (charAt < '0') {
                z = true;
                if (length != 1) {
                    if (charAt != '+') {
                        if (charAt == '-') {
                            j = Long.MIN_VALUE;
                            i = 1;
                        } else {
                            return null;
                        }
                    } else {
                        z = false;
                        i = 1;
                    }
                } else {
                    return null;
                }
            } else {
                z = false;
            }
            long j2 = 0;
            long j3 = -256204778801521550L;
            while (i < length) {
                int digit = Character.digit((int) str.charAt(i), 10);
                if (digit >= 0) {
                    if (j2 < j3) {
                        if (j3 == -256204778801521550L) {
                            j3 = j / 10;
                            if (j2 < j3) {
                                return null;
                            }
                        } else {
                            return null;
                        }
                    }
                    long j4 = j2 * 10;
                    long j5 = digit;
                    if (j4 < j + j5) {
                        return null;
                    }
                    j2 = j4 - j5;
                    i++;
                } else {
                    return null;
                }
            }
            if (z) {
                return Long.valueOf(j2);
            }
            return Long.valueOf(-j2);
        }
        return null;
    }

    public static CharSequence y(String str) {
        int i;
        boolean z;
        int length = str.length() - 1;
        int i2 = 0;
        boolean z2 = false;
        while (i2 <= length) {
            if (!z2) {
                i = i2;
            } else {
                i = length;
            }
            char charAt = str.charAt(i);
            if (!Character.isWhitespace(charAt) && !Character.isSpaceChar(charAt)) {
                z = false;
            } else {
                z = true;
            }
            if (!z2) {
                if (!z) {
                    z2 = true;
                } else {
                    i2++;
                }
            } else if (!z) {
                break;
            } else {
                length--;
            }
        }
        return str.subSequence(i2, length + 1);
    }
}
