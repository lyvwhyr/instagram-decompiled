.class Lcom/instagram/android/people/widget/PeopleTagsLayout$2;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/people/widget/PeopleTagView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$2;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/instagram/android/people/widget/PeopleTagView;Lcom/instagram/android/people/widget/PeopleTagView;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagView;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    check-cast p1, Lcom/instagram/android/people/widget/PeopleTagView;

    .end local p1
    check-cast p2, Lcom/instagram/android/people/widget/PeopleTagView;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout$2;->compare(Lcom/instagram/android/people/widget/PeopleTagView;Lcom/instagram/android/people/widget/PeopleTagView;)I

    move-result v0

    return v0
.end method
