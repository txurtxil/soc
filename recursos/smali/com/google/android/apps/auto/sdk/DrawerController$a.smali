.class final Lcom/google/android/apps/auto/sdk/DrawerController$a;
.super Lcom/google/android/apps/auto/sdk/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/DrawerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/DrawerController;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/auto/sdk/DrawerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/auto/sdk/DrawerController;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/DrawerController$a;-><init>(Lcom/google/android/apps/auto/sdk/DrawerController;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/DrawerController;->a(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/DrawerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/DrawerController;->a(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/DrawerCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/DrawerCallback;->onDrawerOpened()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/DrawerController;->b(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/MenuController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/MenuController;->a()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/DrawerController;->b(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/MenuController;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    const-string v2, "onDrawerClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    iget-object v1, v0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/MenuController;->b:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-static {v1, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuController$b;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {v0}, Lcom/google/android/apps/auto/sdk/DrawerController;->a(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/DrawerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/DrawerController$a;->a:Lcom/google/android/apps/auto/sdk/DrawerController;

    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/DrawerController;->a(Lcom/google/android/apps/auto/sdk/DrawerController;)Lcom/google/android/apps/auto/sdk/DrawerCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/DrawerCallback;->onDrawerClosed()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
