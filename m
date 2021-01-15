Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43EA2F702C
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jan 2021 02:48:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l0EDl-0004bf-7l; Fri, 15 Jan 2021 01:48:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1l0EDi-0004bP-78
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 01:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BwWrhNqvaqjOTsGcU3CToQckmkEI1kXho38M7SO+/n0=; b=lu4iYwRFWf5/8bjTZfA98bDldT
 X4kIrmIJmx/WrwXri9LaTz6bfF+irLZG3U66/D48sA7Wdf4RdVT2IQjsnB6CdbXRYgapUdGadekK0
 PEeruLSOkvNTYts04ADvq1q3toRbMCCLWWCL01LbxJ2XUapI9Gwpk+v+eRTIMHqqx4ck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BwWrhNqvaqjOTsGcU3CToQckmkEI1kXho38M7SO+/n0=; b=mcD/fZEc/kZO2ANrX2Y6nISaB5
 aJvUCIjOZqOPwC0NhDi4SKlL2JFBiY2EFPjDsThxdOjCNdd9sVyqWzxy0gY7oYw24TkyPURNtAmZM
 MLvl9f9+BXpp7g133PstB9y5rUFPbyGzvMtRwE9Z3sWc9wdarRjxEa8inJvG2xdEaVSo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0EDc-00CmTS-V9
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 01:48:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 132AEC01B; Fri, 15 Jan 2021 02:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610675273; bh=BwWrhNqvaqjOTsGcU3CToQckmkEI1kXho38M7SO+/n0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DsGInzx0o7PJYsnZcNUL4kOOgA0M32wrtPQr/1orUV/MVGmDaRBqLQRfkdbX5QV2O
 0ISRsj13Wf2xesFP9I713dptHV7dsq0g7BSDJHnaO6vRRmJOyJHthq8xfoGVRqFgrX
 vFaXqw8V0sVLrT3cjpSsKaynWykZDh3R8xbXH1+FOiCXGoCKZAORtfXBAMupEVZ0NV
 045RuNShwRiZwLiJSGDZM9mqMkSTVqwFQExjd/4jkJd/7R+7dPimBTsl4MEKKmgEIV
 GXefFqEU6irJPUeM3csgHpGvav+mN1/kg3u+ZUH44kboXoMl4K0yPRJsfOU2HdPpZs
 jLyvgRQL2w2QA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTP id 70DEAC01B;
 Fri, 15 Jan 2021 02:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610675272; bh=BwWrhNqvaqjOTsGcU3CToQckmkEI1kXho38M7SO+/n0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kIEcOKoRuuDgLHe4WFtifNgvT8As3eTE9Rv5a0KcAai8y8SJfTqzyZGgnsWSuVB2w
 nn6Sf9XrKU09sDwR8PQDf8ut3PBuIFtdrJ40z6Sy2GndhVhzcpEVxEdlZQGqY/uRTK
 MErvJ/Z/xCabn02C0a54sS/gKlfLi17hMSvlhabVD2UD8D+6Hb8S1cUlS59LPB4Gfp
 zb4Z69UGMaiYXRUoqlqAVaWXmjpBuye7Tsn+rZh3rpkkhjhhGOQoiAimNhDYbibAY2
 YAyr1mn5pNqzP4HkbsuTF505f5qzP2IFHKdm48HwFMOobPO7V6AWWysjzxZA+MY/RL
 P7+XCZppTf41w==
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by tyr.codewreck.org (Postfix) with SMTP id 8ADFB280235;
 Fri, 15 Jan 2021 10:47:51 +0900 (JST)
Received: (from asmadeus@codewreck.org)
 by tyr.codewreck.org (mini_sendmail/1.3.9 19Oct2015);
 Fri, 15 Jan 2021 10:47:51 JST (sender asmadeus@tyr.codewreck.org)
Date: Fri, 15 Jan 2021 10:47:36 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Lee Fallat <inbox@leefallat.ca>
Message-ID: <20210115014736.GA9486@tyr>
References: <8348aae300bd225096231aeeb08ab92358385a08.camel@leefallat.ca>
 <1f86c93f694d752786abb06d717cfa65afbc0cf9.camel@leefallat.ca>
 <20210115003439.GA7955@tyr>
 <903e091e79698570e8b2f8892b0c8a98e82223b3.camel@leefallat.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <903e091e79698570e8b2f8892b0c8a98e82223b3.camel@leefallat.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1l0EDc-00CmTS-V9
Subject: Re: [V9fs-developer] v9fs not responsive with Rflush after single
 Rreaddir
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Lee Fallat wrote on Fri, Jan 15, 2021 at 01:09:41AM +0000:
> Ah weird, the original email is here 
> https://sourceforge.net/p/v9fs/mailman/message/37193575/ and I see your response
> is in the mail "thread" too. I'm just not quoting the email.

Hm, probably something on my end then, sorry.

> Thank you for the reply! It sounds like the work which you are doing will
> resolve my issue!

I've read the issue now, I think what you describe should still work,
many servers work like this and while I see occasional hangs when
stressing it this simple pattern ought to work.

You can test my rework at this branch if you'd like:
https://github.com/martinetd/linux/commits/9p-test
(it still has a race condition when many open/close are issued
simultaneously on the same fid, that should mostly fix itself with
a rebase but that should be enough to test your use case)

You might get an error instead of a hang with this, I'd be interested in
seeing it if so.

If possible running with some level of trace (mount -o debug=0x21) would
also help understand if something else is odd.


Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
