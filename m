Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2089168C96E
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 23:30:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pPA0L-00044D-Od;
	Mon, 06 Feb 2023 22:30:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pPA0I-000447-4d
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 22:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PDs+/XcuZUGQL4rxDx/aOmfGEWZQWk09vfbKodEdQe8=; b=ZIf68Vm4/ODs5OEt1KPOp2lj8b
 TSU+CUZKovxjRp5DbNO7qmhxydZfGcad9Ht/YScuTNNkntWM8FppZVOAF+LuyuIMwne7/TZFFY+l0
 N13/rav4KsrDW/T53A9CADK7a3qHsME4RMA4eaRFdIfdoPMZg4HOFSS5ARM9kebqpVAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PDs+/XcuZUGQL4rxDx/aOmfGEWZQWk09vfbKodEdQe8=; b=FiNDNzemuTa4pyFyL6/X+wrUjX
 69/i5RKF0YEUOAWNycHOZZbwgDcIRHi0TPl7PA6MXfHYCnazBiJMEa96gziFVx4Xi6bF/ypYehPBy
 VEUUUuFON+YsJNAym6rCGpW+A389P3EnMukRD9hHJ9+7ZUZDCm1Rb9XLoyn+9zG8K7tE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pPA0C-0006C5-9J for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 22:30:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2EA03C01C; Mon,  6 Feb 2023 23:30:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1675722636; bh=PDs+/XcuZUGQL4rxDx/aOmfGEWZQWk09vfbKodEdQe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q4CwmByaXxPFarPNplBW9YouVyYzUExAEWjP60idxEu4Fnwc4Ch5AgJxZWLDc/3YU
 a/1X/iREANG4qxTfVlxfuFexKZTzBhDvQC+OTlUHosMjmnOE+GGX+P3SYnDbca7KE2
 1XOh86BoIytTGhLrfnY3rCtcvo2rFUU7cU1/47vHR2Q/9+95NNWVlCw2zda+9IFEz8
 I6pPAZZT+RGgGCKKQaZg1DYDgpxsnosq7NWRsSlmeFm4FWj4TJ+XbDFsspkMopbaoV
 oC4m6dV+dyZDbcIgoszqbsib1sx5wRIHlNru9G4xvWsSG8CsxMiT1nY/m7dGnnhavd
 3WiJ4jaM7mXNw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 58247C009;
 Mon,  6 Feb 2023 23:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1675722635; bh=PDs+/XcuZUGQL4rxDx/aOmfGEWZQWk09vfbKodEdQe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HuIuZxgRv6uT39CyZgNYHH0EsUW/REqD/AwaFVCbNbdGg/j9ZGAWsG88gSZr0hwuV
 8JOl0SdHNQhbrxRJOdKf6I6TLQJlC1y22w+9xbeiwCB/XWgJM9fWiYrGhcqw+gIeYs
 m97ORxgSJujx1KB6dYadGBTkc4ncVCtpG7GoFqxWfLK/84b1kerjEKOGb6iWivszCx
 QZYVUR6NRSQaGhdfw5t21ym98tbSRN0STP1jzz/khrLi3M9hhKNHJkQLMUaGUZlicF
 qzyhEpPTDvLranOKccamc1yCfxTuh+Qxd0QHDrjMPdS4dwty3lrpeNKez4XtdOoP45
 QiXTnyefN7dSg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 630ff128;
 Mon, 6 Feb 2023 22:30:08 +0000 (UTC)
Date: Tue, 7 Feb 2023 07:29:53 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <Y+F/YSjhcQax1bMm@codewreck.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
 <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
 <Y+F0KrAmOuoJcVt/@codewreck.org>
 <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jens Axboe wrote on Mon, Feb 06, 2023 at 02:56:57PM -0700:
 > Sure, if you set it again when done, then it will probably work just >
 fine. But you need to treat TIF_NOTIFY_SIGNAL and TIF_SIGPENDING > s [...]
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
X-Headers-End: 1pPA0C-0006C5-9J
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

Jens Axboe wrote on Mon, Feb 06, 2023 at 02:56:57PM -0700:
> Sure, if you set it again when done, then it will probably work just
> fine. But you need to treat TIF_NOTIFY_SIGNAL and TIF_SIGPENDING
> separately. An attempt at that at the end of this email, totally
> untested, and I'm not certain it's a good idea at all (see below). Is
> there a reason why we can't exit and get the task_work processed
> instead? That'd be greatly preferable.

No good reason aside of "it's not ready", but in the current code things
will probably get weird.
I actually misremembered the tag lookup for trans_fd, since we're not
freeing the tag yet the lookup will work and the connexion might not be
dropped (just reading into a buffer then freeing it in the cb without
any further processing), but even my refcounting works better than I
thought you'll end up with the IO being replayed while the server is
still processing the first one.
This is unlikely, but for example this could happen: 

- first write [0;1MB]
- write is interrupted before server handled it
   - write replayed and handled, userspace continues to...
   - second write [1MB-4k;1MB]
- first write handle by server, overwriting the second write

And who doesn't enjoy a silent corruption for breakfast?


> > Hm, schedule_delayed_work on the last fput, ok.
> > I was wondering what it had to do with the current 9p thread, but since
> > it's not scheduled on a particular cpu it can pick another cpu to wake
> > up, that makes sense -- although conceptually it feels rather bad to
> > interrupt a remote IO because of a local task that can be done later;
> > e.g. between having the fput wait a bit, or cancel a slow operation like
> > a 1MB write, I'd rather make the fput wait.
> > Do you know why that signal/interrupt is needed in the first place?
> 
> It's needed if the task is currently sleeping in the kernel, to abort a
> sleeping loop. The task_work may contain actions that will result in the
> sleep loop being satisfied and hence ending, which means it needs to be
> processed. That's my worry with the check-and-clear, then reset state
> solution.

I see, sleeping loop might not wake up until the signal is handled, but
it won't handle it if we don't get out.
Not bailing out on sigkill is bad enough but that's possibly much worse
indeed... And that also means the busy loop isn't any better, I was
wondering how it was noticed if it was just a few busy checks but in
that case just temporarily clearing the flag won't get out either,
that's not even a workaround.

I assume that also explains why it wants that task, and cannot just run
from the idle context-- it's not just any worker task, it's in the
process context? (sorry for using you as a rubber duck...)

> > I'll setup some uring IO on 9p and see if I can produce these.
> 
> I'm attaching a test case. I don't think it's particularly useful, but
> it does nicely demonstrate the infinite loop that 9p gets into if
> there's task_work pending.

Thanks, that helps!
I might not have time until weekend but I'll definitely look at it.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
