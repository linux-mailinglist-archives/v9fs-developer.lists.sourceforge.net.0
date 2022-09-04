Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 868BD5AC315
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 09:18:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUjtU-0001ZQ-Ca;
	Sun, 04 Sep 2022 07:18:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUjtT-0001ZK-Am for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:18:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iE7elNuG2EjKRXJRMaAzBjaFKgl3iuIoXQgLmjVCfWU=; b=ObFHHm0QIQ+b5x4a4JXH000G8e
 EHyNpdQ26dAcKHeNKDWeipe2q84/PhhbWyWBxop/swyHw+YtwVu+tLPOQTGL87+3iF0MJ9ef2svRw
 yLNY1bRCBsrP9vgVkjO8yDOHQ9oHQGJ4m1gKjAAvUGPTuP4QOeOsFpCSLpwpgZL74I4Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iE7elNuG2EjKRXJRMaAzBjaFKgl3iuIoXQgLmjVCfWU=; b=VM+omnP9cqWFGIJL3s9TI1V7cU
 YTB4JkIgxV1b5AIz2/mPUBWDEk1xgvYdsqIOiHWJKzZcWmDQv19T8rr7jvd/zLd1QE6Jo8YNcaT4d
 YGlq+jKByzrkWByO3dSimBw+p7J2rq0j/jzxpyvGIbjyXELPoOmtfx7LSsLg+IWzYLww=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUjtR-0004Xc-Te for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 07:18:11 +0000
Received: from fsav315.sakura.ne.jp (fsav315.sakura.ne.jp [153.120.85.146])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 2847Hgmp076700;
 Sun, 4 Sep 2022 16:17:42 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav315.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav315.sakura.ne.jp);
 Sun, 04 Sep 2022 16:17:42 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav315.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 2847HgY6076697
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 16:17:42 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <40f15366-6027-ec7a-e151-bcc108855cb8@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 16:17:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <000000000000f842c805e64f17a8@google.com>
 <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
 <YxRHYaqqISAr5Rif@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <YxRHYaqqISAr5Rif@codewreck.org>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/09/04 15:36, Dominique Martinet wrote: > We have an
 idr per client though so this is needlessly adding contention > between
 multiple
 9p mounts. > > That probably doesn't matter too much in the [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oUjtR-0004Xc-Te
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

On 2022/09/04 15:36, Dominique Martinet wrote:
> We have an idr per client though so this is needlessly adding contention
> between multiple 9p mounts.
> 
> That probably doesn't matter too much in the general case,

I thought this is not a hot operation where contention matters.

>                                                            but adding a
> different lock per connection is cheap so let's do it the other way
> around: could you add a lock to the p9_conn struct in net/9p/trans_fd.c
> and replace c->lock by it there?

Not impossible, but may not be cheap for lockdep.

> That should have identical effect as other transports don't use client's
> .lock ; and the locking in trans_fd.c is to protect req's status and
> trans_fd's own lists which is orthogonal to client's lock that protects
> tag allocations. I agree it should work in theory.
> 
> (If you don't have time to do this this patch has been helpful enough and
> I can do it eventually)

Sent as https://lkml.kernel.org/r/68540a56-6a5f-87e9-3c21-49c58758bfaf@I-love.SAKURA.ne.jp .

By the way, I think credit for the patch on https://syzkaller.appspot.com/bug?extid=50f7e8d06c3768dd97f3 goes to Hillf Danton...



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
