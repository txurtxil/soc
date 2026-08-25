package defpackage;

import java.util.Iterator;
/* renamed from: v00  reason: default package */
/* loaded from: classes.dex */
public final class v00 implements Iterable {
    public final /* synthetic */ ko a;

    public v00(ko koVar) {
        this.a = koVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ic(this.a);
    }
}
