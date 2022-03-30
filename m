Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3B4ED04C
	for <lists+v9fs-developer@lfdr.de>; Thu, 31 Mar 2022 01:44:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZhzH-0005aX-SU; Wed, 30 Mar 2022 23:44:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1nZhzG-0005Yi-G8
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 23:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tCzKEqDzHiTXHpq2NmToludNNeIq79ArM2rXrnX7qJI=; b=WntquniY45NEi1/bkhg9Jv9G+o
 c3Ki+E6Mt2tS9Atkh7AJqG/I1cWdE1zB9LDrIqWvoWMBjiAKs2b9lu/o5Hwte2yOj3+y+G5PuukWN
 d0k9/wFmIgZkHQ8CqPLXGHNSRvRufns/dvUvFXv+S/JcxgDBUkBgRSYYrTtvXzSU5EI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tCzKEqDzHiTXHpq2NmToludNNeIq79ArM2rXrnX7qJI=; b=c8BdI4WGhlZPBvHPA6n2xZKcKP
 PXHsWC9Oq8mDqBadVjl8vXZc3US5xqcy5doz2LQBfVGRMsMoiuaIQ4cs0XVp3A72SY1tPzgvgBj0u
 F5Pr3mN1vCwh34hCEXjSPhrK8e9KxzR6Dmgw12dk7czeR2Z8J4SkfInhqNfUJjeaPQsQ=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZhyy-0002Vf-8T
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 23:44:24 +0000
Received: from fsav119.sakura.ne.jp (fsav119.sakura.ne.jp [27.133.134.246])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 22UNhb9r030571;
 Thu, 31 Mar 2022 08:43:37 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav119.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav119.sakura.ne.jp);
 Thu, 31 Mar 2022 08:43:37 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav119.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 22UNhbP8030567
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 31 Mar 2022 08:43:37 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <688b3c92-e9aa-f506-a288-646c5477f6df@I-love.SAKURA.ne.jp>
Date: Thu, 31 Mar 2022 08:43:32 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Perepechko, Andrew" <andrew.perepechko@hpe.com>,
 Dominique Martinet <asmadeus@codewreck.org>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
 <YkObebLZMp5AyRpr@codewreck.org>
 <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
 <YkPAkXVc4HZLUrGl@codewreck.org>
 <f593d3ac-b28e-3593-3cd8-8983b27e47a7@I-love.SAKURA.ne.jp>
 <PH7PR84MB167995181252E4B7E4541B64F51F9@PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <PH7PR84MB167995181252E4B7E4541B64F51F9@PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello. Since "ext4: truncate during setxattr leads to kernel
 panic" did not choose per-superblock WQ,
 ext4_put_super() for some ext4 superblock
 currently waits for completion of iput() from delayed_iput_fn() [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nZhyy-0002Vf-8T
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
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
Cc: Andreas Dilger <adilger@dilger.ca>, Theodore Ts'o <tytso@mit.edu>,
 "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>,
 Tejun Heo <tj@kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello.

Since "ext4: truncate during setxattr leads to kernel panic" did not choose
per-superblock WQ, ext4_put_super() for some ext4 superblock currently waits
for completion of iput() from delayed_iput_fn() from delayed_iput() from
ext4_xattr_set_entry() from all ext4 superblocks (in addition to other tasks
scheduled by unrelated subsystems).

If ext4_put_super() for some superblock wants to wait for only works from that
superblock, please use per-superblock WQ. Creating per-superblock WQ via
alloc_workqueue() without WQ_MEM_RECLAIM flag will not consume much resource.

If ext4_put_super() for some superblock can afford waiting for iput() from
other ext4 superblocks, you can use per-filesystem WQ.

On 2022/03/31 1:56, Perepechko, Andrew wrote:
> Hello Tetsuo!
> 
> Thank you for your report.
> 
> I wonder if I can fix this issue by creating a separate per-superblock workqueue.
> 
> I may not fully understand the lockdep magic in process_one_work() so any advice is appreciated.
> 
> As I see it, if there's no shared locking between different workqueues, unmount should be able to flush only its own scheduled tasks (which should not conflict with any p9 tasks) and unblock the locking chain under similar conditions.
> 
> Thank you,
> Andrew
> ________________________________
> From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Sent: 30 March 2022 05:49
> To: Dominique Martinet <asmadeus@codewreck.org>
> Cc: Perepechko, Andrew <andrew.perepechko@hpe.com>; Andreas Dilger <adilger@dilger.ca>; Theodore Ts'o <tytso@mit.edu>; syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; syzkaller-bugs@googlegroups.com <syzkaller-bugs@googlegroups.com>; v9fs-developer@lists.sourceforge.net <v9fs-developer@lists.sourceforge.net>; open list:EXT4 FILE SYSTEM <linux-ext4@vger.kernel.org>
> Subject: Re: [syzbot] possible deadlock in p9_write_work
> 
> On 2022/03/30 11:29, Dominique Martinet wrote:
>> Tetsuo Handa wrote on Wed, Mar 30, 2022 at 10:57:15AM +0900:
>>>>> Please don't use schedule_work() if you need to use flush_scheduled_work().
>>>>
>>>> In this case we don't call flush_scheduled_work -- ext4 does.
>>>
>>> Yes, that's why I changed recipients to ext4 people.
>>
>> Sorry, I hadn't noticed.
>> 9p is the one calling schedule_work, so ultimately it really is the
>> combinaison of the two, and not just ext4 that's wrong here.
> 
> Calling schedule_work() itself does not cause troubles (unless there are
> too many pending works to make progress). Calling flush_scheduled_work()
> causes troubles because it waits for completion of all works even if
> some of works cannot be completed due to locks held by the caller of
> flush_scheduled_work(). 9p is innocent for this report.
> 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
