.class public final synthetic Landroidx/car/app/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

.field public final synthetic c:Lx7;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/car/app/utils/a;->a:I

    iput-object p1, p0, Landroidx/car/app/utils/a;->b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iput-object p2, p0, Landroidx/car/app/utils/a;->c:Lx7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/utils/a;->a:I

    iget-object v1, p0, Landroidx/car/app/utils/a;->c:Lx7;

    iget-object p0, p0, Landroidx/car/app/utils/a;->b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->m(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->i(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;Lx7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
