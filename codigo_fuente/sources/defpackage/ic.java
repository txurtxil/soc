package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: ic  reason: default package */
/* loaded from: classes.dex */
public final class ic implements Iterator {
    public int a = -1;
    public int b;
    public int c;
    public nj d;
    public final /* synthetic */ ko e;

    public ic(ko koVar) {
        this.e = koVar;
        int length = ((String) koVar.b).length();
        if (length >= 0) {
            length = length >= 0 ? 0 : length;
            this.b = length;
            this.c = length;
            return;
        }
        c2.h("Cannot coerce value to an empty range: maximum ", length, " is less than minimum 0.");
        throw null;
    }

    public final void a() {
        ko koVar = this.e;
        String str = (String) koVar.b;
        int i = this.c;
        int i2 = 0;
        if (i < 0) {
            this.a = 0;
            this.d = null;
            return;
        }
        if (i > str.length()) {
            this.d = new nj(this.b, str.length() - 1, 1);
            this.c = -1;
        } else {
            at atVar = (at) ((b2) koVar.c).c(str, Integer.valueOf(this.c));
            if (atVar == null) {
                this.d = new nj(this.b, str.length() - 1, 1);
                this.c = -1;
            } else {
                int intValue = ((Number) atVar.a).intValue();
                int intValue2 = ((Number) atVar.b).intValue();
                this.d = gn.I(this.b, intValue);
                int i3 = intValue + intValue2;
                this.b = i3;
                if (intValue2 == 0) {
                    i2 = 1;
                }
                this.c = i3 + i2;
            }
        }
        this.a = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a == -1) {
            a();
        }
        if (this.a == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.a == -1) {
            a();
        }
        if (this.a != 0) {
            nj njVar = this.d;
            njVar.getClass();
            this.d = null;
            this.a = -1;
            return njVar;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
