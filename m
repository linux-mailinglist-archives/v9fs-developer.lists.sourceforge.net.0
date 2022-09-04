Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 562095AC45D
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 15:04:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUpIV-0000nN-97;
	Sun, 04 Sep 2022 13:04:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUpIT-0000nD-CX for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 13:04:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HaFXZ8ajSTqa0Xswdu6pOXEfy8J08H5vbowfZykETI=; b=nTWQIy2EJZX7iRahucMemNUaP5
 OP/AqtDu0FDGc/GjtXjHzmUMNiHi8QCFv8YA50NuKkjMkoqZEdQOZDe7kbyLaRLpDbFV+3RGxJ6Xz
 9YsEr3q8pYouEJvXvCCJLvYfT3uB1v+BlsUCH3hNwOrJ4M60zL4v2M6svH/ZkD9oP1Y0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7HaFXZ8ajSTqa0Xswdu6pOXEfy8J08H5vbowfZykETI=; b=FlzQa9PiZwALPQaNwpqJoAi0tW
 KXtI+ZyctwyI+x0G1yYMq7epkwuO/5Ezt75qhS6BPHi20bFxeF+pJSPWhQ0LmBm+X3PouILGb4RIt
 a6CcjK+66spws2lnMPDzE99yBasoogkoDUMVEVkgOh3Kr6gieYOHwu8H0ZpsMxVfS31w=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUpIO-0005h0-5l for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 13:04:21 +0000
Received: from fsav312.sakura.ne.jp (fsav312.sakura.ne.jp [153.120.85.143])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 284D3o68045784;
 Sun, 4 Sep 2022 22:03:50 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav312.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav312.sakura.ne.jp);
 Sun, 04 Sep 2022 22:03:50 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav312.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 284D3o0C045779
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 22:03:50 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <9d4c7f38-6a30-3efb-7887-9c6224494ffd@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 22:03:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net
References: <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
 <20220904112928.1308799-1-asmadeus@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <20220904112928.1308799-1-asmadeus@codewreck.org>
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/09/04 20:29, Dominique Martinet wrote: > Since the
 locks actually protect different things in client.c and in > trans_fd.c,
 just replace trans_fd.c's lock by a new one specific to the > transp [...]
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oUpIO-0005h0-5l
Subject: Re: [V9fs-developer] [PATCH] net/9p: use a dedicated spinlock for
 trans_fd
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
Cc: linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/09/04 20:29, Dominique Martinet wrote:
> Since the locks actually protect different things in client.c and in
> trans_fd.c, just replace trans_fd.c's lock by a new one specific to the
> transport instead of using spin_lock_irq* variants everywhere
> (client.c's protect the idr for tag allocations, while
> trans_fd.c's protects its own req list and request status field
> that acts as the transport's state machine)

OK, I figured out what this patch changes.

  $ grep -nF -- '->lock' *.[ch]
  client.c:286:   spin_lock_irq(&c->lock);
  client.c:293:   spin_unlock_irq(&c->lock);
  client.c:367:   spin_lock_irqsave(&c->lock, flags);
  client.c:369:   spin_unlock_irqrestore(&c->lock, flags);
  client.c:816:   spin_lock_irq(&clnt->lock);
  client.c:819:   spin_unlock_irq(&clnt->lock);
  client.c:838:   spin_lock_irqsave(&clnt->lock, flags);
  client.c:840:   spin_unlock_irqrestore(&clnt->lock, flags);
  client.c:945:   spin_lock_init(&clnt->lock);
  trans_virtio.c:139:     spin_lock_irqsave(&chan->lock, flags);
  trans_virtio.c:151:     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:268:     spin_lock_irqsave(&chan->lock, flags);
  trans_virtio.c:287:                     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:296:                     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:303:     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:474:     spin_lock_irqsave(&chan->lock, flags);
  trans_virtio.c:515:                     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:524:                     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:532:     spin_unlock_irqrestore(&chan->lock, flags);
  trans_virtio.c:621:     spin_lock_init(&chan->lock);
  trans_xen.c:142:        spin_lock_irqsave(&ring->lock, flags);
  trans_xen.c:149:                spin_unlock_irqrestore(&ring->lock, flags);
  trans_xen.c:164:        spin_unlock_irqrestore(&ring->lock, flags);
  trans_xen.c:314:        spin_lock_init(&ring->lock);

This patch changes "struct p9_client"->lock to be used for only
protecting idr, as explained at

 * @lock: protect @fids and @reqs

line. Makes sense and looks correct.

> Tetsuo Handa-san, thank you very much!
> I'm sorry for not respecting your opinion but it's been a pleasure to
> have submissions from someone on JST :)

Thank you for responding quickly. :-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
