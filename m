Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F284EB84C
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 04:30:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZO65-0002MP-Az; Wed, 30 Mar 2022 02:30:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nZO64-0002MJ-CA
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 02:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdKHDKIHNDK3SV6b1Pqh98L2dlKohpJZeeDW7bMGvYc=; b=Wp3qteP4uhIv/fLb7es991FPJM
 85hE07E9IXjbrxX/ztqL3QWyWp8bFzfq2V91z9nsTNWjAHRA2oUJk/yOs20ISkjOGYTCpqa2rTB7R
 o8KpRf9Uw1mZlOMCEI1ra3MXtLbNKRxkWeMCvv462IN3pzmF317y0tQn0IsR5xleGM+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bdKHDKIHNDK3SV6b1Pqh98L2dlKohpJZeeDW7bMGvYc=; b=QaoMOMUCPuaGo0z4dpclfR1w0E
 2JLYqtXhdPVXyC3/JXRVi/8ScNrborne4YgawRPfxCX7XcI9b1GFdLzQFfCtKToi+FRsQkK1cMXSa
 IT8vUc95XlMbz7EHHStB3C2knZlfoYOG9T4s1gL1ngyeHKGHPGTA6oDyOufnZzOijqs8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZO61-00Gbgx-OQ
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 02:30:06 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4C661C01E; Wed, 30 Mar 2022 04:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648607399; bh=bdKHDKIHNDK3SV6b1Pqh98L2dlKohpJZeeDW7bMGvYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rQO/bvdjVLOA7rftxN9vzdFVsLwSNkr7SIkzfOznSn9FxrYdCKnIZJEib2mP09ZwV
 ZpF3C4DvvKi+aPq2jH5g5/yigqttgPDkrjCXc4BnDa4g2H7TjeTMbYUPszNEhB0zAD
 5Zv/+qox9cJBSTGcSzxHjl1VGUuV2JnYBrIuzFY+JhEMGhE4bRDITdazD05PHRXRcF
 g0vwMYX9IEMxjlNcmOfcorfxSowWHb18B431AdW75hU9xcRVXSijw+MKsjdsSBK0gW
 GQCPAf7EPSGZyLTvnIqvSl09INYyQEBIndBzz5Jv0bwtUlK61J7kfM6NDZAd1gkQyE
 KHrBH4coLVk1Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 23616C009;
 Wed, 30 Mar 2022 04:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648607398; bh=bdKHDKIHNDK3SV6b1Pqh98L2dlKohpJZeeDW7bMGvYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RSbQrrphVo5YOvwmvw1ndEiSTropwRH61zuG6mSJHUhv/+R9vdtzhRkRZMgJWQtSU
 hULss14sVow7TDWhUzdONGSe5Zk0q9qAvxTsygRBv/fhstgSOLg8KQGog/fgg9QcOg
 Je++J73BfrLLbQ2/Z5qtAUwyMZUNc+MLZIT9tFAcKCbL6D+P/B5q8uLTElCC1+49bD
 l4vctZxO3QZbPcFKBVJw2fgO/S0Kpcz3mxdTKfD5bs+QQUFn4XBzSzwCABpaEI1X9m
 mI5ccEfg9qPbugaSw0TaFP9JGtXP6gSlJ67TvudVq1N8sjDXWC6aTtMqMUxYk90KND
 AfAFDTWeI6cTA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6c549303;
 Wed, 30 Mar 2022 02:29:53 +0000 (UTC)
Date: Wed, 30 Mar 2022 11:29:37 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YkPAkXVc4HZLUrGl@codewreck.org>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
 <YkObebLZMp5AyRpr@codewreck.org>
 <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Wed, Mar 30, 2022 at 10:57:15AM +0900:
 > >> Please don't use schedule_work() if you need to use
 flush_scheduled_work().
 > > > > In this case we don't call flush_scheduled_work -- [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nZO61-00Gbgx-OQ
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
Cc: Andreas Dilger <adilger@dilger.ca>,
 Andrew Perepechko <andrew.perepechko@hpe.com>, Theodore Ts'o <tytso@mit.edu>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tetsuo Handa wrote on Wed, Mar 30, 2022 at 10:57:15AM +0900:
> >> Please don't use schedule_work() if you need to use flush_scheduled_work().
> > 
> > In this case we don't call flush_scheduled_work -- ext4 does.
> 
> Yes, that's why I changed recipients to ext4 people.

Sorry, I hadn't noticed.
9p is the one calling schedule_work, so ultimately it really is the
combinaison of the two, and not just ext4 that's wrong here.

> > The problem is mixing in the two subsystems when someone (e.g. syzbot)
> > opens an ext4 file and passes that fd to 9p when mounting with e.g.
> > mount -t 9p -o rfdno=<no>,wfdno=<no>
> > 
> > Frankly that's just not something I consider useful, interacting through
> > 9p to a local file doesn't make sense except for testing.
> > 
> > If that is a real problem, the simplest way out would be to just forbid
> > non-socket FDs if it's something we can check.
> 
> Do you mean that p9_fd_open() in net/9p/trans_fd.c does not need to
> accept non-socket file descriptors?

Yes, I can't think of any valid usage that would involve non-socket fd
there.
It might be useful to leave as a test vector, but if it causes problems
I think it's perfectly OK to just refuse these.

> Then, it's something you can check. You can use S_ISSOCK() like
> e.g. netlink_getsockbyfilp() does

Thanks for the example
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
