.class public abstract Lbb0;
.super Landroid/content/ContextWrapper;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;
.implements Lcom/google/android/gms/car/CarActivityHost$HostedCarActivity;


# instance fields
.field private a:Lcom/google/android/gms/car/CarActivityHost;

.field private b:Z


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityHost;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbb0;->b:Z

    return-void
.end method

.method public attach(Lcom/google/android/gms/car/CarActivityHost;)V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Context DPI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    return-void
.end method

.method public final b()Lcom/google/android/gms/car/input/InputManager;
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityHost;->getInputManager()Lcom/google/android/gms/car/input/InputManager;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityHost;->isFinishing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityHost;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityHost;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityHost;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityHost;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbb0;->b:Z

    invoke-virtual {p0}, Lbb0;->a()V

    iget-boolean p0, p0, Lbb0;->b:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityHost;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityHost;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lbb0;->a:Lcom/google/android/gms/car/CarActivityHost;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityHost;->setContentView(Landroid/view/View;)V

    return-void
.end method
