Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A307B48A3A2
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Jan 2022 00:28:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n745y-0007JM-AN; Mon, 10 Jan 2022 23:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ng@0x80.stream>) id 1n745w-0007JD-K4
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 23:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hju8JnlJU/C8XviEDZSYqgh5vxWmzdZxSeA5OdkzDBw=; b=Bxvp9d0gWKWRbmR3FCUQrqXRKM
 8a3/ZErKcmeEnP6YO5Uz4FGirE8lD6EMEij3wDEIrXI22v+BvERYOzqcLIvnXpUv1aWk20JmbpR+8
 ooKVOTCH3+ikp4WPosoREdLDSI7jWBI7A49hs+brRSo+ys4RBji6Z/DXYkzvPoBZWJ48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hju8JnlJU/C8XviEDZSYqgh5vxWmzdZxSeA5OdkzDBw=; b=Q732DH5oeAX1g/ndr8dhsc8uEM
 fDio8l0+dUAiOTJKFiF4bzzSrg2hn2alvkyHZrhJr1pW60L0X2My4+lYG2nrt4LxWqFHa2EwOwe6P
 PWfNkCKS8JH/wYOySi3N+KiyvuVmvbUE+n2Jyze5xGj9z9IEzqT9I4HDgVNZqLeY0vcI=;
Received: from eva.beecloudy.net ([145.239.136.208] helo=penelope.mx)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n745u-00066w-7g
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 23:28:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 8D9FD20EFAF;
 Tue, 11 Jan 2022 00:28:44 +0100 (CET)
Received: from penelope.mx ([127.0.0.1])
 by localhost (penelope.mx [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Kl8EksDPmsA; Tue, 11 Jan 2022 00:28:43 +0100 (CET)
Received: from penelope.mx (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 5A2F020F01B;
 Tue, 11 Jan 2022 00:28:43 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 10 Jan 2022 23:28:43 +0000
From: ng@0x80.stream
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <Ydy1qtV68fO69baZ@codewreck.org>
References: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
 <Ydy1qtV68fO69baZ@codewreck.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <ae62a8a6f63c83b0dfc23db11ec49028@0x80.stream>
X-Sender: ng@0x80.stream
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-01-10 22:39,
 Dominique Martinet wrote: > ng@0x80.stream
 wrote on Mon, Jan 10, 2022 at 02:41:18PM +0000: >> Hi, this is a bug report;
 on Linux 5.12 and 5.14 it seems v9fs uses a >> fid >> that' [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-Headers-End: 1n745u-00066w-7g
Subject: Re: [V9fs-developer] bad use of fid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-01-10 22:39, Dominique Martinet wrote:
> ng@0x80.stream wrote on Mon, Jan 10, 2022 at 02:41:18PM +0000:
>> Hi, this is a bug report; on Linux 5.12 and 5.14 it seems v9fs uses a 
>> fid
>> that's been used for I/O to walk someplace else, which is not allowed
>> according to the manual.
> 
> There have been a few patches for 5.11 in order to fix the
> "open-and-unlink" access pattern, linux would previously try to walk by
> path again when the path no longer existed..
> 
> Probably around one of these patches:
> 478ba09edc1f ("fs/9p: search open fids first")
> 987a64850996 ("fs/9p: track open fids")
> 154372e67d40 ("fs/9p: fix create-unlink-getattr idiom")

Thanks for the context.

>> I run on 5.10.y on most of my machines but I have to run 5.12 or 5.14 
>> on
>> some new hardware, so I noticed the problem.
>> The snippets above are for 5.14, I've to confirm if 5.12 has the same
>> problem, but higher level error is the same,
> 
> Thanks for the associated traces, it's very likely the same.

Indeed, I've confirmed the same trace happens with 5.12.

> This is bending the rules somewhat, but does your server only have this
> restriction for non-clone walks?

The servers I use are built on top of go9p and it looks like there's no 
special case for clone walks:
https://github.com/lionkov/go9p/blob/master/p/srv/fcall.go#L211

I can't comment on the rest of your message as I lack necessary 
knowledge about the v9fs implementation. :(

I'm a bit surprised that this used to work in 5.10 and that no one 
spotted this problem before in 5.12 and 5.14; it makes me wonder what 
people use v9fs for! I'm thankful there's v9fs.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
