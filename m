Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4125AA2FB
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 Sep 2022 00:27:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTsei-0007mL-Nv;
	Thu, 01 Sep 2022 22:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oTseh-0007mF-JY for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 22:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7LpUCSDAWXiExrOJOQNmVYWEh/gctZhHFq87KO6CkI4=; b=JidKQyJ4f/Dj9ldDwRxmx6Bt/Y
 cQpOpWdzvw8m7wqp7LbGAS85BfIGZZH2chKO6yjxMgs89KWSj4DGdx2xOqCbGg13W6JPBtO+EH1ZL
 cABV1WBCMH35KNlSBCx3mTw0XJVxsxEsb0EsVbw1x32i7KCH340V10HZx5jsBxBdwKI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7LpUCSDAWXiExrOJOQNmVYWEh/gctZhHFq87KO6CkI4=; b=DH9UZYRPq9QFENa7M4NoUULVpZ
 PScn3G4hqN+LSyIkktY9zKX/6HkVzbyZhL+AROgshe07GD52ZSZH6Y/kejuqYZCrOlBkS9Zc5DlvF
 4fJllAywtGRV5GW6RXn0xAlQJcWy6urh799xt9Mi1t/3++XG0TON9tLi2FzB9fpxraio=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTseg-0001HB-ES for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 22:27:23 +0000
Received: from fsav414.sakura.ne.jp (fsav414.sakura.ne.jp [133.242.250.113])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 281MPY1f007699;
 Fri, 2 Sep 2022 07:25:34 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav414.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav414.sakura.ne.jp);
 Fri, 02 Sep 2022 07:25:34 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav414.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 281MPY2R007696
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 2 Sep 2022 07:25:34 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <e96a8dce-9444-c363-2dfa-83fe5c7012b5@I-love.SAKURA.ne.jp>
Date: Fri, 2 Sep 2022 07:25:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: en-US
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
References: <00000000000039af4d05915a9f56@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
 <69253379.JACLdFHAbQ@silver>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <69253379.JACLdFHAbQ@silver>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/09/02 0:23, Christian Schoenebeck wrote: > So the
 intention in this alternative approach is to allow user space apps > still
 being able to perform blocking I/O, while at the same time making t [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oTseg-0001HB-ES
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
Cc: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, syzkaller-bugs@googlegroups.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/09/02 0:23, Christian Schoenebeck wrote:
> So the intention in this alternative approach is to allow user space apps  
> still being able to perform blocking I/O, while at the same time making the 
> kernel thread interruptible to fix this hung task issue, correct?

Making the kernel thread "non-blocking" (rather than "interruptible") in order
not to be blocked on I/O on pipes.

Since kernel threads by default do not receive signals, being "interruptible"
or "killable" does not help (except for silencing khungtaskd warning). Being
"non-blocking" like I/O on sockets helps.

>> --- a/net/9p/trans_fd.c
>> +++ b/net/9p/trans_fd.c
>> @@ -256,11 +256,13 @@ static int p9_fd_read(struct p9_client *client, void
>> *v, int len) if (!ts)
>>  		return -EREMOTEIO;
>>
>> -	if (!(ts->rd->f_flags & O_NONBLOCK))
>> -		p9_debug(P9_DEBUG_ERROR, "blocking read ...\n");
>> -
>>  	pos = ts->rd->f_pos;
>> +	/* Force non-blocking read() even without O_NONBLOCK. */
>> +	set_thread_flag(TIF_SIGPENDING);
>>  	ret = kernel_read(ts->rd, v, len, &pos);
>> +	spin_lock_irq(&current->sighand->siglock);
>> +	recalc_sigpending();
>> +	spin_unlock_irq(&current->sighand->siglock);
> 
> Is the recalc_sigpending() block here actually needed? The TIF_SIGPENDING flag 
> is already cleared by net/9p/client.c, no?

This is actually needed.

The thread which processes this function is a kernel workqueue thread which
is supposed to process other functions (which might call "interruptible"
functions even if signals are not received by default).

The thread which currently clearing the TIF_SIGPENDING flag is a user process
(which are calling "killable" functions from syscall context but effectively
"uninterruptible" due to clearing the TIF_SIGPENDING flag and retrying).
By the way, clearing the TIF_SIGPENDING flag before retrying "killable" functions
(like p9_client_rpc() does) is very bad and needs to be avoided...



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
