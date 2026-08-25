.class public final synthetic Lty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lyy;

.field public final synthetic c:Landroid/content/ComponentName;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lyy;Landroid/content/ComponentName;II)V
    .locals 0

    .line 1
    iput p4, p0, Lty;->a:I

    iput-object p1, p0, Lty;->b:Lyy;

    iput-object p2, p0, Lty;->c:Landroid/content/ComponentName;

    iput p3, p0, Lty;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lty;->a:I

    .line 2
    .line 3
    iget v1, p0, Lty;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Lty;->c:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object p0, p0, Lty;->b:Lyy;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p0, v0, v2}, Lyy;->j(ILandroid/content/ComponentName;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lyy;->h(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Lyy;->j(ILandroid/content/ComponentName;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
