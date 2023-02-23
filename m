Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8816A125C
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Feb 2023 22:54:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVJYD-0003ZE-P6;
	Thu, 23 Feb 2023 21:54:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pVJYC-0003Z7-L4
 for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 21:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=reA3VUL8Z7JfRcMTuxTjKDsdG4dKlbJkxs0wgHTIrtQ=; b=YdTPNqjGHTTRcS1cAaiAU5wEix
 7dJhHJ8QEqNAxZ/ToXqgFXoNW5LGw1OZ9mTllorwsw2EFidG5TCE6Qz/GvwPFlbQpH9fTKtFuQApt
 jy2C11c9kDiTArFbNxmafgMJUC6I9rFIRT6bmkvU19bpmwReYEzN5VBLXoD9XUgvbxJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=reA3VUL8Z7JfRcMTuxTjKDsdG4dKlbJkxs0wgHTIrtQ=; b=KOKQj2Jh+YGt8moPhQhS7Abvxn
 2WOCWTakQ9vWJi+xpjCObEZ+PvEAlKBWh0qnwFZgqPaw96/rwCFbZ/PpV1yigLOehOGPq/aU/94vY
 AZXgk0H99Es0+IypZ9V51QGurC/NJEO7/TtQEHzihjWaso9NRlUYYVkwy5c/4Xj14w3k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pVJY7-0008Ay-ER for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Feb 2023 21:54:51 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B4B36C01D; Thu, 23 Feb 2023 22:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1677189304; bh=reA3VUL8Z7JfRcMTuxTjKDsdG4dKlbJkxs0wgHTIrtQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fQny8m1Gzw/+wuy+cpMCe2Ge0n+EUrwlBN0vlGRfGgRNM1Rtfshmx2AR/5nehjOQk
 9S6i4GhP/A241B9bDvsepxYpowGkltzQ/N8gUw2X2NoYK0T3HSpajvX7oC/qT1ijl/
 Rjc8GI0G8Db7L/Z9yIMUmQrzK9tly0AxPxDyp1vVbJfwY5WANZ6vm+QcXCSAxURVzS
 0JIrHJwpu0o0BRozUvDO8dlIr9tbPZMz8r+jJg2efjjdTgPBWVQjvl/M0dDd8QkPeY
 y3490G60d7jjkPJMLnFDJRTs4y5B+43yfReuEE/dYu8SF3aeje3YzJTbk/03mwzkZn
 HGGnKvbbcvWCA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 97563C009;
 Thu, 23 Feb 2023 22:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1677189303; bh=reA3VUL8Z7JfRcMTuxTjKDsdG4dKlbJkxs0wgHTIrtQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gz7rzaQIHMDQRacNoihxYHFQIbkFMbIVZUv4gobYwKbQX7ihcmh3xrCWoUpKErZos
 E0v9xB/QQDpQiEzJwk7z28qtcRTKV03XMjNtkg5G3t7WP7jtGtKI3V0so1P5DOHgtJ
 hv3oEKkXLrTt2CX5M0il6qoPeyVk0pfUWGNaQpbchVUIaUZjvziOOCrZgjC4vul+VZ
 r4AQ/MDU86c3+ZLUC0bHoab02rWZSJ3VQInkb6irpTWU4Tm09lmjawjAQRYzsTEP2u
 1oXG2Q7EarPLIihdYNSBztlpNXmGKvlAee3HrOHVYlT81C0HyWWDCwJTqyr9X4etqA
 IbXpnNa08aJXg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 775e6561;
 Thu, 23 Feb 2023 21:54:33 +0000 (UTC)
Date: Fri, 24 Feb 2023 06:54:18 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <Y/fgil/uXLAisE9/@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <Y/CC3qyBFSFVI/S0@codewreck.org>
 <CAFkjPTnVmhJ6Qc7wjgR+QNQ4ma-NmQSW=PKcXkC1FkDZA00stw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTnVmhJ6Qc7wjgR+QNQ4ma-NmQSW=PKcXkC1FkDZA00stw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Thu, Feb 23, 2023 at 10:48:42AM
 -0600: > just as an update, I've been working through the comments and have
 a > private branch with some changes for review, but I'm consci [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pVJY7-0008Ay-ER
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Thu, Feb 23, 2023 at 10:48:42AM -0600:
> just as an update, I've been working through the comments and have a
> private branch with some changes for review, but I'm conscious of
> running up against the merge window so I think I'm going to submit a
> subset which were signed off along with the 9p-next ones
> today/tonight.  The branch is already published to github/kernel.org
> as for-linus-6.3

(hmm, doesn't look like in kernel.org's:
https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
I found it on github; I think keeping two "trees" is slightly confusing
so would suggest keeeping a main one for communications, I'm not sure
how to properly communicate one is the backup of the other)

> -- someone double check me and make sure that all
> looks sensible.  It passed all my tests a couple days ago, I was just
> optimistically trying to fix the others up, but I think I'd rather go
> safe than sorry.

Thanks for picking up my patches!


The first one (b5c2265f7b9f 9p/virtio: add a read barrier in
p9_virtio_zc_request) was actually ready for the previous merge window
but I was notified that it makes an existing race worse in... wait, that
mail had linux-kernel@vger and v9fs-developer in cc but doesn't show up
in any archive?... I've quoted the relevant part when replying here:

[1] https://lore.kernel.org/all/Y5hbXanne5IryJBV@codewreck.org/T/#u

The mail had broken the thread so it's no wonder you didn't see it :/

Anyway, TL;DR is virtio's behavior when wait is interrupted isn't quite
correct, I'd tend to prefer keeping the status quo of no barrier even if
it makes absolutely 0 difference for x86 afaik.



Also, meta-question regarding sign-offs: I wonder if you'd technically
need to add your's to all commits (including the ones I did sign off)
since my understanding is it tracks the origine of the patch? But
honestly I've never really understood this, happy to send as is and see
if Linus complains.


With that said all othre commits look good, the cache change you picked
might introduce a very slight difference of behavior with cache=mmap but
I don't think that'll break anything given what we tested so far.
If you can wait this weekend I'll run some quick tests this weekend, but
if you'd rather send early ok anyway.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
