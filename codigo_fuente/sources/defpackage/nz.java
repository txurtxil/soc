package defpackage;

import java.util.Iterator;
/* renamed from: nz  reason: default package */
/* loaded from: classes.dex */
public final class nz extends oz implements Iterator {
    public mz a;
    public boolean b = true;
    public final /* synthetic */ pz c;

    public nz(pz pzVar) {
        this.c = pzVar;
    }

    @Override // defpackage.oz
    public final void a(mz mzVar) {
        boolean z;
        mz mzVar2 = this.a;
        if (mzVar == mzVar2) {
            mz mzVar3 = mzVar2.d;
            this.a = mzVar3;
            if (mzVar3 == null) {
                z = true;
            } else {
                z = false;
            }
            this.b = z;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            if (this.c.a != null) {
                return true;
            }
            return false;
        }
        mz mzVar = this.a;
        if (mzVar != null && mzVar.c != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        mz mzVar;
        if (this.b) {
            this.b = false;
            this.a = this.c.a;
        } else {
            mz mzVar2 = this.a;
            if (mzVar2 != null) {
                mzVar = mzVar2.c;
            } else {
                mzVar = null;
            }
            this.a = mzVar;
        }
        return this.a;
    }
}
