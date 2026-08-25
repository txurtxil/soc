package defpackage;

import java.util.Iterator;
/* renamed from: lz  reason: default package */
/* loaded from: classes.dex */
public final class lz extends oz implements Iterator {
    public mz a;
    public mz b;
    public final /* synthetic */ int c;

    public lz(mz mzVar, mz mzVar2, int i) {
        this.c = i;
        this.a = mzVar2;
        this.b = mzVar;
    }

    @Override // defpackage.oz
    public final void a(mz mzVar) {
        mz mzVar2;
        mz mzVar3 = null;
        if (this.a == mzVar && mzVar == this.b) {
            this.b = null;
            this.a = null;
        }
        mz mzVar4 = this.a;
        if (mzVar4 == mzVar) {
            switch (this.c) {
                case 0:
                    mzVar2 = mzVar4.d;
                    break;
                default:
                    mzVar2 = mzVar4.c;
                    break;
            }
            this.a = mzVar2;
        }
        mz mzVar5 = this.b;
        if (mzVar5 == mzVar) {
            mz mzVar6 = this.a;
            if (mzVar5 != mzVar6 && mzVar6 != null) {
                mzVar3 = b(mzVar5);
            }
            this.b = mzVar3;
        }
    }

    public final mz b(mz mzVar) {
        switch (this.c) {
            case 0:
                return mzVar.c;
            default:
                return mzVar.d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        mz mzVar;
        mz mzVar2 = this.b;
        mz mzVar3 = this.a;
        if (mzVar2 != mzVar3 && mzVar3 != null) {
            mzVar = b(mzVar2);
        } else {
            mzVar = null;
        }
        this.b = mzVar;
        return mzVar2;
    }
}
