.class public final synthetic Landroidx/car/app/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/utils/d;->a:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iput p2, p0, Landroidx/car/app/utils/d;->b:F

    iput p3, p0, Landroidx/car/app/utils/d;->c:F

    iput p4, p0, Landroidx/car/app/utils/d;->d:F

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/car/app/utils/d;->c:F

    iget v1, p0, Landroidx/car/app/utils/d;->d:F

    iget-object v2, p0, Landroidx/car/app/utils/d;->a:Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    iget p0, p0, Landroidx/car/app/utils/d;->b:F

    invoke-static {v2, p0, v0, v1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;->l(Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
