.class public Lcom/google/android/apps/auto/sdk/DrawerController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/DrawerController$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/apps/auto/sdk/e;

.field private b:Lcom/google/android/apps/auto/sdk/MenuController;

.field private c:Lcom/google/android/apps/auto/sdk/DrawerCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/e;Lcom/google/android/apps/auto/sdk/MenuController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    :try_start_0
    new-instance p2, Lcom/google/android/apps/auto/sdk/DrawerController$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/apps/auto/sdk/DrawerController$a;-><init>(Lcom/google/android/apps/auto/sdk/DrawerController;B)V

    invoke-interface {p1, p2}, Lcom/google/android/apps/auto/sdk/e;->a(Lcom/google/android/apps/auto/sdk/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CSL.DrawerController"

    const-string p2, "Error setting DrawerCallbacks"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/DrawerCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->c:Lcom/google/android/apps/auto/sdk/DrawerCallback;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/MenuController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    return-object p0
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    const-string v0, "closeDrawer"

    const-string v1, "CSL.DrawerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/e;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error closing title"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public isDrawerOpen()Z
    .locals 2

    const-string v0, "isDrawerOpen"

    const-string v1, "CSL.DrawerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/e;->a()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Error querying drawer visibility"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isDrawerVisible()Z
    .locals 2

    const-string v0, "isDrawerVisible"

    const-string v1, "CSL.DrawerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/e;->b()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Error querying drawer visibility state"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public openDrawer()V
    .locals 2

    const-string v0, "openDrawer"

    const-string v1, "CSL.DrawerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/e;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error opening drawer"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setDrawerCallback(Lcom/google/android/apps/auto/sdk/DrawerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->c:Lcom/google/android/apps/auto/sdk/DrawerCallback;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "setScrimColor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.DrawerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController;->a:Lcom/google/android/apps/auto/sdk/e;

    invoke-interface {p0, p1}, Lcom/google/android/apps/auto/sdk/e;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setting scrim color"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
