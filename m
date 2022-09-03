Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F265AC1B9
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 01:41:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUcl1-00045u-9M;
	Sat, 03 Sep 2022 23:40:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oUckq-00045X-7x
 for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Sep 2022 23:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zb9XsnnNwueUjSy+hlSu1JgZEiThAH1fGuYBaT0Yg/k=; b=kpCwZckfev7qlaZdlxhEF96er2
 sh2ERUJ/mG/G0dIKjVCy+zcQEFXw+PWVWWxmTu4JJT7Cd19iqQTsHNkV1v27JD8ryuv084EE/r0Y0
 imlkOY6ujvAxTKaaWG4GXbwEG0HcROPeshAFtrb8tKuGOPmYB3GJe5XUoc2VL7Fjy+3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zb9XsnnNwueUjSy+hlSu1JgZEiThAH1fGuYBaT0Yg/k=; b=VbgwNb0W5VmZp22Uezdsvf3l21
 pa1up573z4z2wF/WvHNExbUfSLXrhouvudAi6+vQObST5JP5fPLcBm8r5mfWXEYGOLWHsUvFncEDI
 1aImXNLFqOLvDDaaULBLLhdm8KQbw7DDFtZxGlbVV0SHfqckFtEWkSy9keWL3yicN6/o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUckW-0005qw-7M for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Sep 2022 23:40:39 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5C442C01D; Sun,  4 Sep 2022 01:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662248419; bh=Zb9XsnnNwueUjSy+hlSu1JgZEiThAH1fGuYBaT0Yg/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CXh0DE6iRXCMpLTLHBDxKaMrfPdmAG+fS5+9nYIVpLT8flPEShAoU5yb203+Z/tVC
 WRD1d4s1Wk11rGi1o076HKX7p7hiyViNa9q4m09W9kYzxRoyw2N49R72TrEpAujh1j
 tgswKIZuDQrDZMiyYm3hlp0/qNgP5H2qJis9gall2OVAknEZPf4pqHFdliEyev/0ag
 /TJSCYBGEZgLH3AhOq+zEQLhFV/LXYbV1zTCfhTj5ZKaOusQWwIZC8oCw+MGLEL8tg
 7lwAhxO2S2XNAezWkvch3H7mzNo9HsNWd3tZXI58U3S39pcEkn3ZOrWmE2e4eMr1Ab
 /FpOxPdMaMVrQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0A14CC009;
 Sun,  4 Sep 2022 01:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662248418; bh=Zb9XsnnNwueUjSy+hlSu1JgZEiThAH1fGuYBaT0Yg/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZCUr0GxKn41SI9WAWgnpiq1VN7rfyxo03hjwIlDDBU7jdGotYknViNGESJReHs39O
 9S9vgUz4s6EizgsvXcbgrUO9bTdg67PRC6moqLk8qk7aRmF0mBmLUY+j37zlZOQOsE
 BuMl2YQcUnsoB9D/QlkH91dqKI3B741lmIiy48RsJwC1EUSK6Cosp7Ll1gMmyTGAT8
 d24AbeJpL5cIMGpw4TKCVN22Ur2gC3VVOubJepZH5/aF1V7mZgwWh/6NOKBlxKHtx2
 KJZIBh5elyLjb24e1UzndgbUs3ycXnHYBhacyUTGWljR5soOzxPDWNKnfAxOtCywmv
 I/c1BKgadyJ8g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f293b310;
 Sat, 3 Sep 2022 23:40:13 +0000 (UTC)
Date: Sun, 4 Sep 2022 08:39:58 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YxPlzlJAKObm88p8@codewreck.org>
References: <00000000000039af4d05915a9f56@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
 <69253379.JACLdFHAbQ@silver>
 <e96a8dce-9444-c363-2dfa-83fe5c7012b5@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e96a8dce-9444-c363-2dfa-83fe5c7012b5@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks for the patch and sorry for the slow reply v1 vs v2:
 my take is that I think v1 is easier to understand, and if you pass a fd
 to be used as kernel end for 9p you shouldn't also be messing with it so it's
 fair game to make it O_NONBLOCK -- we'r [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oUckW-0005qw-7M
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

Thanks for the patch and sorry for the slow reply

v1 vs v2: my take is that I think v1 is easier to understand, and if you
pass a fd to be used as kernel end for 9p you shouldn't also be messing
with it so it's fair game to make it O_NONBLOCK -- we're reading and
writing to these things, the fds shouldn't be used by the caller after
the mount syscall.

Is there any reason you spent time working on v2, or is that just
theorical for not messing with userland fd ?

unless there's any reason I'll try to find time to test v1 and queue it
for 6.1

Tetsuo Handa wrote on Fri, Sep 02, 2022 at 07:25:30AM +0900:
> On 2022/09/02 0:23, Christian Schoenebeck wrote:
> > So the intention in this alternative approach is to allow user space apps  
> > still being able to perform blocking I/O, while at the same time making the 
> > kernel thread interruptible to fix this hung task issue, correct?
> 
> Making the kernel thread "non-blocking" (rather than "interruptible") in order
> not to be blocked on I/O on pipes.
> 
> Since kernel threads by default do not receive signals, being "interruptible"
> or "killable" does not help (except for silencing khungtaskd warning). Being
> "non-blocking" like I/O on sockets helps.

I'm still not 100% sure I understand the root of the deadlock, but I can
agree the worker thread shouldn't block.

We seem to check for EAGAIN where kernel_read/write end up being called
and there's a poll for scheduling so it -should- work, but I assume this
hasn't been tested much and might take a bit of time to test.


> The thread which currently clearing the TIF_SIGPENDING flag is a user process
> (which are calling "killable" functions from syscall context but effectively
> "uninterruptible" due to clearing the TIF_SIGPENDING flag and retrying).
> By the way, clearing the TIF_SIGPENDING flag before retrying "killable" functions
> (like p9_client_rpc() does) is very bad and needs to be avoided...

Yes, I really wish we could make this go away.
I started work to make the cancel (flush) asynchronous, but it
introduced a regression I never had (and still don't have) time to
figure out... If you have motivation to take over, the patches I sent
are here:
https://lore.kernel.org/all/20181217110111.GB17466@nautica/T/
(unfortunately some refactoring happened and they no longer apply, but
the logic should be mostly sane)


Thanks,
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
