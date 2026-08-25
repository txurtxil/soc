.class public abstract Lvn;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final g:Z


# instance fields
.field public a:Lcf;

.field public final b:Lc9;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lu6;

.field public final e:Ldb0;

.field public f:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MBServiceCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lvn;->g:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc9;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lvn;->b:Lc9;

    .line 12
    .line 13
    new-instance v2, Lkn;

    .line 14
    .line 15
    const/4 v6, -0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v4, "android.media.session.MediaController"

    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    move-object v3, p0

    .line 21
    invoke-direct/range {v2 .. v7}, Lkn;-><init>(Lvn;Ljava/lang/String;IILc9;)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p0, v3, Lvn;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance p0, Lu6;

    .line 32
    .line 33
    invoke-direct {p0}, Lj20;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p0, v3, Lvn;->d:Lu6;

    .line 37
    .line 38
    new-instance p0, Ldb0;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-direct {p0, v0}, Ldb0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Ldb0;->b:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p0, v3, Lvn;->e:Ldb0;

    .line 47
    .line 48
    return-void
.end method

.method public static a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    mul-int v1, p1, v0

    .line 24
    .line 25
    add-int v2, v1, p1

    .line 26
    .line 27
    if-ltz v0, :cond_4

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-lt p1, v0, :cond_4

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lt v1, p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-le v2, p1, :cond_3

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_3
    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_4
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 55
    .line 56
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object p0, p0, Lvn;->a:Lcf;

    .line 2
    .line 3
    iget-object v0, p0, Lcf;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lln;

    .line 6
    .line 7
    const-string v1, "root"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcf;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lvn;

    .line 15
    .line 16
    iget-object v0, v0, Lvn;->e:Ldb0;

    .line 17
    .line 18
    new-instance v1, Lc7;

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-direct {v1, v2, p0}, Lc7;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public abstract c(Ljava/lang/String;Lqn;)V
.end method

.method public final d(Ljava/lang/String;Lkn;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    new-instance v0, Lhn;

    .line 2
    .line 3
    move-object v4, p1

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lhn;-><init>(Lvn;Ljava/lang/String;Lkn;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lvn;->c(Ljava/lang/String;Lqn;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    iput p0, v0, Lqn;->c:I

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lvn;->c(Ljava/lang/String;Lqn;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-boolean p0, v0, Lqn;->b:Z

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    iget-object p1, v3, Lkn;->a:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p3, "onLoadChildren must call detach() or sendResult() before returning for package="

    .line 35
    .line 36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " id="

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lvn;->a:Lcf;

    .line 2
    .line 3
    iget-object p0, p0, Lcf;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lln;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lpn;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lon;-><init>(Lvn;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lvn;->a:Lcf;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lon;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lon;-><init>(Lvn;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lvn;->a:Lcf;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcf;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcf;-><init>(Lvn;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lvn;->a:Lcf;

    .line 36
    .line 37
    :goto_0
    iget-object p0, p0, Lvn;->a:Lcf;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcf;->b()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lvn;->e:Ldb0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ldb0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method
