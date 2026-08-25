.class public final synthetic Landroidx/car/app/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Binder;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/car/app/model/c;->a:I

    iput-object p1, p0, Landroidx/car/app/model/c;->b:Landroid/os/Binder;

    iput-object p2, p0, Landroidx/car/app/model/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/model/c;->a:I

    iget-object v1, p0, Landroidx/car/app/model/c;->c:Ljava/lang/String;

    iget-object p0, p0, Landroidx/car/app/model/c;->b:Landroid/os/Binder;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;

    invoke-static {p0, v1}, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;->g(Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

    invoke-static {p0, v1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->g(Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

    invoke-static {p0, v1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->h(Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
