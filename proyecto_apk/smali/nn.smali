.class public final Lnn;
.super Lln;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lon;


# direct methods
.method public constructor <init>(Lon;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnn;->b:Lon;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lln;-><init>(Lcf;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lko;->r(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnn;->b:Lon;

    .line 5
    .line 6
    iget-object v0, p0, Lon;->g:Lvn;

    .line 7
    .line 8
    new-instance v1, Lc9;

    .line 9
    .line 10
    const/16 v2, 0x13

    .line 11
    .line 12
    invoke-direct {v1, v2, p2}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lmn;

    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v1, p3}, Lmn;-><init>(Lon;Ljava/lang/String;Lc9;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    iput p0, p2, Lqn;->c:I

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lvn;->c(Ljava/lang/String;Lqn;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
