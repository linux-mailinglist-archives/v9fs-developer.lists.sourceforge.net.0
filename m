Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F825AC3C6
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 12:02:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUmSm-0004av-Gc;
	Sun, 04 Sep 2022 10:02:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUmSa-0004ai-QP for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KPqjcDXDnW/xZ2CGvf++b34wHWllrqs46nZQG8KMjHs=; b=TQ4AghtXbbV/e5zYSJ3JaUZ48E
 ZZ0lv5IAu+vwnKd0dId8P2uhpqOnGw0O05vRII1CJ8GGwGvHnzTmVxrEB8JLRJ9PAemnHNmREfSqP
 MTlxL5ClEAuaTU7e15Gh6ZBZNoOvJbFnYflkc9b6XXmeM9irSlSlBeJP8H9LQ1T9gZDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KPqjcDXDnW/xZ2CGvf++b34wHWllrqs46nZQG8KMjHs=; b=OSiq49wcPspvB94tOcuqPhLZ/x
 WjIYANPuY/YI2nXxsRDCbt+pK8enaJmvkNuXGILe6ZHmbCVnHdkqQBTHjtC4Go4nI7QhzBrGcUFVo
 Gsr6fX0Q779Swqe/ye8GRWDKU+TC8/gLs13/bbPTnjeYCYoNxMjXzOXJ45t19jxU0MpU=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUmSV-0003k1-B6 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:02:36 +0000
Received: from fsav413.sakura.ne.jp (fsav413.sakura.ne.jp [133.242.250.112])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 284A26Uj009351;
 Sun, 4 Sep 2022 19:02:06 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav413.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav413.sakura.ne.jp);
 Sun, 04 Sep 2022 19:02:06 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav413.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 284A268O009348
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 19:02:06 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <10e6223b-88c2-a377-c238-11c93d4e1afb@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 19:02:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <YxRZ7xtcUiYcPaw0@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <YxRZ7xtcUiYcPaw0@codewreck.org>
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/09/04 16:55, Dominique Martinet wrote: > Tetsuo Handa
 wrote on Sun, Sep 04, 2022 at 04:06:36PM +0900: >> Changes in v2: >> Make
 this spinlock per "struct p9_client", though I don't know how we [...] 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oUmSV-0003k1-B6
Subject: Re: [V9fs-developer] [PATCH v2] net/9p: use a dedicated spinlock
 for modifying IDR
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

On 2022/09/04 16:55, Dominique Martinet wrote:
> Tetsuo Handa wrote on Sun, Sep 04, 2022 at 04:06:36PM +0900:
>> Changes in v2:
>>   Make this spinlock per "struct p9_client", though I don't know how we
>>   should update "@lock" when "@idr_lock" also protects @fids and @reqs...
> 
> Sorry for the trouble, this is not what I meant: this v2 makes 'lock'
> being unused except for trans_fd, which isn't optimal for other
> transports like e.g. virtio or rdma.

v1 was smaller, and I thought frequency of calling
idr_alloc()/idr_alloc_u32()/idr_remove() is low enough to justify
use of global spinlock.

> 
> In hindsight it's probably faster to just send a diff... Happy to keep
> you as author if you'd like, or sign off or whatever you prefer -- I
> wouldn't have guessed what that report meant without you.

This diff is bigger than I can guess correctness. Maybe v1 patch should be
applied as a fix for this problem (because including Reported-by: or Fixes:
likely makes patches be automatically picked up by stable kernel maintainers
before syzbot tests for a while) and your patch should be applied as an improvement
(i.e. omit Reported-by: and Fixes: ). You can manually request for inclusion into
stable kernels after syzbot tested for a while.

> Eh, with your link I'd agree, but I never got any mail from him.

Too bad. Hillf is proposing patches in many bugs, but it seems that
he does not try to propose as formal patches with description.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
