package defpackage;
/* renamed from: on  reason: default package */
/* loaded from: classes.dex */
public class on extends cf {
    public final /* synthetic */ vn g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public on(vn vnVar) {
        super(vnVar);
        this.g = vnVar;
    }

    @Override // defpackage.cf
    public final void b() {
        nn nnVar = new nn(this, this.g);
        this.c = nnVar;
        nnVar.onCreate();
    }
}
