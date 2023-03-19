Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 856906C0124
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Mar 2023 12:54:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pdrcC-0004AD-Q6;
	Sun, 19 Mar 2023 11:54:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pdrcA-0004A7-R8
 for v9fs-developer@lists.sourceforge.net;
 Sun, 19 Mar 2023 11:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hUkpQYX6FPbHROaRClNRBhcGdvpGKHhE07K6SZ+ej8A=; b=QBOTKGbNvbrn9f3X/3j+CsH3CU
 c7C/1/FBHbKpcVg7w4hiV9imYhFo+hf+iI3VfNk81m0+/TVU3+vug6QfPfveDVOMRCrwMDo+fG1Aa
 t4UCFuMP6Dx/8E33dm2HSSnYikUUE/wgVXbAYSc96KE2VrhhRg9yuYWs9gjeeaT4XbeQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hUkpQYX6FPbHROaRClNRBhcGdvpGKHhE07K6SZ+ej8A=; b=bMIIb88YE45ll92rfTl/pzh0Bc
 qeqC7cfXwzVphET+NhZcz0Ty20kXMSVg0FHDG54ICwkOrQWvJp2BpHeR4xhMOGAmpnzf7S8QXozLf
 uUqSIn/gnMr7KhaHq6gJlzlS3MOqDQq260U7S9ipIzUiegOfIi109teI2HeonQQd+VFo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pdrc8-00DTH3-FS for v9fs-developer@lists.sourceforge.net;
 Sun, 19 Mar 2023 11:54:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4028AC01F; Sun, 19 Mar 2023 12:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679226848; bh=hUkpQYX6FPbHROaRClNRBhcGdvpGKHhE07K6SZ+ej8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4saFNJu/dyVz7/ZJ3AgtW1h+dpqdSN9pLzQT1bY58NJcHTilSbRgID+PJTEbJisVD
 I9AGsalDYB2C42ZajS592H1w11urO/ukTjRJy3oslqSjebp34K3AQScduQPMYlDbZb
 Hx5s/TIf8X3BTX3IMbZ3pN1XHgJZPaFkDghN1oKmqNtXXhT8P2tKw0wUFQJUy4Xw2U
 MPvtrtL52ibviQKPajtCGTpCX78uL9PimsJgUz6BKnPoWovfejZloHhlpJKsLQB7k2
 Gl/3RFXzDUQnmQCFlsudFetzJBvRfZXumREU4xes6dZRPPWKZVRrECN06T2VI4m0Pp
 csp1oZqEUFWyg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8E85CC009;
 Sun, 19 Mar 2023 12:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679226846; bh=hUkpQYX6FPbHROaRClNRBhcGdvpGKHhE07K6SZ+ej8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G+N8gE/osiXg9+nhDZhsyAVaGQPptayRIoxjsd8/+0dle2IuZzQ/xCNTWangClAgC
 Y8to+5J7Ii+/zoS+ft2xiMVBT5NaQY11okLnQk3CO928AnAi3grC2LGT9i6iQgqN2N
 VcTtynNyoNxYeHqTcpkqOamIAZLSyegNm/HRUsEu8mSlAiwEcbXaJmMTjw5s0Hqy6p
 DIUlpwZioJPKBhQPvHpG+vqqhSZbaULTaZZxXmfuVDhrJxu4Cu5dFTT/Q8v6ao7tDq
 juPuwzd5V38NWooVutcMqBEbjfOUcXCWXgkAPaI3pgAg49dtfZFWb96dcLX9b/DyWc
 EsLjHCh4JlNXw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2cc1ba83;
 Sun, 19 Mar 2023 11:54:01 +0000 (UTC)
Date: Sun, 19 Mar 2023 20:53:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <ZBb3ynXntaom/0hg@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <2973654.udxrvWzM6v@silver> <Y+q7vvc2Sek8d7wG@codewreck.org>
 <2526146.SOovFYVi4y@silver> <Y+ttlog6sth3vPHJ@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+ttlog6sth3vPHJ@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It's been a while but I didn't forget... Dominique Martinet
 wrote on Tue, Feb 14, 2023 at 08:16:38PM +0900: > > Yes, apparently it tries
 to write dirty pages of the mapped file and keeps > > hanging there
 [fs/9p/vfs_inode_dotl.c:586]: > > Ye [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pdrc8-00DTH3-FS
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
Cc: Jens Axboe <axboe@kernel.dk>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Pengfei Xu <pengfei.xu@intel.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

It's been a while but I didn't forget...

Dominique Martinet wrote on Tue, Feb 14, 2023 at 08:16:38PM +0900:
> > Yes, apparently it tries to write dirty pages of the mapped file and keeps
> > hanging there [fs/9p/vfs_inode_dotl.c:586]:
> 
> Yeah, it'd help to get the trace of the thread actually trying to do the
> IO, if it still exists.
> I had some hangs in the check that there are no flush in flight at some
> point, and I thought I fixed that, but I can't really see anywhere else
> that'd start hanging with this... it'll be clearer if I can reproduce.

I couldn't reproduce this one, but manually inspecting
p9_client_wait_flush again I noticed the wait_event_interruptible was
waiting on req->flushed_req->wq but looking at req->status in the
condition; that was an error.
Also, we have a ref on req->flushed_req but not on req, so
req->flushed_req wasn't safe.

I've changed the code to add a variable directly on req->flushed_req and
use it consistently, I'm not sure that's the problem you ran into but it
might help.
It's been a while but do you remember if that hang was consistently
happening on shutdown, or was it a one time thing?

Either way, I'd appreciate if you could try my 9p-test branch again:
https://github.com/martinetd/linux/commits/9p-test


With that said, I expect that p9_client_wait_req will cause hangs on
broken servers.
If connection drops hopefully the reqs will just be marked as error and
free the thread, but I can see syzbot complaining about yet another
thread stuck.. Well it's interruptible at least, and bails out on
ERESTARTSYS.


> Anyway, I found another bug, just running ./configure on a random project
> (picked coreutils tarball) fails with interrupted system call ?!

That other bug was weird, I could reproduce it reliably until I rebooted
the host because of an unrelated nfs bug on the host, and after reboot I
couldn't reproduce anymore.
I'll chalk it down to buggy host/weird happenstance, but something to
watch for if random EINTR happen again :/

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
