.class public interface abstract Lcom/google/android/gms/car/CarActivityHost;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarActivityHost$HostedCarActivity;
    }
.end annotation


# virtual methods
.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract finish()V
.end method

.method public abstract getCarActivityService()Ljava/lang/Object;
.end method

.method public abstract getCarManager(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getInputManager()Lcom/google/android/gms/car/input/InputManager;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getNonConfigurationInstance()Ljava/lang/Object;
.end method

.method public abstract getWindow()Landroid/view/Window;
.end method

.method public abstract hasWindowFocus()Z
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setIgnoreConfigChanges(I)V
.end method

.method public abstract setIntent(Landroid/content/Intent;)V
.end method

.method public abstract startCarProjectionActivity(Landroid/content/Intent;)V
.end method
