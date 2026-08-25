package defpackage;
/* renamed from: pa0  reason: default package */
/* loaded from: classes.dex */
public final class pa0 {
    public static final float[] d = new float[0];
    public static final int[] e = new int[0];
    public final int a;
    public final float[] b;
    public final int[] c;

    public pa0(int i, long j, float[] fArr, byte[] bArr) {
        this.a = i;
        this.b = fArr == null ? d : fArr;
        if (bArr == null) {
            this.c = e;
            return;
        }
        this.c = new int[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            this.c[i2] = bArr[i2];
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(pa0.class.getName().concat("["));
        sb.append("type:" + Integer.toHexString(this.a));
        float[] fArr = this.b;
        if (fArr.length > 0) {
            sb.append(" float values:");
            for (float f : fArr) {
                sb.append(" " + f);
            }
        }
        int[] iArr = this.c;
        if (iArr != null && iArr.length > 0) {
            sb.append(" int values:");
            for (int i : iArr) {
                sb.append(" " + i);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
