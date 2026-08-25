package androidx.car.app.model;

import androidx.car.app.model.SearchCallbackDelegateImpl;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ SearchCallbackDelegateImpl.SearchCallbackStub b;
    public final /* synthetic */ String c;

    public /* synthetic */ f(SearchCallbackDelegateImpl.SearchCallbackStub searchCallbackStub, String str, int i) {
        this.a = i;
        this.b = searchCallbackStub;
        this.c = str;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        String str = this.c;
        SearchCallbackDelegateImpl.SearchCallbackStub searchCallbackStub = this.b;
        switch (i) {
            case 0:
                return SearchCallbackDelegateImpl.SearchCallbackStub.h(searchCallbackStub, str);
            default:
                return SearchCallbackDelegateImpl.SearchCallbackStub.g(searchCallbackStub, str);
        }
    }
}
