.class public Lcom/google/android/apps/auto/sdk/MenuController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/MenuController$a;,
        Lcom/google/android/apps/auto/sdk/MenuController$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/apps/auto/sdk/MenuController$b;

.field b:Lcom/google/android/apps/auto/sdk/MenuAdapter;

.field c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/apps/auto/sdk/m;

.field private g:Lcom/google/android/apps/auto/sdk/MenuAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/auto/sdk/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    new-instance p1, Lcom/google/android/apps/auto/sdk/MenuController$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/apps/auto/sdk/MenuController$a;-><init>(B)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->b:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuController;)Lcom/google/android/apps/auto/sdk/m;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/apps/auto/sdk/MenuController;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    const-string v0, "CSL.MenuController"

    const-string v1, "onDrawerOpening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->g:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-static {v0, p0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuController$b;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 3

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "notifyDataSetChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/auto/sdk/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/auto/sdk/x;-><init>(Lcom/google/android/apps/auto/sdk/MenuController;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/apps/auto/sdk/MenuAdapter;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "notifyItemChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayPosition: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/auto/sdk/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/auto/sdk/y;-><init>(Lcom/google/android/apps/auto/sdk/MenuController;Lcom/google/android/apps/auto/sdk/MenuAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/m;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CSL.MenuController"

    const-string v1, "Error showing menu button"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/m;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CSL.MenuController"

    const-string v1, "Error showing menu button"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public hideMenuButton()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/m;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CSL.MenuController"

    const-string v1, "Error hide menu button"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setRootMenuAdapter(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setRootMenuAdapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->b:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->g:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/apps/auto/sdk/MenuController$b;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->b:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-direct {p1, p0, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;-><init>(Lcom/google/android/apps/auto/sdk/MenuController;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    invoke-interface {p0, p1}, Lcom/google/android/apps/auto/sdk/m;->a(Lcom/google/android/apps/auto/sdk/k;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setting menu callbacks"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public showMenuButton()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->f:Lcom/google/android/apps/auto/sdk/m;

    invoke-interface {p0}, Lcom/google/android/apps/auto/sdk/m;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CSL.MenuController"

    const-string v1, "Error showing menu button"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
