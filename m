Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9353B8D6373
	for <lists+v9fs-developer@lfdr.de>; Fri, 31 May 2024 15:47:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sD2bo-0002KF-EM;
	Fri, 31 May 2024 13:47:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <edou@rdklein.fr>) id 1sD2bm-0002K4-Hw
 for v9fs-developer@lists.sourceforge.net;
 Fri, 31 May 2024 13:47:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m4S8eDiDu1EP4zNkuw7Yk//I/Gq4aMypu5K5NZZYpGw=; b=NTSr+pJyC1T+R/54h+BU6HN2+s
 nhNgqOE5hmmAAy1uZ9TqdoljwDChfPFmxKi35ZPuDJFoFN9Hn8ngeiKOaciDMVilQkUirGM7ayCRT
 SiqI19d7IXXK0q3nfZ2DYaydpImhGOALbV0ZpNrIfdwEV3TQMAJjTKwttxc204gIsGnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m4S8eDiDu1EP4zNkuw7Yk//I/Gq4aMypu5K5NZZYpGw=; b=lQCSuGX9GlGzM55w04wWiKaok8
 6KsWWl82DwUTl7vqfWWOwtkoYcw+jvR0cg4alMkm8FaOXI/M9aitIxBRfenpq9lyJCLLpl4RY4JMU
 CFXfMnogtda7qzoLiXD8vuwsgK65b1n4/vdvmvyudhckVVB1fM9XlAVlJNWVPRYYoiNc=;
Received: from sender-op-o11.zoho.eu ([136.143.169.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sD2bn-0000Z5-9Y for v9fs-developer@lists.sourceforge.net;
 Fri, 31 May 2024 13:47:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1717162336; cv=none; d=zohomail.eu; s=zohoarc; 
 b=Tz2o4bX04hCKZjRStDof6OB6q1gxVwbL8hDv9FbfbuCGynQVHr74aiVaQhCQMmmDc6H7fE5ABzWFnKi7ZPia4ghPuwoKOdxPgN4aanDyOvOXJwC5WwpcfZaOqvQEujEQaekbWJgSnBXdpMVgK6poCN/PH/1+cpp6dzurm927cvU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu;
 s=zohoarc; t=1717162336;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=m4S8eDiDu1EP4zNkuw7Yk//I/Gq4aMypu5K5NZZYpGw=; 
 b=AemKaNDwLgZBDd6Fpzcq2OvpGLNQeLx1EQ8Hb8V42AFHfoGNKsvdh9uFmHWGMBIu/RYuMOUXrUQw93+2+UllPSEL48fQE6A+bG/sepS/TLdqlMcgLbCOhnD8t3eZCY8Zbon4BGQ7VBCrvPB1ySE/fs4bJWjLnVi6HCzNJKA3peM=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
 dkim=pass  header.i=rdklein.fr;
 spf=pass  smtp.mailfrom=edou@rdklein.fr;
 dmarc=pass header.from=<edou@rdklein.fr>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1717162336; 
 s=zoho; d=rdklein.fr; i=edou@rdklein.fr;
 h=References:From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:In-reply-to:Message-ID:MIME-Version:Content-Type:Message-Id:Reply-To;
 bh=m4S8eDiDu1EP4zNkuw7Yk//I/Gq4aMypu5K5NZZYpGw=;
 b=RKhrJs5g8WLysljfYt3qHmkH056JfqzN7X8Cxv9trFoItP8sFMMd/baHhAVrEoQB
 pcVRCPKwAE1OOmEn/PRsoReFjXuSRexiiiQsZC5+7T+vqa+Z2PSQm9ZblZjjFfdMVcN
 gQJn4apLldwO4uTHZfiXjuay+PoVrgEC4ghe4mjiAdSZkPnUVF5eiDH4UeSIhD8OK9D
 zAuzjCGEClV1omtmtG0AQh+8t/+szTAtjTx4q31jcc3mk4018czzIlVs3SFcTl/oG8o
 BCp9WsqX8V41rRfQ38N/K0dbUOawZtpgQBcz6HiO7CzqONwkI/YcUxSh1w93Cf0l8QN
 fjXFdZ5ACw==
Received: by mx.zoho.eu with SMTPS id 1717162333329609.5429184171768;
 Fri, 31 May 2024 15:32:13 +0200 (CEST)
References: <CAP6exYLRpE+QyQkZN2_qzugA46ifAKyJSP_QUqa=uYKHRHw1TA@mail.gmail.com>
 <ZkX1t9LL68wZsfMh@codewreck.org>
User-agent: mu4e 1.10.2; emacs 28.2
From: Edouard Klein <edou@rdklein.fr>
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 31 May 2024 15:29:19 +0200
In-reply-to: <ZkX1t9LL68wZsfMh@codewreck.org>
Message-ID: <87h6eenm3w.fsf@rdklein.fr>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Thank you for your answer. Right now this above my skillset
 but I'll take a look at the bugs and see if I can do something. That'll get
 my feet wet with kernel development on Linux. I'll keep you posted. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [136.143.169.11 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [136.143.169.11 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [136.143.169.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [136.143.169.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sD2bn-0000Z5-9Y
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
Cc: ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

Thank you for your answer. Right now this above my skillset but I'll take a look
at the bugs and see if I can do something. That'll get my feet wet with
kernel development on Linux.

I'll keep you posted.

Cheers,

Edouard.


Dominique Martinet <asmadeus@codewreck.org> writes:

> Hi Ron,
>
> sorry for the slow reply, I didn't see this mail for some reason.
>
> ron minnich wrote on Sun, Apr 14, 2024 at 11:03:44AM -0700:
>> we would like to make 9p safe, in the sense that FUSE is safe, for user
>> mounts.
>> 
>> This would add FS_USERNS_MOUNT to the .fs_flags in v9fs_fs_type.
>> 
>> This would be very helpful for those who wish to mount 9p without a FUSE
>> middleman.
>> 
>> Any thoughts on whether this can happen?
>
> Hmm, while I understand where this come from and how it can be useful,
> we have a dozen of syzcaller bugs open:
> https://syzkaller.appspot.com/upstream/s/v9fs
>
> If we make 9p user-mountable, that'd be free for all for anyone to
> badger on, so I'm not really comfortable opening this box as things
> stand.
>
> Filesystem syzcaller bugs have always been a problem when we allow users
> to mount arbitrary filesystem images (especially if the user can modify
> the image while the kernel accesses it), but in 9p case it's even one
> step further with mount-by-fd, so any exploit would immediately become
> very easy to use...
> Perhaps if we could limit that to a few protocols (virtio, tcp with port
> < 1024?), but that wouldn't help you would it?
>
> So if someone can find time to investigate these fuzz reports so we can
> either fix them or ensure they're harmless then I'd be game for it,
> but as things stand I don't think it's safe.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
