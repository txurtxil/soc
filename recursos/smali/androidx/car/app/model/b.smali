.class public final synthetic Landroidx/car/app/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Binder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;II)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/car/app/model/b;->a:I

    iput-object p1, p0, Landroidx/car/app/model/b;->c:Landroid/os/Binder;

    iput p2, p0, Landroidx/car/app/model/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/model/b;->a:I

    iget v1, p0, Landroidx/car/app/model/b;->b:I

    iget-object p0, p0, Landroidx/car/app/model/b;->c:Landroid/os/Binder;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;

    invoke-static {p0, v1}, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;->g(Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;

    invoke-static {p0, v1}, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;->g(Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
