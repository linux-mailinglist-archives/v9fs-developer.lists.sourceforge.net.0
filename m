Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E14C0650487
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 20:47:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6zdO-000716-3f;
	Sun, 18 Dec 2022 19:47:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p6zdC-00070q-5X
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yu3PGd7/R0vNpUqHyhroP64tzfAp/2f6p+c45XHWGyo=; b=Vu+zu0GcxiN/OZTU9VciBK4R6N
 svyaTnWnpa5/zybNzkHxw/AILiiSIETr4qvB/NToasHpUI5hG0N7GEYRiRv6Dd73LhxP6NgUf2Y2W
 ZhE+mT1xBaxGAJZkJqxxnwA8vPsczjKM/oURVqqGFgE4Ssx6Gt0oMnhN6o+N2/Yuypoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yu3PGd7/R0vNpUqHyhroP64tzfAp/2f6p+c45XHWGyo=; b=iVL9lxERAVwid6ecXnEeU1XqdJ
 L20s+7wStSasqT9ZC2QJLrX2DK6DsA4vAhIP695vdJDGeRIksn6Rl0HR0HaMPdTGhkmxwCqe5lxpR
 8oimBR1LrcjZfApqfaLIJtu91WPfiPZuJKEgB6wf4F3375XBGVJounBapoF5S/mV+uHA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6zcz-0001JF-10 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:47:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4EE4BC01E; Sun, 18 Dec 2022 20:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671392837; bh=Yu3PGd7/R0vNpUqHyhroP64tzfAp/2f6p+c45XHWGyo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sjkJqnkxzqA0kr0fL1xuo1sL/rP2NFZg4xG1hhlNkmCULZ0uPIuj4uU/OTDcvuqjj
 vQT9ceEYolAYoLdBOCsn9mcAptMqcZSLTokucGEtuHrnmmEJa6sd4t0Kkw8HUbsbzg
 O02maKONKpYCul+LZYbt2MLsWVE62fdUEkHAIvkl+3hsdh9G+ojWOtO4zP6OJ4WiZ+
 rhPs4zKX2XmwfD1J8HcGXbQFBLaXqf9xXghT3IAdgL4w/TBBXqULmwAfiCs/tx3/8P
 Tqb24sOmdZGpmDNgLjbzFdyGuOzjjkTX96nHB5HiGwpiGlJY3CBXjc9QmdcciXhI7m
 VVdoLIgRxj4sg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 32E47C009;
 Sun, 18 Dec 2022 20:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671392836; bh=Yu3PGd7/R0vNpUqHyhroP64tzfAp/2f6p+c45XHWGyo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SmgJqAMVCUcHsTFWdwG1Sv43aZ+Oncsdi0p+RYThslGjfadRWU3s7YHmQwmslCxjT
 zU5SagpmLAZhphkzI53IPBjp3iGl2wqtm2n/7mtg6vg10JM/wX642WFYVHQ2yX2qNn
 AOyXl0FtWckAG8J0tiWUEM39dSd9MjL3KFgWYscba5/iQJZAciEjUjgchUzyAYyJqv
 q2Q/GvJVYFxCfqx1XtvBe3COXmCOHZKCocO5XNRzNTMRTy+7xhbIYDh395WPl9ctv8
 t+/jThkywrAy0uD2366wstQNkjjZZjrA/0ti9Ms87HwOX0+4ovY/1bddZgLHmg34P2
 5Vzna0MrkOrmg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1ccad86e;
 Sun, 18 Dec 2022 19:46:58 +0000 (UTC)
Date: Mon, 19 Dec 2022 04:46:43 +0900
From: asmadeus@codewreck.org
To: ron minnich <rminnich@gmail.com>
Message-ID: <Y59uIwoECw0yHhf1@codewreck.org>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
 <4530979.Ltmge6kleC@silver>
 <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
 <51FD8D16-4070-4DCF-AEB5-11640A82762E@icloud.com>
 <CAP6exY+BF+1fjjUKX20vvbTZXiZ2gxUN3zc8+ZaHTY-aX6fRFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6exY+BF+1fjjUKX20vvbTZXiZ2gxUN3zc8+ZaHTY-aX6fRFQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ron minnich wrote on Sun, Dec 18, 2022 at 08:50:18AM -0800:
 > it's fine. tbh, I doubt the fact that you were fetching 31 vs 32 pages
 > mattered as much as the fact that you weren't fetching *4k at a t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p6zcz-0001JF-10
Subject: Re: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account
 for p9 header
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ron minnich wrote on Sun, Dec 18, 2022 at 08:50:18AM -0800:
> it's fine. tbh, I doubt the fact that you were fetching 31 vs 32 pages
> mattered as much as the fact that you weren't fetching *4k at a time* :-)

Yes, I think we can just blanket this as +4k and it wouldn't change
much; I've been using 1MB+4k for rdma in previous tests...

We still aren't doing things 4k at a time with this though, I'd suggest
rounding down the rsize > msize check in p9_client_read_once():

        if (!rsize || rsize > clnt->msize - P9_IOHDRSZ)
                rsize = clnt->msize - P9_IOHDRSZ;

to something that's better aligned; for some reason I thought we had
that already.  . . but thinking again the sizes are probably driven by
the cache and will be 4k multiples already?

> > -#define DEFAULT_MSIZE (128 * 1024)
> > +/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
> > + * room for write (16 extra) or read (11 extra) operands.
> > + */
> > +
> > +#define DEFAULT_MSIZE ((128 * 1024) + P9_HDRSZ + 16)

There's P9_IOHDRSZ for that ;)

But I guess with the comment it doesn't matter much either way.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
