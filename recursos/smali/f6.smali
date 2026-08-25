.class public final synthetic Lf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic a:Landroidx/car/app/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6;->a:Landroidx/car/app/b;

    return-void
.end method


# virtual methods
.method public final onFlushComplete(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object p0, p0, Lf6;->a:Landroidx/car/app/b;

    .line 21
    iget-object p0, p0, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    new-instance v0, Lb2;

    invoke-direct {v0, p1}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 22
    new-instance p1, Lbi;

    const-string v1, "sendLocation"

    invoke-direct {p1, p0, v1, v0}, Lbi;-><init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V

    invoke-static {v1, p1}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    return-void
.end method

.method public final onLocationChanged(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/location/Location;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lf6;->onLocationChanged(Landroid/location/Location;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
