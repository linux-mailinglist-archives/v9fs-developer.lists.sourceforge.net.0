Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B358C75FA
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 May 2024 14:21:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s7a7G-0000SC-Ji;
	Thu, 16 May 2024 12:21:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1s7a7E-0000S2-II
 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 May 2024 12:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4XsY6Tk+webCKeT6qCBCkYuVU3Wc1bP5Dz1AwKF2zOE=; b=LcdrilzTOz5Bms4qR5ymKuUttU
 ATAUMxPXq10zJNb1KK0wS4Pz7hOhgj7mOYzOry35PsOG5Ia1d6wiwzzpzP2WIan3SQLRg6tA7TZIv
 6wc9J8vG8uPd5JqDUMlrQfzErXF8A95pcbK/S9ZjcmlN6EGXqWAd4OCOiOXAePmi/bcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4XsY6Tk+webCKeT6qCBCkYuVU3Wc1bP5Dz1AwKF2zOE=; b=IkL7rdWfdP62HmAvycEkp324qI
 7+WQyNDVvlc8XTulTh8UzITl8vRwnZ0tCiRGczN9ZJRBbuUSbTpI5gh3a82c4eqfttxZ66yR5p8Do
 WOwRSSK8jobn1ib4C/U+tXpnT5hDr78soE0tSBopivHWnZ4C9zQmio43z6aZ0ho9+H0o=;
Received: from 62-210-214-84.rev.poneytelecom.eu ([62.210.214.84]
 helo=submarine.notk.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1s7a7D-0002Yh-R3 for v9fs-developer@lists.sourceforge.net;
 Thu, 16 May 2024 12:21:44 +0000
Received: from gaia.codewreck.org (localhost [127.0.0.1])
 by submarine.notk.org (Postfix) with ESMTPS id 7E5E314C2DB;
 Thu, 16 May 2024 14:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
 s=2; t=1715860940;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4XsY6Tk+webCKeT6qCBCkYuVU3Wc1bP5Dz1AwKF2zOE=;
 b=JDtNZ1LQIGQFpLXhD8iN0JIucQS0bLyyXB2IIgURkUq4KeexZyCYct3Lxgnz+okBhUCGuq
 zCRxq8Fg0m5lO5NiW5ZU0EiqcZtU5vtWJH0yllGmtuSrbfrDowAgqngFySP7MLmtDtkxcn
 y6HI/UeibMj9NqqfBWkOohQ3KZR71F3XqM+8R0SL3/d5ywvisHuTGS0r6kDwNWA+Mr7s79
 SE1inlJAGSilHvO+3AiIp4csqBpri92XD1b5t6eM1q+0WaizvAUGTho6UVoswWcWwSmNlt
 APYC0WotnsKhVZ+H4N+ARWYtzl2+TyN/12KxKeWmO934KYpBOYGL3vk2aoG01g==
Received: from localhost (gaia.codewreck.org [local])
 by gaia.codewreck.org (OpenSMTPD) with ESMTPA id 5e194d70;
 Thu, 16 May 2024 12:02:14 +0000 (UTC)
Date: Thu, 16 May 2024 21:01:59 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ron minnich <rminnich@gmail.com>
Message-ID: <ZkX1t9LL68wZsfMh@codewreck.org>
References: <CAP6exYLRpE+QyQkZN2_qzugA46ifAKyJSP_QUqa=uYKHRHw1TA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6exYLRpE+QyQkZN2_qzugA46ifAKyJSP_QUqa=uYKHRHw1TA@mail.gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Ron, sorry for the slow reply, I didn't see this mail for
 some reason. ron minnich wrote on Sun, Apr 14, 2024 at 11:03:44AM -0700:
 > we would like to make 9p safe, in the sense that FUSE is safe, for user
 > mounts. > > This would add FS_USERNS_MOUNT to the .fs_flags in v [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
X-Headers-End: 1s7a7D-0002Yh-R3
Subject: Re: [V9fs-developer] marking 9p as safe for user mounts, wdyt?
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>, edou@rdklein.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Ron,

sorry for the slow reply, I didn't see this mail for some reason.

ron minnich wrote on Sun, Apr 14, 2024 at 11:03:44AM -0700:
> we would like to make 9p safe, in the sense that FUSE is safe, for user
> mounts.
> 
> This would add FS_USERNS_MOUNT to the .fs_flags in v9fs_fs_type.
> 
> This would be very helpful for those who wish to mount 9p without a FUSE
> middleman.
> 
> Any thoughts on whether this can happen?

Hmm, while I understand where this come from and how it can be useful,
we have a dozen of syzcaller bugs open:
https://syzkaller.appspot.com/upstream/s/v9fs

If we make 9p user-mountable, that'd be free for all for anyone to
badger on, so I'm not really comfortable opening this box as things
stand.

Filesystem syzcaller bugs have always been a problem when we allow users
to mount arbitrary filesystem images (especially if the user can modify
the image while the kernel accesses it), but in 9p case it's even one
step further with mount-by-fd, so any exploit would immediately become
very easy to use...
Perhaps if we could limit that to a few protocols (virtio, tcp with port
< 1024?), but that wouldn't help you would it?

So if someone can find time to investigate these fuzz reports so we can
either fix them or ensure they're harmless then I'd be game for it,
but as things stand I don't think it's safe.

-- 
Dominique Martinet | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
