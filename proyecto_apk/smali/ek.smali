.class public final synthetic Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:Lfk;

.field public final synthetic b:Lidv/lzn/screenonauto/ShortcutSlotPreference;


# direct methods
.method public synthetic constructor <init>(Lfk;Lidv/lzn/screenonauto/ShortcutSlotPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek;->a:Lfk;

    iput-object p2, p0, Lek;->b:Lidv/lzn/screenonauto/ShortcutSlotPreference;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lek;->a:Lfk;

    .line 4
    .line 5
    invoke-virtual {v0}, Lvf;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lek;->b:Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lf60;->a:Lf60;

    .line 17
    .line 18
    return-object p0
.end method
