Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF516950A3
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 20:26:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pReTa-00018D-1g;
	Mon, 13 Feb 2023 19:26:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pReTZ-000185-8Q
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 19:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JEB0EJq2leh0gUBfjQUrqieo+tocTy4r9EskxVl3TJk=; b=U/BLw0G7Gi4OGW6J2onvNk1vSh
 fpHOSXKvXsfM0dEv5MqFN7ZvbQoBL1dkkgXk/HCpef8aTj6nFnQKnbxPle3rzloAl7bGhp9bYuX88
 YYMFBHkkJoOPaX2Mmy2Q1oZupblW7Nq5QKYsSlzwMv1VIHMXiI8hb4FaT2KMxQEUJKKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JEB0EJq2leh0gUBfjQUrqieo+tocTy4r9EskxVl3TJk=; b=dLWHm8boE1eFF3I0D9wo600bZK
 f4oBcNY71BGZJypUMgmPfP5xzWnxi3tvb9L/Thiwuxu+Ftpl+Y5MiOCsquThzgWcnhAH7YiCI1TUR
 3QA3EMNOHr3izBaBNIos9b1o2gFlYgrF1D/cexFsMQgFhlUnS1RnDC6rZWic6a9hjsww=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pReTT-0005Mf-FZ for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 19:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=JEB0EJq2leh0gUBfjQUrqieo+tocTy4r9EskxVl3TJk=; b=v/WrSIiHkt8HFZK/Uitv7d0L8c
 A6MxJ600yRPTT+PIZ9BuPayUCfNgdDd/U+IiIgpvdt+01AL7uPEBptf2d2INzyZpqNuGgIEMKxj+G
 qPkLwMbZ2YaEm7M8PDdKntzcz1yFlgsJCytgn9yIt3rPe8ss+7uCi5ZckspOr+vsVSTqLzPzafazk
 GQXuqXXWH7OmZ0iaM0eJ38jaFAzOavQhQpE8QhOSXHLnqm6kCcdsq5U77J4tsybXhKy4ZdAZLKKMB
 OcITCkUeay+VX4s87/ro/POcBwftDDii0HGaRejY8+wB4xNEmBkKoeMIIByQWqk677MSf/FJ0G62r
 GyWsqVypjqaCw4qy6W+UZAfGlum6fMHk1EEUP90pRKm4HrgNWuinAYnJMXJ6pUr07tZl0xzh9Uo66
 4TIor1+8H++ssQ7Ff2MN4NQrfzoFx7KXF5gBuDVnc1kQQf58ISViI4uttcKJaKy/Tikfv3Wx9momB
 XYBxvxJuHl601yvXKIHpu/F2MadZOVjf5ndgF1s0YCD+IuBzmXamxb9u6jw1DHmMCpvTwhudjvQ9t
 zH+0j5ZLfostuOMwCjekz1KT0qVWq9c8/2k9QOXKc1ykV+OOvVhVoWVBK7w4L+ZDp5yXcMRCgdVlY
 tSAIIH+623oEbW2y/qIeh8uC7e0N2ambwTxvVvmds=;
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 13 Feb 2023 19:26:54 +0100
Message-ID: <4256068.OCvV93pMlr@silver>
In-Reply-To: <20230211075023.137253-1-asmadeus@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, February 11,
 2023 8:50:18 AM CET Dominique Martinet
 wrote: > I've been working on async RPCs for a while and never had time to
 debug > the last issues this had, but by limiting the async [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pReTT-0005Mf-FZ
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Pengfei Xu <pengfei.xu@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, February 11, 2023 8:50:18 AM CET Dominique Martinet wrote:
> I've been working on async RPCs for a while and never had time to debug
> the last issues this had, but by limiting the async clunks to failures
> the impact is drastically smaller and I've not been able to reproduce
> any more bug so far.
> 
> This will require some more testing and I'm tempted to say this is not
> worth rushing this into the merge window next week-ish; the new problem
> Jens reported with task_work isn't really new and I'd rather get this
> right than rush new bugs in given the sour experience I've had with this
> patch series... Hopefully it'll get in this time.
> With that in mind I plan to take the patches in to my -next branch after
> the merge window, so this has time to get reviewed first.
> 
> I'd like to measure impact on performance as well, but really spent way
> more time on this than I already have, so that'll have to wait a bit.

I have not observed performance degradation, nor any (new) errors. So for
this entire series:

Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
