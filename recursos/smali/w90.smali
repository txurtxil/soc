.class public abstract Lw90;
.super Ljava/lang/Object;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final r:Lv90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv90;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw90;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lw90;->r:Lv90;

    iput-object p3, p0, Lw90;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getConnectionCallback()Lv90;
    .locals 0

    iget-object p0, p0, Lw90;->r:Lv90;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw90;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lw90;->c:Landroid/os/Handler;

    return-object p0
.end method
