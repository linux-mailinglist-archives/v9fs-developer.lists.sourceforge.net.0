Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ABB68C8DF
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 22:42:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP9Fy-00023U-4V;
	Mon, 06 Feb 2023 21:42:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pP9Fv-00023I-OM
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j5ebleK+ZBbQU54WkW2EioiEoqVKceozsg5iO9IxCZY=; b=OScIt9D+oaZho8NzOqHrBsSL91
 ZYzcjFGS6RmNw/3ePQSH4TeR5kX6ElOUfEJhgS3H7eTFcAKI14hxYJjKpRmZ+VrTt5e09tdgYX1lp
 vkP7gD92CI9XTh3QmMCIIL+mdXkRddf6Pxm8H/8dnEfEwE+nYMtBL6P9aabk638S9X0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j5ebleK+ZBbQU54WkW2EioiEoqVKceozsg5iO9IxCZY=; b=JF4GUbzjeaQ1aBTbt6mHQU/42h
 v3rELR24UkmouhKL8ejt86jr6ZTiExVdamgc1dbtO/ta2caO1zZURi1euGxOEyPfGzLPQQt52shjB
 MCgQtFu2/trwvjeNhpFamSQvvXd9dqaHY8tGmN0mRvGltk5zlga8A8WKPYVrOYD5/gaI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP9Ft-00CvFY-4G for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:42:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 375CBC01D; Mon,  6 Feb 2023 22:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1675719764; bh=j5ebleK+ZBbQU54WkW2EioiEoqVKceozsg5iO9IxCZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C7rmuGLbwPvm0RSZuUPL46400QNy/vNdoBM6GpqXqlsqRh3pU7xhnXRnIJwjp4nO6
 ViesfFHOW7dChh//RdY5XFPqZr21fA8ZqEla7jQiFclq5iNnkB23eAYSE1qds5qYDJ
 twoKRPtsvL/KZhUiPyQQczPYD+IO5ux9MqA5W9J0Gw4J0OXJqU2N6tWh9X3nqFp3e0
 l/dqN2ihMXxiRPMQ3xmC6n5+ivWJbzlHqQTsmzH8i4yC0CHotY7HPz9QH3Z3hf9xPy
 AwJq22f74QAdKXu1cK1kpMFV9/cut0xc7kdgVVKkojF8U+fp6kU60pKAgPOfd3UOod
 10zY2h+YKbyWw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 69621C009;
 Mon,  6 Feb 2023 22:42:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1675719763; bh=j5ebleK+ZBbQU54WkW2EioiEoqVKceozsg5iO9IxCZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RMww8lbj57mCJsg0KRriZtG9v+9WAMuy7avDlylTeximxd/2oW/duxULe72bIk24o
 gtibcCMPVUftqwZGH8c/ktdcpMGp10je87cIgMsrGiBco6xfTiSXKMnmThyAK9+vfr
 vH7EFlOGPuHUG8E6qaAVQD6Dg45n/R5ClG6Cuun6O59YGHsaWi+mDKKXqT6ZIIbVBT
 Q40PG8TQqNleV/SouegAfAz1f+j+oFkiKAtCW/AUzOK/T3apNambVlHW9gh3LRVxxN
 /f2gLjLEJtLTCkrXLzkRI7ilMVd/Z5y/xyte7KrbUjYsKdDQTZz6FXaYDHMkXB8PuK
 7uNywywCjY82A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1adebe52;
 Mon, 6 Feb 2023 21:42:17 +0000 (UTC)
Date: Tue, 7 Feb 2023 06:42:02 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <Y+F0KrAmOuoJcVt/@codewreck.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
 <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jens Axboe wrote on Mon, Feb 06, 2023 at 01:19:24PM -0700:
 > > I agree with your assessment that we can't use task_work_run(), I assume
 > > it's also quite bad to just clear the flag? > > I'm not fami [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pP9Ft-00CvFY-4G
Subject: Re: [V9fs-developer] [PATCH v2] 9p/client: don't assume
 signal_pending() clears on recalc_sigpending()
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
Cc: netdev <netdev@vger.kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Pengfei Xu <pengfei.xu@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jens Axboe wrote on Mon, Feb 06, 2023 at 01:19:24PM -0700:
> > I agree with your assessment that we can't use task_work_run(), I assume
> > it's also quite bad to just clear the flag?
> > I'm not familiar with these task at all, in which case do they happen?
> > Would you be able to share an easy reproducer so that I/someone can try
> > on various transports?
> 
> You can't just clear the flag without also running the task_work. Hence
> it either needs to be done right there, or leave it pending and let the
> exit to userspace take care of it.

Sorry I didn't develop that idea; the signal path resets the pending
signal when we're done, I assumed we could also reset the TWA_SIGNAL
flag when we're done flushing. That might take a while though, so it's
far from optimal.

> > If it's "rare enough" I'd say sacrificing the connection might make more
> > sense than a busy loop, but if it's becoming common I think we'll need
> > to spend some more time thinking about it...
> > It might be less effort to dig out my async flush commits if this become
> > too complicated, but I wish I could say I have time for it...
> 
> It can be a number of different things - eg fput() will do it.

Hm, schedule_delayed_work on the last fput, ok.
I was wondering what it had to do with the current 9p thread, but since
it's not scheduled on a particular cpu it can pick another cpu to wake
up, that makes sense -- although conceptually it feels rather bad to
interrupt a remote IO because of a local task that can be done later;
e.g. between having the fput wait a bit, or cancel a slow operation like
a 1MB write, I'd rather make the fput wait.
Do you know why that signal/interrupt is needed in the first place?

> The particular case that I came across was io_uring, which will use
> TWA_SIGNAL based task_work for retry operations (and other things). If
> you use io_uring, and depending on how you setup the ring, it can be
> quite common or will never happen. Dropping the connection task_work
> being pending is not a viable solution, I'm afraid.

Thanks for confirming that it's perfectly normal, let's not drop
connections :)

My preferred approach is still to try and restore the async flush code,
but that will take a while -- it's not something that'll work right away
and I want some tests so it won't be ready for this merge window.
If we can have some sort of workaround until then it'll probably be for
the best, but I don't have any other idea (than temporarily clearing the
flag) at this point.

I'll setup some uring IO on 9p and see if I can produce these.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
