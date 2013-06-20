.class public Landroid/support/v4/app/am;
.super Landroid/support/v4/app/av;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Landroid/support/v4/app/av;-><init>()V

    .line 616
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/support/v4/app/av;-><init>()V

    .line 619
    invoke-virtual {p0, p1}, Landroid/support/v4/app/am;->a(Landroid/support/v4/app/ao;)V

    .line 620
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/am;
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Landroid/support/v4/app/am;->a:Landroid/graphics/Bitmap;

    .line 645
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am;
    .locals 1
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/v4/app/am;->d:Ljava/lang/CharSequence;

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/am;->e:Z

    .line 637
    return-object p0
.end method
