Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 778165F77B2
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Oct 2022 13:53:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogluz-0005O6-1A;
	Fri, 07 Oct 2022 11:53:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1ogluw-0005NI-Up for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 11:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DPm8Ve5BwlbYIklhB0I+zd8Uhh4UeeNoLhvCanmXkZ0=; b=OYx255LeqjdrB1DMAa1Wps4r43
 EHHxHUFFAyTOtY+UKlM7kyjnzQ1TUgbTyEg9lKpEjBDQTAWZxOB8IgdRTk6oD68/x3FHmEHffOOEU
 cf4wtYWI5cUY7/2orvFJCKf/aTEEI/xa+d1TViLOwSmO0PHK7WIIz4PoSouH94XpErJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DPm8Ve5BwlbYIklhB0I+zd8Uhh4UeeNoLhvCanmXkZ0=; b=BzydvPKrhgQrxQV5fA5WAS6jlM
 m8AOx1vAdXMU15CjCHDVUyoJ1T0ahl6o7Ym4lCKVT2PDdiUYB/EfYabpM4wmhuWvPpAeN3PppxHKK
 MXL4+eCoOOIcZi/U6o13IUjZ6GGAAq57ybKWtaN11YMzIAtSZvs3DILvnCUSinltPf3o=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogluu-0006d8-Oj for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 11:53:26 +0000
Received: from fsav113.sakura.ne.jp (fsav113.sakura.ne.jp [27.133.134.240])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 297Bqjsi041794;
 Fri, 7 Oct 2022 20:52:45 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav113.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav113.sakura.ne.jp);
 Fri, 07 Oct 2022 20:52:45 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav113.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 297Bqi3r041791
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 7 Oct 2022 20:52:45 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <0362d03f-9332-0b37-02e0-2b1b169f4c6f@I-love.SAKURA.ne.jp>
Date: Fri, 7 Oct 2022 20:52:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
References: <00000000000039af4d05915a9f56@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
 <69253379.JACLdFHAbQ@silver>
 <e96a8dce-9444-c363-2dfa-83fe5c7012b5@I-love.SAKURA.ne.jp>
 <YxPlzlJAKObm88p8@codewreck.org>
 <38d892bd-8ace-c4e9-9d73-777d3828acbc@I-love.SAKURA.ne.jp>
 <Yz+Di8tJiyPPJUaK@codewreck.org>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <Yz+Di8tJiyPPJUaK@codewreck.org>
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/10/07 10:40, Dominique Martinet wrote: > Tetsuo Handa
 wrote on Sun, Sep 04, 2022 at 09:27:22AM +0900: >> On 2022/09/04 8:39,
 Dominique
 Martinet wrote: >>> Is there any reason you spent time wo [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ogluu-0006d8-Oj
Subject: Re: [V9fs-developer] [PATCH v2] 9p/trans_fd: perform read/write
 with TIF_SIGPENDING set
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/10/07 10:40, Dominique Martinet wrote:
> Tetsuo Handa wrote on Sun, Sep 04, 2022 at 09:27:22AM +0900:
>> On 2022/09/04 8:39, Dominique Martinet wrote:
>>> Is there any reason you spent time working on v2, or is that just
>>> theorical for not messing with userland fd ?
>>
>> Just theoretical for not messing with userland fd, for programs generated
>> by fuzzers might use fds passed to the mount() syscall. I imagined that
>> syzbot again reports this problem when it started playing with fcntl().
>>
>> For robustness, not messing with userland fd is the better. ;-)
> 
> By the way digging this back made me think about this a bit again.
> My opinion hasn't really changed that if you want to shoot yourself in
> the foot I don't think we're crossing any priviledge boundary here, but
> we could probably prevent it by saying the mount call with close that fd
> and somehow steal it? (drop the fget, close_fd after get_file perhaps?)
> 
> That should address your concern about robustess and syzbot will no
> longer be able to play with fcntl on "our" end of the pipe. I think it's
> fair to say that once you pass it to the kernel all bets are off, so
> closing it for the userspace application could make sense, and the mount
> already survives when short processes do the mount call and immediately
> exit so it's not like we need that fd to be open...
> 
> 
> What do you think?

I found that pipe is using alloc_file_clone() which allocates "struct file"
instead of just incrementing "struct file"->f_count.

Then, can we add EXPORT_SYMBOL_GPL(alloc_file_clone) to fs/file_table.c and
use it like

  struct file *f;

  ts->rd = fget(rfd);
  if (!ts->rd)
    goto out_free_ts;
  if (!(ts->rd->f_mode & FMODE_READ))
    goto out_put_rd;
  f = alloc_file_clone(ts->rd, ts->rd->f_flags | O_NONBLOCK, ts->rd->f_op);
  if (IS_ERR(f))
    goto out_put_rd;
  fput(ts->rd);
  ts->rd = f;

  ts->wr = fget(wfd);
  if (!ts->wr)
    goto out_put_rd;
  if (!(ts->wr->f_mode & FMODE_WRITE))
    goto out_put_wr;
  f = alloc_file_clone(ts->wr, ts->wr->f_flags | O_NONBLOCK, ts->wr->f_op);
  if (IS_ERR(f))
    goto out_put_wr;
  fput(ts->wr);
  ts->wr = f;

 from p9_fd_open() for cloning "struct file" with O_NONBLOCK flag added?
Just an idea. I don't know whether alloc_file_clone() arguments are correct...



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
