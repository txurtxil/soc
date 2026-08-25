.class public Landroidx/car/app/model/OnContentRefreshDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;
    }
.end annotation

.annotation runtime Le9;
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/model/IOnContentRefreshListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    return-void
.end method

.method private constructor <init>(Lis;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;-><init>(Lis;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    .line 10
    .line 11
    return-void
.end method

.method public static create(Lis;)Lhs;
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/car/app/model/OnContentRefreshDelegateImpl;-><init>(Lis;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public sendContentRefreshRequested(Lks;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/car/app/utils/e;->a()Landroidx/car/app/IOnDoneCallback;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Landroidx/car/app/model/IOnContentRefreshListener;->onContentRefreshRequested(Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lc2;->k(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
