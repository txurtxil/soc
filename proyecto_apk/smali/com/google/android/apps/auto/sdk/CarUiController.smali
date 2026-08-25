.class public Lcom/google/android/apps/auto/sdk/CarUiController;
.super Lcom/google/android/apps/auto/sdk/z;


# instance fields
.field private b:Lcom/google/android/apps/auto/sdk/StatusBarController;

.field private c:Lcom/google/android/apps/auto/sdk/DrawerController;

.field private d:Lcom/google/android/apps/auto/sdk/MenuController;

.field private e:Lcom/google/android/apps/auto/sdk/SearchController;

.field private f:I

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/reflect/Method;

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/reflect/Method;

.field private q:Ljava/lang/reflect/Method;

.field private r:Ljava/lang/reflect/Method;

.field private s:Ljava/lang/reflect/Method;

.field private t:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/aa;Lcom/google/android/gms/car/input/InputManager;Landroid/view/LayoutInflater$Factory;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/aa;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/aa;->a()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "com.google.android.gearhead.appdecor.CarUiEntry"

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/apps/auto/sdk/z;-><init>(Lcom/google/android/apps/auto/sdk/aa;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->l:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->f:I

    iget-object p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->o:Ljava/lang/reflect/Method;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.apps.auto.sdk.IStatusBarController"

    invoke-interface {p3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/google/android/apps/auto/sdk/s;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/apps/auto/sdk/s;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/apps/auto/sdk/t;

    invoke-direct {v2, p3}, Lcom/google/android/apps/auto/sdk/t;-><init>(Landroid/os/IBinder;)V

    :goto_0
    new-instance p3, Lcom/google/android/apps/auto/sdk/StatusBarController;

    invoke-direct {p3, v2}, Lcom/google/android/apps/auto/sdk/StatusBarController;-><init>(Lcom/google/android/apps/auto/sdk/s;)V

    iput-object p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->b:Lcom/google/android/apps/auto/sdk/StatusBarController;

    iget-object p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->q:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v2}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    if-nez p3, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const-string v2, "com.google.android.apps.auto.sdk.IMenuController"

    invoke-interface {p3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/google/android/apps/auto/sdk/m;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/android/apps/auto/sdk/m;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/apps/auto/sdk/n;

    invoke-direct {v2, p3}, Lcom/google/android/apps/auto/sdk/n;-><init>(Landroid/os/IBinder;)V

    :goto_1
    new-instance p3, Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/aa;->b()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, v2}, Lcom/google/android/apps/auto/sdk/MenuController;-><init>(Landroid/content/Context;Lcom/google/android/apps/auto/sdk/m;)V

    iput-object p3, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->d:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->p:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_4

    move-object p3, v1

    goto :goto_2

    :cond_4
    const-string p3, "com.google.android.apps.auto.sdk.IDrawerController"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_5

    instance-of v2, p3, Lcom/google/android/apps/auto/sdk/e;

    if-eqz v2, :cond_5

    check-cast p3, Lcom/google/android/apps/auto/sdk/e;

    goto :goto_2

    :cond_5
    new-instance p3, Lcom/google/android/apps/auto/sdk/f;

    invoke-direct {p3, p1}, Lcom/google/android/apps/auto/sdk/f;-><init>(Landroid/os/IBinder;)V

    :goto_2
    new-instance p1, Lcom/google/android/apps/auto/sdk/DrawerController;

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->d:Lcom/google/android/apps/auto/sdk/MenuController;

    invoke-direct {p1, p3, v2}, Lcom/google/android/apps/auto/sdk/DrawerController;-><init>(Lcom/google/android/apps/auto/sdk/e;Lcom/google/android/apps/auto/sdk/MenuController;)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->c:Lcom/google/android/apps/auto/sdk/DrawerController;

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->r:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_6

    move-object p3, v1

    goto :goto_3

    :cond_6
    const-string p3, "com.google.android.apps.auto.sdk.IImeController"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_7

    instance-of v2, p3, Lcom/google/android/apps/auto/sdk/i;

    if-eqz v2, :cond_7

    check-cast p3, Lcom/google/android/apps/auto/sdk/i;

    goto :goto_3

    :cond_7
    new-instance p3, Lcom/google/android/apps/auto/sdk/j;

    invoke-direct {p3, p1}, Lcom/google/android/apps/auto/sdk/j;-><init>(Landroid/os/IBinder;)V

    :goto_3
    new-instance p1, Lcom/google/android/apps/auto/sdk/u;

    invoke-direct {p1, p3, p2, p0}, Lcom/google/android/apps/auto/sdk/u;-><init>(Lcom/google/android/apps/auto/sdk/i;Lcom/google/android/gms/car/input/InputManager;Lcom/google/android/apps/auto/sdk/CarUiController;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->s:Ljava/lang/reflect/Method;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.apps.auto.sdk.ISearchController"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_9

    instance-of p3, p2, Lcom/google/android/apps/auto/sdk/q;

    if-eqz p3, :cond_9

    move-object v1, p2

    check-cast v1, Lcom/google/android/apps/auto/sdk/q;

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/google/android/apps/auto/sdk/r;

    invoke-direct {v1, p1}, Lcom/google/android/apps/auto/sdk/r;-><init>(Landroid/os/IBinder;)V

    :goto_4
    new-instance p1, Lcom/google/android/apps/auto/sdk/SearchController;

    invoke-direct {p1, v1}, Lcom/google/android/apps/auto/sdk/SearchController;-><init>(Lcom/google/android/apps/auto/sdk/q;)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->e:Lcom/google/android/apps/auto/sdk/SearchController;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->t:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->n:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->k:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->i:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->d:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    if-nez v0, :cond_0

    const-string p0, "CSL.MenuController"

    const-string p1, "Root MenuAdapter is null after day/night mode Activity recreate."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.google.android.apps.auto.sdk.MenuController.KEY_SUBMENU_PATH"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/apps/auto/sdk/MenuController$b;->a(Lcom/google/android/apps/auto/sdk/MenuController$b;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/MenuController;->a:Lcom/google/android/apps/auto/sdk/MenuController$b;

    iget-object p1, p1, Lcom/google/android/apps/auto/sdk/MenuController$b;->a:Lcom/google/android/apps/auto/sdk/MenuAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/MenuController;->a(Lcom/google/android/apps/auto/sdk/MenuAdapter;)V

    return-void
.end method

.method public final a([Ljava/lang/reflect/Method;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.CarUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_10

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "createInputConnection"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "getStatusBarController"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "onConfigurationChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "getSearchController"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "getAppLayout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "getContentContainerId"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "getImeController"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "getDrawerController"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_8
    const-string v6, "getMenuController"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_9
    const-string v6, "requestXRayScan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_a
    const-string v6, "onStop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_b
    const-string v6, "onRestoreInstanceState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_c
    const-string v6, "onStart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_d
    const-string v6, "onSaveInstanceState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_e
    const-string v6, "startCarActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    move v7, v2

    :goto_1
    packed-switch v7, :pswitch_data_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unmapped public method "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Annotations for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_f

    aget-object v7, v4, v6

    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :pswitch_0
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->t:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_1
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->o:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_2
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->k:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_3
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->s:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_4
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->m:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_5
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->l:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_6
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->r:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_7
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->p:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_8
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->q:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_9
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->h:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_a
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->i:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_b
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->g:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_c
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->j:Ljava/lang/reflect/Method;

    goto :goto_3

    :pswitch_d
    iput-object v4, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->n:Ljava/lang/reflect/Method;

    :cond_f
    :goto_3
    :pswitch_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cdd8abf -> :sswitch_e
        -0x58e5dda0 -> :sswitch_d
        -0x4faf663d -> :sswitch_c
        -0x46b61a73 -> :sswitch_b
        -0x3c607d7f -> :sswitch_a
        -0x160c3a22 -> :sswitch_9
        0x2b633751 -> :sswitch_8
        0x3037e6e3 -> :sswitch_7
        0x32cb9687 -> :sswitch_6
        0x3a9db939 -> :sswitch_5
        0x4bd8f5f5 -> :sswitch_4
        0x4ebe1ada -> :sswitch_3
        0x50e1c15d -> :sswitch_2
        0x6ef23607 -> :sswitch_1
        0x7ad57dac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->j:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->d:Lcom/google/android/apps/auto/sdk/MenuController;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/MenuController;->c:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.apps.auto.sdk.MenuController.KEY_SUBMENU_PATH"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->f:I

    return p0
.end method

.method public final d()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/auto/sdk/z;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getDrawerController()Lcom/google/android/apps/auto/sdk/DrawerController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->c:Lcom/google/android/apps/auto/sdk/DrawerController;

    return-object p0
.end method

.method public getMenuController()Lcom/google/android/apps/auto/sdk/MenuController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->d:Lcom/google/android/apps/auto/sdk/MenuController;

    return-object p0
.end method

.method public getSearchController()Lcom/google/android/apps/auto/sdk/SearchController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->e:Lcom/google/android/apps/auto/sdk/SearchController;

    return-object p0
.end method

.method public getStatusBarController()Lcom/google/android/apps/auto/sdk/StatusBarController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarUiController;->b:Lcom/google/android/apps/auto/sdk/StatusBarController;

    return-object p0
.end method
