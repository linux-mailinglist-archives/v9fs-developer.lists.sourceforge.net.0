Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4575047F3
	for <lists+v9fs-developer@lfdr.de>; Sun, 17 Apr 2022 15:53:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ng5L4-00085L-6n; Sun, 17 Apr 2022 13:53:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1ng5L2-00085D-CH
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 13:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PcP8dW0ioRzK0xPAKsYs093XS1ccwWxt22yQcI8gb10=; b=J3TmPtZKq/L7hpA1RHwu/hLJbm
 DDx4SUgJ7X4ly6u1fQ6GkCPYlqqiHMCeVY9joYuj6U0/jH7OhWdssLquvmR+YhvQp2+/9g6ZICU3M
 3iowmy7X2wz9xyNf1QAtp2V4A6zu8NWfmg5uyT1MxTQi/Imc+Svtcpnc+Mc0m70blXRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PcP8dW0ioRzK0xPAKsYs093XS1ccwWxt22yQcI8gb10=; b=IeFPc56A6J1bT7NBab5EUSWccS
 ebZUUc0o4RqM2zvgVT5/YBL7Ju3oveTUXoqlcAO94HdZ5OwqjtmD8UHXfZW0ZNM3HsSHfrkPReSMU
 kZnaCUvSszW/PU0AaR74cKC2bbevIIyYcKbNInnQHOlLEdO51h3FZ9yNbnVt4C7hrW88=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ng5Ky-002BKU-Cq
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 13:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=PcP8dW0ioRzK0xPAKsYs093XS1ccwWxt22yQcI8gb10=; b=UWKQqpDU3c4xffoQchHhHqWtTF
 AXEk2xZp4BYO03KZEIoakG2oH9LcFksrrtvo5mbOSpkTWvoMCs5t/1G05OFZ45P7BqjydMR4cYhCC
 zN3SN8pe2rSsuGhMsiDHjJYv1/XrcKY24JgXuxd6jaglkBHWFybMIz+L2401kVVI10xW//dLag9eR
 jmgfJzCceE51uVsXGGW0usZGkUTbbcYgdpzrumtA+T8w+V1TLC8cYsvgl8PDd3XpBZe6c8xFrk0Nl
 2TV88rnxIMNzYLhRd3210SF2S21iWvoXPiwEotk9g7GHoXmvuaVCBrpR7C7mwX3cMUBkl+1nJB/4/
 gHIImD9PpNYzq5Hdfu0N7+BtSqbUhDzB2jgQaADaRupzo/m8HnOoP/hXViKBhZOguXEzU62MVkiiX
 9gcIGr+RkgSOR5KHhu4kk0OsDpBSuxqxrRxWnlKDRoAeLqIWussDZWLy/aTa7LPT9RrKmpBffKhTo
 +hBbZ02RmAjsVbTteL0SMzl5egXD1ObNErtMI2kBcyi8OR7KNHZVcyv9DIF8raE2C9LgZSqc0GWRb
 I4wqMu+OwMUqiONlMkvZTVys3X3V7gPj8t01J8KPH0Y/lBOnHcNaahlsV4xL8zNM+CSfCWQ+JfGfX
 AAdigAYdjiUeO5OtDSSLx4x3Q97c1cYevUPjJxrC0=;
To: asmadeus@codewreck.org
Date: Sun, 17 Apr 2022 15:52:43 +0200
Message-ID: <8420857.9FB56xACZ5@silver>
In-Reply-To: <YlwOdqVCBZKFTIfC@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2551609.RCmPuZc3Qn@silver> <YlwOdqVCBZKFTIfC@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag,
 17. April 2022 14:56:22 CEST asmadeus@codewreck.org
 wrote: > Christian Schoenebeck wrote on Thu, Apr 14, 2022 at 02:44:53PM +0200:
 > > > Yes, I'm not sure why I can't reproduce... All my c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ng5Ky-002BKU-Cq
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 17. April 2022 14:56:22 CEST asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Thu, Apr 14, 2022 at 02:44:53PM +0200:
> > > Yes, I'm not sure why I can't reproduce... All my computers are pretty
> > > slow but the conditions should be met.
> > > I'll try again with a command line closer to what you just gave here.
> > 
> > I'm not surprised that you could not reproduce the EBADF errors yet. To
> > make this more clear, as for the git client errors: I have like 200+ git
> > repositories checked out on that test VM, and only about 5 of them
> > trigger EBADF errors on 'git pull'. But those few repositories reproduce
> > the EBADF errors reliably here.
> > 
> > In other words: these EBADF errors only seem to trigger under certain
> > circumstances, so it requires quite a bunch of test material to get a
> > reproducer.
> > 
> > Like I said though, with the Bullseye installation I immediately get EBADF
> > errors already when booting, whereas with a Buster VM it boots without
> > errors.
> Okay, I had missed that!
> 
> I've managed to reproduce with git:
> https://gaia.codewreck.org/local/tmp/c.tar.zst
> 
> This archive (~300KB) when decompressed is a ~150MB repo where git reset
> produces EBADF reliably for me.

I'm glad you were able to reproduce these EBADF errors!

> From the looks of it, write fails in v9fs_write_begin, which itself
> fails because it tries to read first on a file that was open with
> O_WRONLY|O_CREAT|O_APPEND.
> Since this is an append the read is necessary to populate the local page
> cache when writing, and we're careful that the writeback fid is open in
> write, but not about read...
> 
> Will have to think how we might want to handle this; perhaps just giving
> the writeback fid read rights all the time as well...
> Ran out of time for tonight, but hopefully we can sort it out soonish now!

I fear that would just trade symptoms: There are use cases for write-only 
permissions, which would then fail after such kind of simple change.

Independent of this EBADF issue, it would be good to know why 9p performance 
got so slow with cache=loose by the netfs changes. Maybe David has an idea?

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
