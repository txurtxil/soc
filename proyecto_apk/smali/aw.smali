.class public abstract Law;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lay;

.field public final c:Landroid/os/Handler;

.field public d:Lu90;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lay;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lay;->g:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lay;->p:Landroid/os/Bundle;

    .line 14
    .line 15
    iput-object v1, v0, Lay;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v1, Lc7;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lc7;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Law;->b:Lay;

    .line 25
    .line 26
    iput-object p1, p0, Law;->a:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Law;->c:Landroid/os/Handler;

    .line 29
    .line 30
    return-void
.end method
