.class final Lcom/google/android/apps/auto/sdk/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/car/input/InputManager;

.field private final b:Lcom/google/android/apps/auto/sdk/CarUiController;

.field private final c:Lcom/google/android/apps/auto/sdk/i;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/i;Lcom/google/android/gms/car/input/InputManager;Lcom/google/android/apps/auto/sdk/CarUiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/u;->c:Lcom/google/android/apps/auto/sdk/i;

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/u;->a:Lcom/google/android/gms/car/input/InputManager;

    iput-object p3, p0, Lcom/google/android/apps/auto/sdk/u;->b:Lcom/google/android/apps/auto/sdk/CarUiController;

    :try_start_0
    new-instance p2, Lcom/google/android/apps/auto/sdk/v;

    invoke-direct {p2, p0}, Lcom/google/android/apps/auto/sdk/v;-><init>(Lcom/google/android/apps/auto/sdk/u;)V

    invoke-interface {p1, p2}, Lcom/google/android/apps/auto/sdk/i;->a(Lcom/google/android/apps/auto/sdk/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CSL.ImeController"

    const-string p2, "Error setting ImeCallbacks"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/u;->a:Lcom/google/android/gms/car/input/InputManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/input/InputManager;->isInputActive()Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/u;->a:Lcom/google/android/gms/car/input/InputManager;

    new-instance v1, Lcom/google/android/apps/auto/sdk/w;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/u;->b:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-direct {v1, p0}, Lcom/google/android/apps/auto/sdk/w;-><init>(Lcom/google/android/apps/auto/sdk/CarUiController;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/car/input/InputManager;->startInput(Lcom/google/android/gms/car/input/CarEditable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/u;->a:Lcom/google/android/gms/car/input/InputManager;

    invoke-interface {p0}, Lcom/google/android/gms/car/input/InputManager;->stopInput()V

    return-void
.end method
