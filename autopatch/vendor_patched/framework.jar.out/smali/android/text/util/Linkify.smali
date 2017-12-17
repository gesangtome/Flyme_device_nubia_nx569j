.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final DATE_TIME:I = 0x10

.field public static final ALL:I = 0xf

.field public static final DATE:I = 0x10

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field private static final NUBIA_GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9"

.field private static final NUBIA_TOP_LEVEL_DOMAIN_STR_FOR_WEB_URL:Ljava/lang/String; = "(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:[cC][aA][tT]|[cC][oO][mM]|[cC][oO][oO][pP]|[cC][aAcCdDfFgGhHiIkKlLmMnNoOrRuUvVxXyYzZ])|d[ejkmoz]|(?:[eE][dD][uU]|[eE][cCeEgGrRsStTuU])|f[ijkmor]|(?:[gG][oO][vV]|[gG][aAbBdDeEfFgGhHiIlLmMnNpPqQrRsStTuUwWyY])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:[oO][rR][gG]|[oO][mM])|(?:[pP][rR][oO]|[pP][aAeEfFgGhHkKlLmMnNrRsStTwWyY])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))"

.field private static final NUBIA_WEB_URL:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final TIME:I = 0x20

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 133
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 156
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 626
    const-string v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:[cC][aA][tT]|[cC][oO][mM]|[cC][oO][oO][pP]|[cC][aAcCdDfFgGhHiIkKlLmMnNoOrRuUvVxXyYzZ])|d[ejkmoz]|(?:[eE][dD][uU]|[eE][cCeEgGrRsStTuU])|f[ijkmor]|(?:[gG][oO][vV]|[gG][aAbBdDeEfFgGhHiIlLmMnNpPqQrRsStTuUwWyY])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:[oO][rR][gG]|[oO][mM])|(?:[pP][rR][oO]|[pP][aAeEfFgGhHkKlLmMnNrRsStTwWyY])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:([a-zA-Z0-9\u4e00-\u9fa5]*\\.(?:[mM][pP]3))){0,1}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/util/Linkify;->NUBIA_WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 313
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 318
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 334
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 355
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 359
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 225
    .local v9, "old":[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    .line 226
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 225
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 229
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_2

    .line 233
    sget-object v2, Landroid/util/Patterns;->DATE:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dateto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 237
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 238
    sget-object v2, Landroid/util/Patterns;->TIME:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "timeto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->flymeGatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)Z

    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_7
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/LinkSpec;

    .line 270
    .local v8, "link":Landroid/text/util/LinkSpec;
    iget-object v1, v8, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 273
    .end local v8    # "link":Landroid/text/util/LinkSpec;
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v9, 0x0

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "hasMatches":Z
    if-nez p2, :cond_2

    const-string v4, ""

    .line 395
    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 397
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 398
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 399
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 400
    .local v1, "end":I
    const/4 v0, 0x1

    .line 402
    .local v0, "allowed":Z
    if-eqz p3, :cond_1

    .line 403
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 406
    :cond_1
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 411
    const/4 v2, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "allowed":Z
    .end local v1    # "end":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 415
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 289
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 290
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 292
    goto :goto_0

    .line 297
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 299
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 303
    goto :goto_0
.end method

.method public static final addLinksNubia(Landroid/text/Spannable;I)Z
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    .line 652
    if-nez p1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v5

    .line 655
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 657
    .local v4, "old":[Landroid/text/style/URLSpan;
    array-length v6, v4

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 658
    aget-object v6, v4, v0

    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 657
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 661
    :cond_2
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->gatherLinksNubia(Landroid/text/Spannable;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 664
    .local v3, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 668
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/util/LinkSpec;

    .line 669
    .local v2, "link":Landroid/text/util/LinkSpec;
    iget-object v5, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v6, v2, Landroid/text/util/LinkSpec;->start:I

    iget v7, v2, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v6, v7, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 672
    .end local v2    # "link":Landroid/text/util/LinkSpec;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 419
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 422
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 459
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 461
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 463
    .local v0, "end":I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    :cond_1
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    .line 465
    .local v2, "spec":Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 468
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    .line 469
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    .line 471
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    .end local v0    # "end":I
    .end local v2    # "spec":Landroid/text/util/LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static gatherLinksNubia(Landroid/text/Spannable;I)Ljava/util/ArrayList;
    .locals 13
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 679
    sget-object v2, Landroid/util/Patterns;->DATE:Ljava/util/regex/Pattern;

    new-array v3, v12, [Ljava/lang/String;

    const-string v1, "dateto:"

    aput-object v1, v3, v11

    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 683
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 684
    sget-object v2, Landroid/util/Patterns;->TIME:Ljava/util/regex/Pattern;

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v1, "timeto:"

    aput-object v1, v3, v11

    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 688
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 689
    sget-object v7, Landroid/text/util/Linkify;->NUBIA_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v8, v11

    const-string v1, "https://"

    aput-object v1, v8, v12

    const/4 v1, 0x2

    const-string/jumbo v2, "rtsp://"

    aput-object v2, v8, v1

    sget-object v9, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v5, v0

    move-object v6, p0

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 694
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 695
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    aput-object v1, v3, v11

    move-object v1, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 699
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 700
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 703
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 704
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 706
    :cond_5
    return-object v0
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 508
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 511
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 541
    .end local v0    # "address":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 515
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_1
    new-instance v6, Landroid/text/util/LinkSpec;

    invoke-direct {v6}, Landroid/text/util/LinkSpec;-><init>()V

    .line 516
    .local v6, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 517
    .local v5, "length":I
    add-int v4, v7, v5

    .line 519
    .local v4, "end":I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/LinkSpec;->start:I

    .line 520
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/LinkSpec;->end:I

    .line 521
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 522
    add-int/2addr v1, v4

    .line 524
    const/4 v3, 0x0

    .line 527
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 532
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 533
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 535
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "length":I
    .end local v6    # "spec":Landroid/text/util/LinkSpec;
    .end local v7    # "start":I
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 528
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "encodedAddress":Ljava/lang/String;
    .restart local v4    # "end":I
    .restart local v5    # "length":I
    .restart local v6    # "spec":Landroid/text/util/LinkSpec;
    .restart local v7    # "start":I
    :catch_1
    move-exception v2

    .line 529
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 478
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 480
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 481
    .local v7, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    .line 482
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 483
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 484
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    .line 485
    iget-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Linkify;->getNumberCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    iget-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Linkify;->getNumberCount(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 486
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    .end local v7    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_1
    return-void
.end method

.method private static getNumberCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 494
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 496
    add-int/lit8 v1, v1, 0x1

    .line 493
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "c":C
    :cond_1
    return v1
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 426
    if-eqz p3, :cond_0

    .line 427
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    :cond_0
    const/4 v7, 0x0

    .line 432
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 433
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    const/4 v7, 0x1

    .line 438
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 447
    :cond_1
    if-nez v7, :cond_2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 451
    :cond_2
    return-object p0

    .line 432
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .line 566
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 568
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 569
    .local v4, "len":I
    const/4 v3, 0x0

    .line 571
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 572
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 573
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 574
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 576
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 577
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 578
    add-int/lit8 v5, v3, 0x1

    .line 585
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 586
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    add-int/lit8 v4, v4, -0x1

    .line 588
    goto :goto_0

    .line 579
    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 580
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 581
    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 582
    move v5, v3

    goto :goto_1

    .line 593
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 594
    goto :goto_0

    .line 595
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method

.method private static final flymeGatherLinks(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    sget-object v2, Landroid/util/MzPatterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "http://"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "https://"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "rtsp://"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method private static final flymeGatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method private static final flymeGatherLinksDateTime(Landroid/text/Spannable;ILjava/util/ArrayList;)V
    .locals 6
    .param p0, "sTextSpannable"    # Landroid/text/Spannable;
    .param p1, "sMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    sget-object v2, Landroid/util/DateTimeUrlHelper;->DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "datetime:"

    aput-object v0, v3, v1

    sget-object v4, Landroid/util/DateTimeUrlHelper;->sDateTimeMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/util/DateTimeUrlHelper;->sDateTimeTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p2

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->flymeGatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_0
    return-void
.end method

.method private static final flymeGatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Landroid/util/MzPatterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "tel:"

    aput-object v0, v3, v1

    new-instance v4, Landroid/text/util/FlymePhoneNumberMatchFilter;

    invoke-direct {v4}, Landroid/text/util/FlymePhoneNumberMatchFilter;-><init>()V

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return v6

    :cond_0
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    return v1
.end method

.method static getPhoneNumberMinimumDigits()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    return v0
.end method
