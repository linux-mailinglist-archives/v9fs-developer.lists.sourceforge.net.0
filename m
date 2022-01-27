Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAF649D929
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:23:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCvNG-0003OQ-RE; Thu, 27 Jan 2022 03:23:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nCvNF-0003OC-Mj
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aqTIw3tMebmVQo/Qmwt7F1n+O5OqGW8daAaVFjmz8A8=; b=B4UUsegbf8UdyMU8QiqKolMXZZ
 Y/KJor/kosLJ4snhLTdhagCAwulXIlCbaDNBdRgGOyi1sRLo64SuEeRG9PfA7g7TsZrJpINwmXiGl
 11XayDPNaEySrTX0SmjXCZu3uF3GzTGuHvfZfWGGAFGh8m8Z+L5ywhqqCIaZ1s74r+lY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aqTIw3tMebmVQo/Qmwt7F1n+O5OqGW8daAaVFjmz8A8=; b=El77s6bUCpztPwpb5Gj8uQkEUq
 bOhZ018B/7DIOLoWrZz83F0T74gWVA7cx44R8fDbqNM0MvEdMgfo2rVREwqu/atYGDZ3Oll/1N0HF
 oO+6xCS9mRb/GzH6CunWm6fz9lpvZeISj883E7lmoyXJ/P2TuvLa3XRP9WeYfI/ah9FI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCvNA-00FVpA-E2
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:23:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E5E83C01F; Thu, 27 Jan 2022 04:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643253769; bh=aqTIw3tMebmVQo/Qmwt7F1n+O5OqGW8daAaVFjmz8A8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ita1SU6+bUSteM65Vmcn34R0wXk/Qof+sW2q6VTmbKX1plwXl01Tuv+FAGduhe5Jd
 PkrMtT9bCsgmOHJkrRJa2KXERghIJXp0+MGO/qwm19B1c3fIFGRttoIOYLYCv5XFaa
 cGAF12uz6Enttq/+O3RN5vWdXgLdZb2cqboIzCcBkkQL6dyw+CxeG5KpY6uCFUYm46
 36zZR/aROnZsz9ZUhaUW1QCWyYo5xe+lFGf2llO0bropIovSnKYl7FFZ7BL9rRtKiP
 JhYdmGQbpA01sKcrZR5TGmZIj4kGDblFVM7e31nnsbvezITurjf62i4pHPaXKLc1tQ
 ujwMsJvTkv3bw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B9B3BC01C;
 Thu, 27 Jan 2022 04:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643253769; bh=aqTIw3tMebmVQo/Qmwt7F1n+O5OqGW8daAaVFjmz8A8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ita1SU6+bUSteM65Vmcn34R0wXk/Qof+sW2q6VTmbKX1plwXl01Tuv+FAGduhe5Jd
 PkrMtT9bCsgmOHJkrRJa2KXERghIJXp0+MGO/qwm19B1c3fIFGRttoIOYLYCv5XFaa
 cGAF12uz6Enttq/+O3RN5vWdXgLdZb2cqboIzCcBkkQL6dyw+CxeG5KpY6uCFUYm46
 36zZR/aROnZsz9ZUhaUW1QCWyYo5xe+lFGf2llO0bropIovSnKYl7FFZ7BL9rRtKiP
 JhYdmGQbpA01sKcrZR5TGmZIj4kGDblFVM7e31nnsbvezITurjf62i4pHPaXKLc1tQ
 ujwMsJvTkv3bw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1bf34e75;
 Thu, 27 Jan 2022 03:22:43 +0000 (UTC)
Date: Thu, 27 Jan 2022 12:22:28 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ron minnich <rminnich@gmail.com>
Message-ID: <YfIP9GQohscGomgX@codewreck.org>
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, ron minnich wrote on Wed, Jan 26,
 2022 at 07:01:37PM -0800:
 > I've discovered that all kernels past the commit referenced above > break
 the following simple program: > int fd3 = open(argv[1], O_RDONLY [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nCvNA-00FVpA-E2
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

ron minnich wrote on Wed, Jan 26, 2022 at 07:01:37PM -0800:
> I've discovered that all kernels past the commit referenced above
> break the following simple program:
> int fd3 = open(argv[1], O_RDONLY , 0);
> if (fd3 < 0) perror("non cloexec open ");
> int fd4 = open(argv[1], O_RDONLY , 0);
> if (fd4 < 0) perror("2nd non cloexec open ");
> int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> if (fd < 0) perror("first open");
> int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> if (fd2 < 0) perror("second open");
> printf("%d %d %d %d\n", fd3, fd4, fd, fd2);
> 
> The output:
> 2nd non cloexec open : Device or resource busy
> first open: Device or resource busy
> second open: Device or resource busy
> 3 -1 -1 -1

ugh.

> As a result, programs can not open a file that's already open. This breaks an
> absolutely incredible number of things, as you might expect.

Yes, I'm surprised none of my tests exercise that...
*tests*
Ah, it depends on the server.
Ok, this is probably the same as this:
https://marc.info/?l=v9fs-developer&m=164182707911101&w=2

> This causes real trouble for us at Google, as we are using the cpu
> command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
> 
> Any thoughts on what we might be able to do to get things back?

Yes, we "just" need to not mix fids obtained from open/create with other
fids.
In the other thread I had suggested just adding a flag to the search
function to separate the fids, my first idea was just to not index the
opened/created fids but we need them around in some cases. It's really
unfortunate that no-one who worked on this patch series were aware of
this part of the specification, the check in the go9p server looks quite
artificial to me... But anyway I'm just rambling, we need to fix this.


For now if reverting that patch works for you it might be the
simplest way forward.
It's also possible to make the server more tolerant as a workaround:
https://marc.info/?l=v9fs-developer&m=164189977224789&w=2


I'll try to find some time this weekend to send a proper fix, as it
looks like it's impacting more people than I thought.


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
