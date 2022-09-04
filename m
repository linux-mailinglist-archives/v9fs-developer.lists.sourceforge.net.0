Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 806C05AC40C
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 12:59:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUnLb-0004ug-88;
	Sun, 04 Sep 2022 10:59:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oUnLZ-0004uK-PU for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JaG/TNEvDVXAeaNHScP9d0f0VWvjg+cjgFbjE8qWOHo=; b=JX/EsH4mkhjjAZJEZMdBUDGWHe
 uXFmL1JMlZssypljQTxyKL4VmIK9jQesnb1fBI9iE8oNPd1/lFxIsBWny3c0GXP33hfhdcOjofGQZ
 yBVanGEimwHCaD2hlNtQ7TX/sWLw+LLxjHDeCb+3hsinfVdjsL0CXEziDidZd5nNE9tg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JaG/TNEvDVXAeaNHScP9d0f0VWvjg+cjgFbjE8qWOHo=; b=AHuz3NxdKND9NjzCHQ0bISYQtr
 olGcc3qJQEHnyg/1AlE1AddinOkf93HFd973PZxoWAIpuKIM1lRkrKiVl7nqG9kwQklySNwPZv9pY
 r6UFMkK1kQLt9JjstzH1fbeE1dzUUBkVwY3N13zUmmxMYDLPX5qEKsuTi34oZdj7QfTM=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUnLU-0002jX-IG for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 10:59:25 +0000
Received: from fsav411.sakura.ne.jp (fsav411.sakura.ne.jp [133.242.250.110])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 284Awxk5020572;
 Sun, 4 Sep 2022 19:58:59 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav411.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp);
 Sun, 04 Sep 2022 19:58:59 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 284AwxjQ020567
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 4 Sep 2022 19:58:59 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <ce47c523-d5df-30b9-71d5-c3c4808f4a2f@I-love.SAKURA.ne.jp>
Date: Sun, 4 Sep 2022 19:58:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <YxRZ7xtcUiYcPaw0@codewreck.org>
 <10e6223b-88c2-a377-c238-11c93d4e1afb@I-love.SAKURA.ne.jp>
 <YxSDeqn4LrSfSaUs@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <YxSDeqn4LrSfSaUs@codewreck.org>
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/09/04 19:52,
 Dominique Martinet wrote: > Back on topic, 
 assuming you don't strongly oppose to keeping my version, > what tags should
 I add to the patch? > Reported-by: Tetsuo Handa <penguin-ke [...] 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oUnLU-0002jX-IG
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

On 2022/09/04 19:52, Dominique Martinet wrote:
> Back on topic, assuming you don't strongly oppose to keeping my version,
> what tags should I add to the patch?
> Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> undersells your work, but I don't want to add something like
> Co-authored-by without your permission.

Regarding this problem, Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp> is sufficient.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
