.class final Lcom/google/android/apps/auto/sdk/service/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/car/CarNavigationStatusManager$CarNavigationStatusListener;


# instance fields
.field a:Lwa0;

.field b:Lva0;

.field c:Lcom/google/android/apps/auto/sdk/service/a/b/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/service/a/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/b/b;->c:Lcom/google/android/apps/auto/sdk/service/a/b/a;

    return-void
.end method


# virtual methods
.method public final onStart(IIIII)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Lva0;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    move v2, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-direct/range {v1 .. v6}, Lva0;-><init>(IIIII)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/apps/auto/sdk/service/a/b/b;->b:Lva0;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, p1

    .line 18
    new-instance p1, Lva0;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    move v3, v2

    .line 25
    move-object v2, p1

    .line 26
    invoke-direct/range {v2 .. v7}, Lva0;-><init>(IIIII)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/android/apps/auto/sdk/service/a/b/b;->b:Lva0;

    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method
