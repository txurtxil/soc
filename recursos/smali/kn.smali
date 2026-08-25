.class public final Lkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Lc9;

.field public final e:Ljava/util/HashMap;

.field public f:Ljn;

.field public final synthetic g:Lvn;


# direct methods
.method public constructor <init>(Lvn;Ljava/lang/String;IILc9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkn;->g:Lvn;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lkn;->e:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p2, p0, Lkn;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput p3, p0, Lkn;->b:I

    .line 16
    .line 17
    iput p4, p0, Lkn;->c:I

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v0, 0x1c

    .line 30
    .line 31
    if-lt p1, v0, :cond_0

    .line 32
    .line 33
    invoke-static {p3, p4, p2}, Ly;->o(IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object p5, p0, Lkn;->d:Lc9;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string p0, "packageName should be nonempty"

    .line 40
    .line 41
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 47
    .line 48
    const-string p1, "package shouldn\'t be null"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkn;->g:Lvn;

    .line 2
    .line 3
    iget-object v0, v0, Lvn;->e:Ldb0;

    .line 4
    .line 5
    new-instance v1, Lc7;

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    invoke-direct {v1, v2, p0}, Lc7;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
