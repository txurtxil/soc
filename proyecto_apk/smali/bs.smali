.class public final Lbs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbs;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbs;->a:Lbs;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lch;Lch;Lrg;Lrg;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch;",
            "Lch;",
            "Lrg;",
            "Lrg;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p0, Las;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Las;-><init>(Lch;Lch;Lrg;Lrg;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
