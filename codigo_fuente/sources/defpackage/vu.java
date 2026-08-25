package defpackage;

import idv.lzn.screenonauto.privileged.PrivilegedManager;
/* renamed from: vu  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class vu implements ch {
    public final /* synthetic */ int a;

    public /* synthetic */ vu(int i) {
        this.a = i;
    }

    @Override // defpackage.ch
    public final Object b(Object obj) {
        f60 connect$lambda$8;
        f60 ensureBackendHooks$lambda$5;
        Boolean bool = (Boolean) obj;
        switch (this.a) {
            case 0:
                connect$lambda$8 = PrivilegedManager.connect$lambda$8(bool.booleanValue());
                return connect$lambda$8;
            default:
                ensureBackendHooks$lambda$5 = PrivilegedManager.ensureBackendHooks$lambda$5(bool.booleanValue());
                return ensureBackendHooks$lambda$5;
        }
    }
}
