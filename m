Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFE05F7291
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Oct 2022 03:41:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogcMF-0001so-UX;
	Fri, 07 Oct 2022 01:40:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ogcME-0001sh-D3
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rzoBfsAiCdEWZQ20WCaCW3PZC2FVyXXDBzt8MmnFLEA=; b=H+IHkgnOs0ivHeBjgHQSB36LOs
 xS+neE+Ve4rYVPxnJXejA3+k2TCT0XxrhKQ1bjTbwZwQI5oZkxVfGU7mjtoc0AesmivxE3kGkMnGl
 68lkbjYAQ9p1v8iBpUYStIQ3fU9MK8tiElddFDH3NEIpWIa7xeH4mJERsKcX5Grh9m9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rzoBfsAiCdEWZQ20WCaCW3PZC2FVyXXDBzt8MmnFLEA=; b=JkZiM0YubrCuijPxHAd7sfQyrN
 I44CelH4KVp6xBkI/EflsoehDrt1m61GNNwBoLQe1uua8T/mAfAvw6aOhmhtjP5g+xfiOq+IB60FA
 9cONVQb5jTC9gprfwpngqczgz10Z0k9R3U8WgyCAnqK/gE9ncXiS0abqi22PmFavg4XI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogcMB-00068G-RV for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:40:58 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 49960C01C; Fri,  7 Oct 2022 03:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665106849; bh=rzoBfsAiCdEWZQ20WCaCW3PZC2FVyXXDBzt8MmnFLEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VXpSDetbKGqvRvd3qmLOF2C2HLYQ5r5IFfpIKb9JQMZ65k3L9xxAGgRIPChT4vRX5
 UpqY1f080hL8BUWwivmThmEbtlLXunQrbvX78eyw8vtoxTYAJaH1Fv2DwvY0s7i7kc
 WHEN8NbB7DkPnn1V8xfboBc2n5gzqVr8fOYGufKlOx3fp4QtKFnoRtIQEMHf4rt++Q
 A8solBbRy+pldK9SJc6RT0rKbwUTgN7DyJwRgalj2PN+4KIo8SSw6g1ISJRuMCt3ms
 pJ2VDHYigwxvclJJwgPrpWZEbbieTg4rXK54B5LDXHL89aj0gPr6P88745BRnVmSeL
 ih+McuJgH16/A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 14BF6C009;
 Fri,  7 Oct 2022 03:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665106848; bh=rzoBfsAiCdEWZQ20WCaCW3PZC2FVyXXDBzt8MmnFLEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lG/j5Hy41YweyC74PFrJP4/crGLUSOa5BMJbxgJ3I5Ly6Qfa3KZMoLuVV17hvKzMA
 W9mn/2gismC43drGOrsegXOqEoGQyIfKV9gBy5vl5B8OWKB2WmHnw3hwJsTAiAxu0c
 ku4cHwyp8yUuo/dYiBj+lq2Q2eV5CuHcvUQoFGldBHhyUPUWtNLJDpvOUz/UOERQOg
 6Jp2wLU2Ogz78EUC7Nvd6IbygR8Xq7SXQFeQtII4qiSY87o0QRhRo/gmMC1h92DEFT
 R09SBdhD5YlcV9SKn7Z2QKLtVeHpZ4Tc+RPKmONracCekA7SL2omodZaEkF2O0Axz/
 xGTg8Txpqa3QQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e4b8ba3e;
 Fri, 7 Oct 2022 01:40:42 +0000 (UTC)
Date: Fri, 7 Oct 2022 10:40:27 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <Yz+Di8tJiyPPJUaK@codewreck.org>
References: <00000000000039af4d05915a9f56@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
 <69253379.JACLdFHAbQ@silver>
 <e96a8dce-9444-c363-2dfa-83fe5c7012b5@I-love.SAKURA.ne.jp>
 <YxPlzlJAKObm88p8@codewreck.org>
 <38d892bd-8ace-c4e9-9d73-777d3828acbc@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38d892bd-8ace-c4e9-9d73-777d3828acbc@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Sun, Sep 04, 2022 at 09:27:22AM +0900:
 > On 2022/09/04 8:39, Dominique Martinet wrote: > > Is there any reason you
 spent time working on v2, or is that just > > theorical for not [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ogcMB-00068G-RV
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

Tetsuo Handa wrote on Sun, Sep 04, 2022 at 09:27:22AM +0900:
> On 2022/09/04 8:39, Dominique Martinet wrote:
> > Is there any reason you spent time working on v2, or is that just
> > theorical for not messing with userland fd ?
> 
> Just theoretical for not messing with userland fd, for programs generated
> by fuzzers might use fds passed to the mount() syscall. I imagined that
> syzbot again reports this problem when it started playing with fcntl().
> 
> For robustness, not messing with userland fd is the better. ;-)

By the way digging this back made me think about this a bit again.
My opinion hasn't really changed that if you want to shoot yourself in
the foot I don't think we're crossing any priviledge boundary here, but
we could probably prevent it by saying the mount call with close that fd
and somehow steal it? (drop the fget, close_fd after get_file perhaps?)

That should address your concern about robustess and syzbot will no
longer be able to play with fcntl on "our" end of the pipe. I think it's
fair to say that once you pass it to the kernel all bets are off, so
closing it for the userspace application could make sense, and the mount
already survives when short processes do the mount call and immediately
exit so it's not like we need that fd to be open...


What do you think?

(either way would be for 6.2, the patch is already good enough as is for
me)
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
