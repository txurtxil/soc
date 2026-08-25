.class final Lcom/google/android/apps/auto/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

.field private synthetic b:I

.field private synthetic c:Lcom/google/android/apps/auto/sdk/MenuController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/MenuController;Lcom/google/android/apps/auto/sdk/MenuAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/y;->c:Lcom/google/android/apps/auto/sdk/MenuController;

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/y;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    iput p3, p0, Lcom/google/android/apps/auto/sdk/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/y;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/y;->c:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v2, v1, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    iget-object v2, v2, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/apps/auto/sdk/MenuController;->a(Lcom/google/android/apps/auto/sdk/MenuController;)Lcom/google/android/apps/auto/sdk/m;

    move-result-object v0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/y;->b:I

    invoke-interface {v0, p0}, Lcom/google/android/apps/auto/sdk/m;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CSL.MenuController"

    const-string v1, "Error notifying item changed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
