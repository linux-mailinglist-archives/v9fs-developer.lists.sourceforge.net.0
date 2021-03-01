Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5684E327632
	for <lists+v9fs-developer@lfdr.de>; Mon,  1 Mar 2021 03:52:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lGYfE-0004CN-Cj; Mon, 01 Mar 2021 02:52:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@gaia.codewreck.org>) id 1lGYfC-0004C2-9W
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Mar 2021 02:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F+Lh7tLgOo+TtdtsS58P5I40l0lHx/XnMQ8Qg4cItMI=; b=KdU6n9gLv91fk459hdojgjP0Q5
 OJUvkgDmNJK+kVUlkwGrI3VWfJHJuQkr+9TB1zyz1ayIXwURXYzhvsIQ+cmKQtAhV9WayUyMw2C5R
 CGfm/moKSM6ifi5yL2SJWT7u4/gH3uBAVnkTKBPBsIWFpkKI6UJtGoW/VBTaSlnOEr2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F+Lh7tLgOo+TtdtsS58P5I40l0lHx/XnMQ8Qg4cItMI=; b=iv2jU9H1fK9yoa40TGR8DSefbL
 HvfHklxG5kGnF9DsTb3q3S1Kt8duU74u2vNcXm80ndMjU8d7TG+dG8i5tZYRoJaKF6zNohGwSIKXQ
 Mpn3S2YLsLUrqFISoGjNBxRtUxdJV9dFpOrxezckGegOrFNK4FWxhLP/5fZd3ufRK8wk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lGYf4-009Kmi-QF
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Mar 2021 02:52:02 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D132EC021; Mon,  1 Mar 2021 03:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614567105; bh=F+Lh7tLgOo+TtdtsS58P5I40l0lHx/XnMQ8Qg4cItMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RDR84AsQhMDUKebBJySfKhAIbESMHKQUzVysTTShIWc47NyTmZkjnLjW1gJR3fH9A
 sDQmHdcOEfumBRyccrv+lP4W5AByVZeNNDkRq5AHBzG3BxWS5qyubPJtb5qja0XP7R
 ehrTtbbOVF8Alo8asNJxuUYAoHSnUghW/8e7pnRej/ngxaVaK3aovH9W/HsMzNX05M
 LjMbJ+6+uEisMM1VoElf27kB/1WoX+d0GIX3ZnxuO3Eb6aJkPYffHH4PigHEEhxGAP
 Mgfcx7VbfIhPpKUk8iXjj6xpmGD6ds7SFNdnLWwB/WiYIle75rv9Ci6OVkYN1kMasv
 gI1Dv1ZYcFNDQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B6E52C01B;
 Mon,  1 Mar 2021 03:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614567105; bh=F+Lh7tLgOo+TtdtsS58P5I40l0lHx/XnMQ8Qg4cItMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RDR84AsQhMDUKebBJySfKhAIbESMHKQUzVysTTShIWc47NyTmZkjnLjW1gJR3fH9A
 sDQmHdcOEfumBRyccrv+lP4W5AByVZeNNDkRq5AHBzG3BxWS5qyubPJtb5qja0XP7R
 ehrTtbbOVF8Alo8asNJxuUYAoHSnUghW/8e7pnRej/ngxaVaK3aovH9W/HsMzNX05M
 LjMbJ+6+uEisMM1VoElf27kB/1WoX+d0GIX3ZnxuO3Eb6aJkPYffHH4PigHEEhxGAP
 Mgfcx7VbfIhPpKUk8iXjj6xpmGD6ds7SFNdnLWwB/WiYIle75rv9Ci6OVkYN1kMasv
 gI1Dv1ZYcFNDQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 090953bd;
 Mon, 1 Mar 2021 02:51:39 +0000 (UTC)
Date: Mon, 1 Mar 2021 11:51:24 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Message-ID: <YDxWrB8AoxJOmScE@odin>
References: <20210301103336.2e29da13@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301103336.2e29da13@xhacker.debian>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lGYf4-009Kmi-QF
Subject: Re: [V9fs-developer] [PATCH] net: 9p: free what was emitted when
 read count is 0
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jisheng Zhang wrote on Mon, Mar 01, 2021 at 10:33:36AM +0800:
> I met below warning when cating a small size(about 80bytes) txt file
> on 9pfs(msize=2097152 is passed to 9p mount option), the reason is we
> miss iov_iter_advance() if the read count is 0, so we didn't truncate
> the pipe, then iov_iter_pipe() thinks the pipe is full. Fix it by
> calling iov_iter_advance() on the iov_iter "to" even if read count is 0

Hm, there are plenty of other error cases that don't call
iov_iter_advance() and shouldn't trigger this warning ; I'm not sure
just adding one particular call to this is a good solution.


How reproducible is this? From the description it should happen
everytime you cat a small file? (I'm surprised cat uses sendfile, what
cat version? coreutils' doesn't seem to do that on their git)

What kernel version do you get this on? Bonus points if you can confirm
this didn't use to happen, and full points for a bisect.


(cat on a small file is something I do all the time in my tests, I'd
like to be able to reproduce to understand the issue better as I'm not
familiar with that part of the code)

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
