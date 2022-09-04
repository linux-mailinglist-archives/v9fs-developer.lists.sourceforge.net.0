Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF055AC300
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 08:36:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjFT-0002UC-EO;
	Sun, 04 Sep 2022 06:36:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUjFS-0002U6-77
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vo0PzcqfZdB7v2WKBCprMAW2PfLekN8nXdXP83De8XE=; b=gl5MjQF0uK0TouAbLJvgHGLoCH
 Gic7MCo6eUjigrEbmW/pjIT7WKsSTkVqTq+3JywUAsQYMwtzB/N8vEHssYOtOZCZNg9ws5+BnNqPr
 E1F3r5cGEjbov1f9/bq9DQlMwhetMqtpiymg+vuKcfkedpJHFme51c/xJHpUs/kPtmsA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vo0PzcqfZdB7v2WKBCprMAW2PfLekN8nXdXP83De8XE=; b=Fxu9aFXMiBN2kHtTh6SAbBYxt6
 Gc/kp9rHRLmrP4ZXGMc+AuoktwmaQW2vJqFRu0QW11Qk6e728ZzrJbP9I8JjDcExZYg/lYMfCzDGv
 9HgqKrkiTpRvqbcboeXI/X4WiZbGowX/C3CJkd6TxdBrmJnq3YeJ0ArkefBS1FbqdfTw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjFN-00DZiB-W0 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 06:36:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E6766C01E; Sun,  4 Sep 2022 08:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273397; bh=vo0PzcqfZdB7v2WKBCprMAW2PfLekN8nXdXP83De8XE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UsxqbDmCpsrmK58EgJvQynOpthIZ0ME8zhkEv9qT7xfReGtlMwU1J3wxZ9BRp/WwE
 66YpbVoyz1uUGDTck0b+COkuUTk/1YMsCYQDLCU+ooV0lITWn+VRYHUtvMzvqbyD5+
 nmM6SJuhPTbIpqas8skEPEq0xbm8qiOtwoZuoYnXgk3JgZvp+Rfx7WcWctFC9OroKl
 YNcdxYOjifDD7J/OBVXElvP83ZIYW5Y70XoAi0zQibwFryM/SAL2IgXCS874PhooH4
 l83lSuJkjIBZ8uybl8EQzsEHaSszSHrMXMr7+aPAmwyplaQ5xain2xJBvs55GjLesj
 VEa8RThZbmJ4A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C5E2CC009;
 Sun,  4 Sep 2022 08:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662273397; bh=vo0PzcqfZdB7v2WKBCprMAW2PfLekN8nXdXP83De8XE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UsxqbDmCpsrmK58EgJvQynOpthIZ0ME8zhkEv9qT7xfReGtlMwU1J3wxZ9BRp/WwE
 66YpbVoyz1uUGDTck0b+COkuUTk/1YMsCYQDLCU+ooV0lITWn+VRYHUtvMzvqbyD5+
 nmM6SJuhPTbIpqas8skEPEq0xbm8qiOtwoZuoYnXgk3JgZvp+Rfx7WcWctFC9OroKl
 YNcdxYOjifDD7J/OBVXElvP83ZIYW5Y70XoAi0zQibwFryM/SAL2IgXCS874PhooH4
 l83lSuJkjIBZ8uybl8EQzsEHaSszSHrMXMr7+aPAmwyplaQ5xain2xJBvs55GjLesj
 VEa8RThZbmJ4A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0bc3a777;
 Sun, 4 Sep 2022 06:36:32 +0000 (UTC)
Date: Sun, 4 Sep 2022 15:36:17 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YxRHYaqqISAr5Rif@codewreck.org>
References: <000000000000f842c805e64f17a8@google.com>
 <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Sun, Sep 04, 2022 at 03:09:28PM +0900:
 > syzbot is reporting inconsistent lock state in p9_req_put(),
 for > p9_tag_remove()
 from p9_req_put() from IRQ context is using > spin_loc [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oUjFN-00DZiB-W0
Subject: Re: [V9fs-developer] [PATCH] net/9p: use a dedicated spinlock for
 modifying IDR
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tetsuo Handa wrote on Sun, Sep 04, 2022 at 03:09:28PM +0900:
> syzbot is reporting inconsistent lock state in p9_req_put(), for
> p9_tag_remove() from p9_req_put() from IRQ context is using
> spin_lock_irqsave() on "struct p9_client"->lock but other locations
> not from IRQ context are using spin_lock().

Ah, I was wondering what this problem could have been, but it's yet
another instance of trans_fd abusing the client's lock when it really
should get its own...
I didn't realize mixing spin_lock_irq*() and spin_lock() was the
problem, thank you.

> Since spin_lock() => spin_lock_irqsave() conversion on this lock will
> needlessly disable IRQ for infrequent event, and p9_tag_remove() needs
> to disable IRQ only for modifying IDR (RCU read lock can be used for
> reading IDR), let's introduce a spinlock dedicated for serializing
> idr_alloc()/idr_alloc_u32()/idr_remove() calls. Since this spinlock
> will be held as innermost lock, circular locking dependency problem
> won't happen by adding this spinlock.

We have an idr per client though so this is needlessly adding contention
between multiple 9p mounts.

That probably doesn't matter too much in the general case, but adding a
different lock per connection is cheap so let's do it the other way
around: could you add a lock to the p9_conn struct in net/9p/trans_fd.c
and replace c->lock by it there?
That should have identical effect as other transports don't use client's
.lock ; and the locking in trans_fd.c is to protect req's status and
trans_fd's own lists which is orthogonal to client's lock that protects
tag allocations. I agree it should work in theory.

(If you don't have time to do this this patch has been helpful enough and
I can do it eventually)

Thanks,
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
