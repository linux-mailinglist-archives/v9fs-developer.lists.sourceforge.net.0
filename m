Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9321A04F1
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Apr 2020 04:35:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLe5g-00020x-0o; Tue, 07 Apr 2020 02:35:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <l29ah@cock.li>) id 1jLe5f-00020q-1R
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 02:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vqLfdHvn0ODJzqesADMJDwHBTeRz7PwDzCmZBR0ETSk=; b=d4jPCS3Xu173rXGNrZ8Roy6qCF
 pnlTGjyNOUkzN7DZbAaH1EB1joCZEhSWzTLd6Xv0zguDXKskjkYEu18VMpvvN7Dry0Pq9MZScefPN
 eMPGp7t2bnEJnUuvIuCE+UY3jE+xbEF5DfEa97QD/zu8PSH4qETZxaZPvhkDQ8Xn4hyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vqLfdHvn0ODJzqesADMJDwHBTeRz7PwDzCmZBR0ETSk=; b=Y9U3/zhyKpzXR1ePWn2UBEQsV9
 FYWpOuMg2Ykt0M9rQZgrm4lnQO50J2aTrbVFpZao9MO3l/7g5pIrbv+LV0ixlKnoG05jA65eyfpe1
 uzLwO7Zlsb+oxyCPyI+6cr7XU5XVvAOr8HlGzC2jpojiMGZySci1pFCXIIXLeINEZ37o=;
Received: from mail.cock.li ([37.120.193.124])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLe5Z-009kFo-EU
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 02:35:50 +0000
Date: Tue, 7 Apr 2020 05:16:26 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cock.li; s=mail;
 t=1586225788; bh=qGyX1HAPEsmwawjGfgfHc62Pd/1AP3V4lb8GMUPYgI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lll4n0UHK6zDbeXwmQeKbYCRle2Ckod6ONDIFvBXJyYIA9WflPyz/XHG+MRCZUejl
 M+jyxLy+2MpfcpUpXUEDtgK6Szd63wYw8dhGw08NPLVwr/6+6fo1+x/1X1HcuXYW/2
 t2TkRHYH7UKLknO71pouxikDYwLUw6aqyaWjsIK7kI8dGC5DtFFYoi0zZguqHhnmn5
 CLn6tUYNvcMwLG5Q1qUVJ7cZ9OWILgZfvrh8CFlSMXxc/FxB3Y1Sin/3Y1URUVbdSY
 Mrl+7rLPbx6qAAHREDghiv3oHkjTka4qNdnRgUw5WMpf2mMeCN4FPja9PkhTCDHJPO
 pv41uqpfKQm4g==
From: L29Ah <l29ah@cock.li>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200407021626.cd3wwbg7ayiwt4ry@l29ah-x201.l29ah-x201>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406164057.GA18312@nautica>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pasp.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLe5Z-009kFo-EU
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 06, 2020 at 06:40:57PM +0200, Dominique Martinet wrote:
> The use-case here is stuff like reading from synthetic files (think fake
> pipes) where data comes in like a pipe and one would want read to return
> as soon as data is available.
> Just thinking out loud it might be possible to make pipes go through the
> server and somewhat work, but this might bring its own share of other
> problems and existing programs would need to be changed (e.g. wmii's
> synthetic filesystem exposes this kind of files as well as regular
> files, which works fine for their userspace client (wmiir) but can't
> really be used with a linux client)

> Anyway, I agree looking at O_NONBLOCK for that isn't obvious.
> I agree with the usecase here and posix allows short reads regardless of
> the flag so the behaviour is legal either way ; the filesystem is
> allowed to return whenever it wants on a whim - let's just add some docs
> as you suggest unless Sergey has something to add.

In fact i would prefer disabling the full reads unconditionally, but AFAIR some userspace programs might interpret a short read as EOF (and also would need to check the logic that motivated the kernel-side looping).

-- 
()  ascii ribbon campaign - against html mail
/\  http://arc.pasp.de/   - against proprietary attachments


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
