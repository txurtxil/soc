.class public Lcom/google/android/apps/auto/sdk/CarActivity;
.super Lya0;


# instance fields
.field private d:Lcom/google/android/apps/auto/sdk/CarUiController;

.field private e:Lcom/google/android/apps/auto/sdk/aa;

.field private f:Lcom/google/android/apps/auto/sdk/ac;

.field private g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcb0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Lbb0;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCarUiController()Lcom/google/android/apps/auto/sdk/CarUiController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    return-object p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    invoke-super {p0}, Lbb0;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFragmentManager()Lk90;
    .locals 0

    invoke-super {p0}, Lcb0;->getSupportFragmentManager()Lk90;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcb0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSL.CarActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/apps/auto/sdk/CarUiController;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcb0;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/google/android/apps/auto/sdk/aa;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/apps/auto/sdk/aa;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->e:Lcom/google/android/apps/auto/sdk/aa;

    new-instance p1, Lcom/google/android/apps/auto/sdk/ac;

    invoke-direct {p1}, Lcom/google/android/apps/auto/sdk/ac;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->f:Lcom/google/android/apps/auto/sdk/ac;

    new-instance p1, Lcom/google/android/apps/auto/sdk/CarUiController;

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->e:Lcom/google/android/apps/auto/sdk/aa;

    invoke-virtual {p0}, Lbb0;->b()Lcom/google/android/gms/car/input/InputManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->f:Lcom/google/android/apps/auto/sdk/ac;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/apps/auto/sdk/CarUiController;-><init>(Lcom/google/android/apps/auto/sdk/aa;Lcom/google/android/gms/car/input/InputManager;Landroid/view/LayoutInflater$Factory;)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->d()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lbb0;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->g:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->getStatusBarController()Lcom/google/android/apps/auto/sdk/StatusBarController;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lya0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/StatusBarController;->c()V

    :cond_0
    invoke-virtual {p0}, Lya0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/StatusBarController;->b()V

    :cond_1
    invoke-virtual {p0}, Lya0;->f()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/StatusBarController;->a()V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "CSL.CarActivity"

    const-string v0, "Unable to get car info"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->f:Lcom/google/android/apps/auto/sdk/ac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/auto/sdk/ac;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcb0;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->e:Lcom/google/android/apps/auto/sdk/aa;

    invoke-virtual {v1}, Lcom/google/android/apps/auto/sdk/aa;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Lbb0;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcb0;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcb0;->onStart()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/CarUiController;->a()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcb0;->onStop()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/CarUiController;->b()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public startCarActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/CarActivity;->d:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->a(Landroid/content/Intent;)V

    return-void
.end method
