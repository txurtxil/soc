.class public interface abstract Lcom/google/android/gms/car/CarMessageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarMessageManager$CarMessageListener;
    }
.end annotation


# virtual methods
.method public abstract acquireCategory(I)Z
.end method

.method public abstract getLastIntegerMessage(II)Ljava/lang/Integer;
.end method

.method public abstract registerMessageListener(Lcom/google/android/gms/car/CarMessageManager$CarMessageListener;)V
.end method

.method public abstract releaseAllCategories()V
.end method

.method public abstract releaseCategory(I)V
.end method

.method public abstract sendIntegerMessage(III)V
.end method

.method public abstract unregisterMessageListener()V
.end method
