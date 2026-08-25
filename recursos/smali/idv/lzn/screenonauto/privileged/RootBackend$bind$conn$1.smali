.class public final Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidv/lzn/screenonauto/privileged/RootBackend;->bind(Landroid/content/Context;Lch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onResult:Lch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;->$onResult:Lch;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;->$onResult:Lch;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-interface {p2}, Landroid/os/IBinder;->pingBinder()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, p1

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {p2}, Lidv/lzn/screenonauto/privileged/IPrivilegedService$Stub;->asInterface(Landroid/os/IBinder;)Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    invoke-interface {p0, p1}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lidv/lzn/screenonauto/privileged/RootBackend;->access$getConnection$p()Landroid/content/ServiceConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ne p1, p0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lidv/lzn/screenonauto/privileged/RootBackend;->access$setConnection$p(Landroid/content/ServiceConnection;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/RootBackend$bind$conn$1;->$onResult:Lch;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
