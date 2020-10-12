Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 459B628B26E
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Oct 2020 12:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kRvGW-0002JT-Mz; Mon, 12 Oct 2020 10:41:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kRvGS-0002JF-DM
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 10:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QlAxDZ+KsZS85QiRGY0ctYmqtc4SyO5EGUIUPKH+ow=; b=bUHNmCdkHK956G3q7tfd/v8xM/
 pe2I4nM3UyglVsM8J7zK3DJ1DLjxpwUWykIyItgTFoxL9BWK0+26EzhC2CN6qZwxS4E5wVrF9JXYO
 r4iXohgIJmMLb9cG+PprBAeZQxoLoDGLM1//nA3sJTLBS6EUDlcozDg8/avR9G9nIaMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3QlAxDZ+KsZS85QiRGY0ctYmqtc4SyO5EGUIUPKH+ow=; b=L+EphVcJPKOz26eCraMMeLVTDu
 Qlcok/TM7ftEvtzX3w7DbrdepLdqJRSyx0Y9u8rLYjnVYpHEnqsG2Yjh9icIGXTzr0yUHhVJ9KLFc
 ++b+jMKeacrWoS9nxV/2H1QNWsruW9eV3p52I/4DbCXwSXoSdD8ryRgZBczboWTifX2M=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRvGF-007Jkj-2T
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 10:41:12 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 6A40AC009; Mon, 12 Oct 2020 12:40:45 +0200 (CEST)
Date: Mon, 12 Oct 2020 12:40:30 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <20201012104030.GA888@nautica>
References: <20201012042404.2508-1-anant.thazhemadam@gmail.com>
 <20201012075910.GA17745@nautica>
 <147004bd-5cff-6240-218d-ebd80a9b48a1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <147004bd-5cff-6240-218d-ebd80a9b48a1@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kRvGF-007Jkj-2T
Subject: Re: [V9fs-developer] [PATCH net] net: 9p: initialize
 sun_server.sun_path to have addr's value only when addr is valid
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
Cc: lucho@ionkov.net, syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Anant Thazhemadam wrote on Mon, Oct 12, 2020:
> You mentioned how a fully zeroed address isn't exactly faulty. By extension, wouldn't that
> mean that an address that simply begins with a 0 isn't faulty as well?

That is correct.
If you have a look at the unix(7) man page that describes AF_UNIX, it
describes what 'abstract' addresses are and unix_mkname() in linux's
net/unix/af_unix.c shows how it's handled.

> This is an interesting point, because if the condition is modified to checking for addr[0] directly,
> addresses that simply begin with 0 (but have more non-zero content following) wouldn't be
> copied over either, right?

Yes, we would reject any address that starts with a nul byte -- but that
is already exactly what your patch does with strlen() already: a '\0' at
the start of the string is equivalent to strlen(addr) == 0.
The only difference is that checking for addr[0] won't run through all
the string if it doesn't start with a nul byte; but this is a one-time
thing at mount so it really doesn't matter.

> In the end, it comes down to what you define as a "valid" value that sun_path can have.
> We've already agreed that a fully zeroed address wouldn't qualify as a valid value for sun_path.
> Are addresses that aren't fully zeroed, but only begin with a 0 also to be considered as an
> unacceptable value for sun_path?

Yes, because the strcpy() a few lines below would copy nothing, leaving
sun_server.sun_path uninitialized like your example.

At that point you could ask why not "fix" that strcpy to properly copy
the address passed instead but that doesn't really make sense given
where 'addr' comes from: it's passed from userspace as a nul-terminated
string, so nothing after the first '\0' is valid.

There probably are ways to work around that (e.g. iproute's ss will
display abstract addresses with a leading '@' instead) but given nobody
ever seemed to care I think it's safe to just return EINVAL there like
you did ; there's nothing wrong with your patch as far as I'm concerned.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
