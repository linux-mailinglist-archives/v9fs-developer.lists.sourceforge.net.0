Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6549456CFB3
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 17:17:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAYgM-0006Ss-27; Sun, 10 Jul 2022 15:17:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oAYgK-0006Sh-1v
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 15:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N0rqnDTrHAjPRGrAyMQmskD/2xe+zwWD0acZaTVuWqg=; b=b2FsQe7qgEyQz4d+/gLtmrBMjn
 vbc931gaVXbJ2kIbP3aeJW315QFpNAkdBm7OzPljWg5t8WXnhlTbcN2LvkVpFDrlnuE6QMz9xcHwH
 udEcAO/GFr/TIGTyOmDPOeqYA8GcukvO0zPz0UL3kBeYMWyfZtUgCe2VB27Hsm8T1b+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N0rqnDTrHAjPRGrAyMQmskD/2xe+zwWD0acZaTVuWqg=; b=G9pxbvqto1KeUEK9Tz5VzD9sZ9
 H5ifOJ9Ti016IBn2llb22bJY+Cos1ieuQD4KIGhcl2GOEvHcy3aajLWmp43QYoL0etVtWBidFTSg/
 nxr1nzMPwbWHR0tnykkPRbpRfA2U5lpyRuibs8V6EZ7kSb2YXfpTnRecfCkBNLT7soUU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAYgG-00CuEz-UZ
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 15:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=N0rqnDTrHAjPRGrAyMQmskD/2xe+zwWD0acZaTVuWqg=; b=uzP+h+7p/LPKqky6+oL+o9lJCW
 gNsBo1+ZVbzTfTzJnAMimxbKk51ZOdKi243xGClR5xNl5/7DTpXWu2xVH6f25q3uXzR8ZIqekZchz
 VNEvnpEG+RHh4mY+b/aDxq6sfSkK524/hQe5sQX1nxk4gX2/kI7mtNEMIX0JoTQZW7B+kqergTg+J
 UyKkAs9TOg806l73tUL7xyxle5AQeXuRcreik+5WPCOrKpuLnpvXUMytM3HBxTaQ68ekUr0tPscnZ
 AKwouTjNjtsCqONpvVcC1TF5fkCimTfr4QlY2U1wMJx1kl3EnKQMnDfmBALrCDhNepQioemd4/d/4
 P8MkF9DS0ll1G+SmzH3hXMokCHXwmMXJp4cxbeesVBhldDx419dZIQRzT/r3EOJJRNWmwNGvM8vQy
 CCROas6fEwTy17Z8emdpWwg8N4lMIb668Dydwo8l6QO0I55w1+pU4P9WuWhDDzffjJLjibhO7P2k1
 40ds9zkCtPkk82GPWjrudPRVK/jbpQNgE9QN7T8oPKI/ihrhDCVA2vUw65IclrRKRIcNaNUl+HoR2
 z7VLXUhLV6hDZtuA2Lgvqjh1u2MXP+F43FgDStuLu5Sj1AQUvdY8m+luePiHA1aqxJ/vuXEiPkeCw
 xmfTJcJITnVhJYvhlOwsqjIS28bMl65e7NjYjW3Jg=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 10 Jul 2022 17:16:45 +0200
Message-ID: <12950409.o0bIpVV1Ut@silver>
In-Reply-To: <YsrR/M+fna44trHm@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <13813647.qg49PginWZ@silver> <YsrR/M+fna44trHm@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 10. Juli 2022 15:19:56 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Sun, Jul 10, 2022 at 02:57:58PM +0200:
 > > On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oAYgG-00CuEz-UZ
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 10. Juli 2022 15:19:56 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sun, Jul 10, 2022 at 02:57:58PM +0200:
> > On Samstag, 9. Juli 2022 22:50:30 CEST Dominique Martinet wrote:
> > > Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 08:08:41PM +0200:
[...]
> > > late replies to the oldtag are no longer allowed once rflush has been
> > > sent.
> > 
> > That's not quite correct, it also explicitly says this:
> > 
> > "The server may respond to the pending request before responding to the
> > Tflush."
> > 
> > And independent of what the 9p2000 spec says, consider this:
> > 
> > 1. client sends a huge Twrite request
> > 2. server starts to perform that write but it takes very long
> > 3.A impatient client sends a Tflush to abort it
> > 3.B server finally responds to Twrite with a normal Rwrite
> > 
> > These last two actions 3.A and 3.B may happen concurrently within the same
> > transport time frame, or "at the same time" if you will. There is no way
> > to
> > prevent that from happening.
> 
> Yes, and that is precisely why we cannot free the buffers from the
> Twrite until we got the Rflush.
> Until the Rflush comes, a Rwrite can still come at any time so we cannot
> just free these resources.

With current client version, agreed, as it might potentially incorrectly 
lookup a wrong (new) request with the already recycled tag number then. With 
consecutive tag numbers this would not happen. Client lookup with the old tag 
number would fail -> ignore reply. However ...

> In theory it'd be possible to free the buffers for some protocol and
> throw the data with the bathwater, but the man page says that in this
> case we should ignore the flush and behave as if the request behaved
> properly because of side-effects e.g. even if you try to interrupt an
> unlink() call if the server says it removed it, well, it's removed so we
> should tell userspace that.

... good point! I was probably too much thinking about Twrite/Tread examples, 
so I haven't considered that case indeed.

> > > > When the client sends a Tflush, it must wait to receive the
> > > > corresponding Rflush before reusing oldtag for subsequent messages
> > > 
> > > if we free the request at this point we'd reuse the tag immediately,
> > > which definitely lead to troubles.
> > 
> > Yes, that's the point I never understood why this is done by Linux client.
> > I find it problematic to recycle IDs in a distributed system within a
> > short time window. Additionally it also makes 9p protocol debugging more
> > difficult, as you often look at tag numbers in logs and think, "does this
> > reference the previous request, or is it about a new one now?"
> 
> I can definitely agree with that.
> We need to keep track of used tags, but we don't need to pick the lowest
> tag available -- maybe the IDR code that allocates tag can be configured
> to endlessly increment and loop around, only avoiding duplicates?
> 
> Ah, here it is, from Documentation/core-api/idr.rst:
> 
>   If you need to allocate IDs sequentially, you can use
>   idr_alloc_cyclic().  The IDR becomes less efficient when dealing
>   with larger IDs, so using this function comes at a slight cost.
> 
> 
> That would be another "easy change", if you'd like to check that cost at
> some point...

Nice! I'll definitely give this a whirl and will report back!

> (until we notice that some server has a static array for tags and stop
> working once you use a tag > 64 or something...)

That would be an incorrect server implementation then, a.k.a. bug. The spec is 
clear that tag numbers are generated by client and does not mandate any 
sequential structure.

> Anyway, this is getting off-topic -- the point is that we need to keep
> resources around for the original reply when we send a tflush, so we
> can't just free that buffer first unless you're really good with it.
> 
> It'd be tempting to just steal its buffers but these might still be
> useful, if e.g. both replies come in parallel.
> (speaking of which, why do we need two buffers? Do we ever re-use the
> sent buffer once the reply comes?... this all looks sequential to me...)

Yep, I was thinking the exact same, but for now I would leave it this way.

> So instead of arguing here I'd say let's first finish your smaller reqs
> patches and make mempool again on top of that with a failsafe just for
> flush buffers to never fallback on mempool; I think that'll be easier to
> do in this order.

OK then, fine with me!

No time today, but I hope to post a new version next week.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
