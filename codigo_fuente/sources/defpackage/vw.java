package defpackage;
/* renamed from: vw  reason: default package */
/* loaded from: classes.dex */
public final class vw {
    public int a;
    public int b;
    public int c;
    public int d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public long l;
    public int m;

    public final void a(int i) {
        if ((this.c & i) != 0) {
            return;
        }
        String binaryString = Integer.toBinaryString(i);
        String binaryString2 = Integer.toBinaryString(this.c);
        throw new IllegalStateException("Layout state should be one of " + binaryString + " but it is " + binaryString2);
    }

    public final int b() {
        if (this.f) {
            return this.a - this.b;
        }
        return this.d;
    }

    public final String toString() {
        return "State{mTargetPosition=-1, mData=null, mItemCount=" + this.d + ", mIsMeasuring=" + this.h + ", mPreviousLayoutItemCount=" + this.a + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.b + ", mStructureChanged=" + this.e + ", mInPreLayout=" + this.f + ", mRunSimpleAnimations=" + this.i + ", mRunPredictiveAnimations=" + this.j + '}';
    }
}
