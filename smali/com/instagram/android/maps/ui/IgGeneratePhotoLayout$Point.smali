.class public Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$Point;
.super Ljava/lang/Object;
.source "IgGeneratePhotoLayout.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

.field topPhoto:Z

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;IIZ)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "topPhoto"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$Point;->this$0:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p2, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$Point;->x:I

    .line 197
    iput p3, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$Point;->y:I

    .line 198
    iput-boolean p4, p0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$Point;->topPhoto:Z

    .line 199
    return-void
.end method
