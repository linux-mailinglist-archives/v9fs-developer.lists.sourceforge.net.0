Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321F202A2C
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 12:57:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jmxez-0000hu-J9; Sun, 21 Jun 2020 10:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jmxex-0000hY-Tx
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 10:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R4pN7SkS5BfMMvTV8JKgY9SwTT5ANAZXzz9LK1h0B/c=; b=E4oghz8xVNP7BeET4NCTgnWqv1
 0Q6uc7T0oI7FAc4dQlavinDxNwXcea2bCjWmuVFKfCPig1LyoT11w7Dl5O8zZ9nPNJ7zglpjnoL8k
 N5DTrdbcW26S/sonnirGuJLHi9eWeMal/ZmsQ026ENEXlGezUcfsgGzxYRnaTAOVwOWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R4pN7SkS5BfMMvTV8JKgY9SwTT5ANAZXzz9LK1h0B/c=; b=YJlfa+JXJ1FDzGDgVW4AmcAI4b
 h5JodAw2wTsyaYFXQk9Xe6hup3/wMgBzQTJX4qd4V4pk7huaD/9XndO92LYZx/CBIMjaDReg8CQSb
 fpWzEC/2o1yO1n6gpuPZ5nsoVnhPzvnlNzgefik4UlyAnpE2u+BxDR6Bofg++jC9BtKY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jmxet-00DuAo-W6
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 10:57:11 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 9D08BC01A; Sun, 21 Jun 2020 12:57:00 +0200 (CEST)
Date: Sun, 21 Jun 2020 12:56:45 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Message-ID: <20200621105645.GA21909@nautica>
References: <20200618190807.GA20699@nautica>
 <20200620201456.14304-1-alexander.kapshuk@gmail.com>
 <20200621084512.GA720@nautica>
 <CAJ1xhMWe6qN9RcpmTkJVRkCs+5F=_JtdwsYuFfM7ZckwEkubhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ1xhMWe6qN9RcpmTkJVRkCs+5F=_JtdwsYuFfM7ZckwEkubhA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmxet-00DuAo-W6
Subject: Re: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
 client.c
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Alexander Kapshuk wrote on Sun, Jun 21, 2020:
> Thanks for your feedback.
> Shall I simply resend the v2 patch with the commit message reworded as
> you suggested, or should I make it a v3 patch instead?

Yes please resend the same commit reworded. v2 or v3 doesn't matter
much, the [PATCH whatever] part of the mail isn't included in the commit
message; I don't receive so much patches to be fussy about that :)

> One other thing I wanted to clarify is I got a message from kernel
> test robot <lkp@intel.com>,
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/TMTLPYU6A522JH2VCN3PNZVAP6EE5MDF/,
> saying that on parisc my patch resulted in __lock_task_sighand being
> undefined during modpost'ing.
> I've noticed similar messages about other people's patches on the
> linux-kernel mailing list with the responses stating that the issue
> was at the compilation site rather than with the patch itself.
> As far as I understand, that is the case with my patch also. So no
> further action on that is required of me, is it?

Thanks, I hadn't noticed this mail -- unfortunately I don't have
anything setup to test pa risc, but __lock_task_sighand is defined in
kernel/signal.c which is unconditionally compiled so shouldn't have
anything to do with arch-specific failures, so I will run into the same
problem when I test this.

From just looking at the code, it looks like a real problem to me -
__lock_task_sighand is never passed to EXPORT_SYMBOL so when building 9p
as a module we cannot use the function. Only exported symbols can be
called from code that can be built as modules.

That looks like an oversight to me more than something on purpose, but
it does mean I cannot take the patch right now -- we need to first get
the symbol exported before we can use it in 9p.


As things stand I'd rather have this patch wait one cycle for this than
revert to manipulating rcu directly like you did first -- if you're up
for it you can send a patch to get it exported first and I'll pick this
patch up next cycle, or I can take care of that too if you don't want to
bother.

Letting you tell me which you prefer,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
