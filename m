Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAE62A1F6F
	for <lists+v9fs-developer@lfdr.de>; Sun,  1 Nov 2020 17:08:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kZFuY-0001Dw-Ab; Sun, 01 Nov 2020 16:08:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kZFuX-0001Dk-Dc
 for v9fs-developer@lists.sourceforge.net; Sun, 01 Nov 2020 16:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NAh4yRVnmCinK7IGx2ZG2mZVUNTtb4YsMwVS+qEAn0Q=; b=SziFChBFc3KYEM7NgQGgDrCo5V
 VVo73259V9qYB0qJcJ5EK2q2OQaqFDyYBDmWJr6BoXtPvg9patF9XYyweHqL1w6ApNajkIIhrQxPu
 pL6a1TldrGjOOY30vQ7trE1ARfZOGhRiitEm0mY3K6uib/k/r/9Vn4mzMMvAXoUbeeCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NAh4yRVnmCinK7IGx2ZG2mZVUNTtb4YsMwVS+qEAn0Q=; b=mO55qhrWmzjF3A+4NTjOrLkYO7
 kBDpDp3WYXlILfFHOllalWfF8Jekvtvch49S+T5LAPErn0pJpmdrwFAyJc9wZdTO49pORUhpuZiDp
 mpbqf12fvxl3BD3C7SZo3fRxsChdrav88kgv9OZfoqYh9nLrJd2xD9hFRTEksKsWzZ9E=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kZFuS-005KpI-Ny
 for v9fs-developer@lists.sourceforge.net; Sun, 01 Nov 2020 16:08:53 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 841CAC01B; Sun,  1 Nov 2020 17:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1604246920; bh=NAh4yRVnmCinK7IGx2ZG2mZVUNTtb4YsMwVS+qEAn0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OZFK98iMaWOnxh0jHh4eyyrYoGVPHBjyX9iJIFfhFINgalofOHgLQxxdt1Lafxz06
 c4d7aiZdkQhLs+iJvgHkisdlvDVfJE9goszkvjh0C27SxjHTMywcpYZa9yAvA7rpyy
 v38dn78+6iaVY5270O5Tye35uHa6fXTXs85FFtX26Hty7X3Wzz7/6B+Qhai1iXz4uU
 DM1yT0lc8NwEwFyy9mX4Bw1DT+EOSGKwdIyBpZa9lO97H2qifHNazxl3BynrHpKCj5
 pdELEyIZ/3IqYEvgXg3mFUiLjIC4jC4UBZafz5aJujmnqHXwNP8Vl+IvU5Ci+RqPp8
 OmThf7DISjpBA==
Date: Sun, 1 Nov 2020 17:08:25 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Andrew Lunn <andrew@lunn.ch>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201101160825.GB5153@nautica>
References: <20201031182655.1082065-1-andrew@lunn.ch>
 <20201031205813.GA624@nautica> <20201101155405.GA1109407@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201101155405.GA1109407@lunn.ch>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lunn.ch]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kZFuS-005KpI-Ny
Subject: Re: [V9fs-developer] [PATCH net-next] net: 9p: Fix kerneldoc
 warnings of missing parameters etc
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev <netdev@vger.kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Andrew Lunn wrote on Sun, Nov 01, 2020:
> > > Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Acked-by: Dominique Martinet <asmadeus@codewreck.org>

> > 
> > Thanks, LGTM I'll take this for next cycle unless someone is grabbing
> > these
> 
> I hope to turn on W=1 by default soon in most of /net. That patch is
> likely to go to net-next.

That would be nice!

> What route do your patches normally take to Linus? Do you send a pull
> request to net-next? Or straight to Linus?

I normally send pull requests straight to Linus (because I also have
fs/9p which isn't part of net/) ; but since it's really low volume I
don't like bugging him everytime for such churn and am not really sure
what to do -- that's why I asked :)

> If this patch is not in net-next, i cannot enable it for 9p. So
> either:
> [...]
> 4) Jakub takes this patch into net-next, and i can then enable W=1 in
>    9p along with all the other sub-directories. We will get to know
>    about new warnings in net-next, and next, but not in your tree.

Developers should use next for development anyway; I think that's the
easiest way forward if you want to enable W=1 ASAP.

I mean, if I take the patch the fixes will get in next in the next few
days sure but it'll make enabling W=1 difficult for the net-next tree
without it.
I've added Jakub to direct recipients, could you take this one?


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
