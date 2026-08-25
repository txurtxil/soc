.class public final Lv00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Lko;


# direct methods
.method public constructor <init>(Lko;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv00;->a:Lko;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lic;

    .line 2
    .line 3
    iget-object p0, p0, Lv00;->a:Lko;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lic;-><init>(Lko;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
