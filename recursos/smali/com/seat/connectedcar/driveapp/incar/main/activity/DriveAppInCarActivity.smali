.class public Lcom/seat/connectedcar/driveapp/incar/main/activity/DriveAppInCarActivity;
.super Lcom/google/android/apps/auto/sdk/CarActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lf8;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lf8;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f04001c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcb0;->onDestroy()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcb0;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;->onStop()V

    const/4 p0, 0x0

    throw p0
.end method
