.class public interface abstract Lcom/google/android/gms/car/CarNavigationStatusManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarNavigationStatusManager$CarNavigationStatusListener;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Lcom/google/android/gms/car/CarNavigationStatusManager$CarNavigationStatusListener;)V
.end method

.method public abstract sendNavigationStatus(I)Z
.end method

.method public abstract sendNavigationTurnDistanceEvent(IIII)Z
.end method

.method public abstract sendNavigationTurnEvent(ILjava/lang/String;II[BI)Z
.end method

.method public abstract unregisterListener()V
.end method
