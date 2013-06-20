.class public Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;
.super Ljava/lang/Object;
.source "LocationRowAdapter.java"


# instance fields
.field private address:Landroid/widget/TextView;

.field gridSwitchButton:Landroid/widget/Button;

.field listSwitchButton:Landroid/widget/Button;

.field private location:Landroid/widget/TextView;

.field private map:Lcom/instagram/android/mediacache/IgImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Lcom/instagram/android/mediacache/IgImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->map:Lcom/instagram/android/mediacache/IgImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->location:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->location:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->address:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;->address:Landroid/widget/TextView;

    return-object p1
.end method
