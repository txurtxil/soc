.class public final synthetic Landroidx/car/app/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/car/app/utils/b;->a:I

    iput-object p1, p0, Landroidx/car/app/utils/b;->b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iput p2, p0, Landroidx/car/app/utils/b;->c:F

    iput p3, p0, Landroidx/car/app/utils/b;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/car/app/utils/b;->a:I

    iget v1, p0, Landroidx/car/app/utils/b;->d:F

    iget v2, p0, Landroidx/car/app/utils/b;->c:F

    iget-object p0, p0, Landroidx/car/app/utils/b;->b:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v2, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->k(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, v2, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->j(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, v2, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->h(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
