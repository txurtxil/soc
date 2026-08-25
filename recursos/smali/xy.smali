.class public final Lxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljy;

.field public final b:Landroid/util/ArraySet;

.field public c:Landroid/content/Intent;

.field public d:Landroid/os/IBinder;

.field public e:Z


# direct methods
.method public constructor <init>(Ljy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lxy;->b:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lxy;->a:Ljy;

    .line 12
    .line 13
    return-void
.end method
