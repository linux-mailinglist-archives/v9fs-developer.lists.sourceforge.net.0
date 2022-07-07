Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB67856A56B
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Jul 2022 16:31:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9SXD-0008Se-Cg; Thu, 07 Jul 2022 14:31:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o9SXC-0008SR-DZ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Jul 2022 14:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0q3pCVaNC6eZ01+RxXhdBNZtOsM0QfCCjik57QpvYi8=; b=ZsuOlR8ZEhPwrgJ8mqj9evjjdU
 UygCVTawEdQ1yjsLyNjVZg/TPFcsbZlcslEfe4W75EHRgqJN9LdYTuPS0MDTOWKXzfPqPVr3ofhWT
 uLtFXgCGNDjhse+se0imn347AG42IXrdHOI0EExaDJdFlhyaqiznZVQ75V2GTfpuMfeU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0q3pCVaNC6eZ01+RxXhdBNZtOsM0QfCCjik57QpvYi8=; b=OTR0LvG2bV6B4IEPG4aPBltNBw
 5NPVUrA/I+Z4jiuhwu0wohPUPX3Myo6vdBWfTJjzawjc2xDR1AkCq9ibnNruU1igS8odKEClceRYE
 Dx26MumyCco+sRTBkayI3eYK7Jsl6nkOYbHHcEwd2Pv4OUYfHV/qqvufvzeuz+/IwGCU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9SX3-009u8x-97
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Jul 2022 14:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=0q3pCVaNC6eZ01+RxXhdBNZtOsM0QfCCjik57QpvYi8=; b=aq7xLVp1nBc814w1LoFZQRxHY4
 RdHgJNrAyUYrUNyaZyDcbl4ssPoifrHNjXiwqSr+s49l3Hooqom+Wfk2o1j1fflKHCy4GRbbXLXI6
 u4wvwbhuavhpKfuKDVUy9iW1cvmT+V9DXOCHa6tMYvgbiBtDGhrka4qqnXnT+aUmOyQxgIMqLYyLI
 NAGmfoPF4IL+yTNokFPz6pQU3F1XL3M0hrEgIieT3Li3XIHUKSUfVPIkgg5vDZxKc7Kr0Kabb1ufW
 nL7QKYVl/VwRDdQJHwFVfCtFmAXvxoLeL0Wkafz0M1i1vSiMd9zobyTw7L8gCef4dBKEmxFYaUOQh
 JeiF0wceE/s6/wSMosjoQr4ETfvuhcpx3iWcOBVQDP77J98u9mMOMGDbDLxVMI1BpczTpeLwpgt0Z
 ssg5Ws5HKGQkazPoqdEjfsZJ77qAnno4p29PNZSvukB2EDFEaNotElt5uNgMO10yItI927SwZqESW
 ui6rwroCpXHaZKjkZZlK3QuRwVrv4FsRrLYmLpTJX0N1Pxm4sGEyi5SMB31vkoiTq8hCbECJ5yfID
 MdncDaMZElPfWrCeB/xfhmBxRopuFu0y7Tt2plv2uSv+PXhg2pmyXnWp+QL/QGGGR+cvbE/KV+8/t
 QmvBzI3GfeytwblPzbB9bqtdnCGPk7v/PyRS3ZAPs=;
To: Dominique Martinet <asmadeus@codewreck.org>, Greg Kurz <groug@kaod.org>
Date: Thu, 07 Jul 2022 16:30:55 +0200
Message-ID: <7534209.h2h7kyIpJd@silver>
In-Reply-To: <cover.1640870037.git.linux_oss@crudebyte.com>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag,
 30. Dezember 2021 14:23:18 CEST Christian Schoenebeck
 wrote: > This series aims to get get rid of the current 500k 'msize'
 limitation
 in > the 9p virtio transport, which is currently a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o9SX3-009u8x-97
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 30. Dezember 2021 14:23:18 CEST Christian Schoenebeck wrote:
> This series aims to get get rid of the current 500k 'msize' limitation in
> the 9p virtio transport, which is currently a bottleneck for performance
> of 9p mounts.
[...]
> KNOWN LIMITATION:
> 
> With this series applied I can run
> 
>   QEMU host <-> 9P virtio <-> Linux guest
> 
> with up to slightly below 4 MB msize [4186112 = (1024-2) * 4096]. If I try
> to run it with exactly 4 MB (4194304) it currently hits a limitation on
> QEMU side:
> 
>   qemu-system-x86_64: virtio: too many write descriptors in indirect table
> 
> That's because QEMU currently has a hard coded limit of max. 1024 virtio
> descriptors per vring slot (i.e. per virtio message), see to do (1.) below.
> 
> 
> STILL TO DO:
> 
>   1. Negotiating virtio "Queue Indirect Size" (MANDATORY):
> 
>     The QEMU issue described above must be addressed by negotiating the
>     maximum length of virtio indirect descriptor tables on virtio device
>     initialization. This would not only avoid the QEMU error above, but
>     would also allow msize of >4MB in future. Before that change can be done
>     on Linux and QEMU sides though, it first requires a change to the virtio
>     specs. Work on that on the virtio specs is in progress:
> 
>     https://github.com/oasis-tcs/virtio-spec/issues/122
> 
>     This is not really an issue for testing this series. Just stick to max.
>     msize=4186112 as described above and you will be fine. However for the
>     final PR this should obviously be addressed in a clean way.

As there is no progress on virtio spec side in sight, I'm considering to 
handle this issue in upcoming v5 by simply assuming (hard coding) that 9p 
server supports exactly up to 1024 virtio descriptors (memory segments) per 
round trip message. That's maybe a bit unclean, but that's what other virtio 
drivers in the Linux kernel do for many years as well, so I am not expecting a 
negative issue in practice.

And I mean, when we talk about 9p + virtio, that actually implies QEMU being 
the 9p server, right? At least I am not aware of another 9p server 
implementation supporting virtio transport (nor any QEMU version that ever 
supported less than 1024 virtio descriptors). Maybe Microsoft WSL? Not sure.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
