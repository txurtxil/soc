.class public Lon;
.super Lcf;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lvn;


# direct methods
.method public constructor <init>(Lvn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lon;->g:Lvn;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcf;-><init>(Lvn;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Lnn;

    .line 2
    .line 3
    iget-object v1, p0, Lon;->g:Lvn;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lnn;-><init>(Lon;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcf;->c:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
