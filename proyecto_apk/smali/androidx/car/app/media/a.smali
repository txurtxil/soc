.class public final Landroidx/car/app/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm;


# direct methods
.method public static a(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)Landroidx/car/app/media/a;
    .locals 0

    .line 1
    new-instance p0, Landroidx/car/app/media/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/car/app/media/MediaPlaybackManager$1;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Landroidx/car/app/media/MediaPlaybackManager$1;-><init>(Landroidx/lifecycle/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
