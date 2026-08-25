.class public final synthetic Landroidx/car/app/serialization/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/serialization/a;->a:Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;

    iput p2, p0, Landroidx/car/app/serialization/a;->b:I

    iput p3, p0, Landroidx/car/app/serialization/a;->c:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/serialization/a;->b:I

    iget v1, p0, Landroidx/car/app/serialization/a;->c:I

    iget-object p0, p0, Landroidx/car/app/serialization/a;->a:Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;

    invoke-static {p0, v0, v1}, Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;->g(Landroidx/car/app/serialization/ListDelegateImpl$RemoteListStub;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
