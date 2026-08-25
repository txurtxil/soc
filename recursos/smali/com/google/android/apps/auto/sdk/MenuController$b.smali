.class final Lcom/google/android/apps/auto/sdk/MenuController$b;
.super Lcom/google/android/apps/auto/sdk/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/MenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

.field private synthetic b:Lcom/google/android/apps/auto/sdk/MenuController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/MenuController;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/l;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    return-void
.end method

.method private final a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->onExit()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    iput-object p0, p1, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->onEnter()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuController$b;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/MenuController$b;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/MenuController$b;Lcom/google/android/apps/auto/sdk/MenuAdapter;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    return-void
.end method

.method private final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/MenuController;->b(Lcom/google/android/apps/auto/sdk/MenuController;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "Cannot have more than 2 levels of submenu"

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/auto/sdk/CarToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a(I)Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->onLoadSubmenu(I)Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a(ILcom/google/android/apps/auto/sdk/MenuAdapter;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onLoadSubmenu returns null for position "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a(I)Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v1, v1, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->getMenuItemCount()I

    move-result p0

    return p0
.end method

.method public final a(I)Lcom/google/android/apps/auto/sdk/MenuItem;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->getMenuItem(I)Lcom/google/android/apps/auto/sdk/MenuItem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/apps/auto/sdk/MenuItem;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onItemClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->b(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(I)Lcom/google/android/apps/auto/sdk/MenuItem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/auto/sdk/MenuItem;->a(Z)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->onMenuItemClicked(I)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 2
    const-string v0, "CSL.MenuController"

    const-string v1, "hasParent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a()Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a()Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onBackClicked parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.MenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a()Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->b:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v0, v0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/MenuAdapter;->a()Lcom/google/android/apps/auto/sdk/MenuAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    return-void

    :cond_0
    const-string p0, "onBackClicked when there is no parent submenu"

    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method
