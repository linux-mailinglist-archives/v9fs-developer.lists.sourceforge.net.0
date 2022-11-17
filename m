Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E038D62DCDC
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 14:34:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovf1w-0005JM-9N;
	Thu, 17 Nov 2022 13:34:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ovf1o-0005J9-Uy
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 13:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yDHmBSEgkzHUv2gownf19Jhq8mrsJwKM8BvJyC4LAfc=; b=GGP1y6N3EhKA1aJmNWZ9AbWTYM
 0j20hHuWMA12srKCvGe60aC9O/cL7p3vbkSPtQEOn8hBpgWHVD2kNeDlYzBNw0bF3qpUdJi5WLCZ2
 UYTl5qFHo7VLQhSeh9UXp8FmPDffu24XY0OmsLmerivSiJck+wrmwEgh6uvNDgMnog0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yDHmBSEgkzHUv2gownf19Jhq8mrsJwKM8BvJyC4LAfc=; b=MG7HqtIIS3XwHv0x3hvG4JSGpQ
 giatXpeyKx6O1pzXVhKiApN+jx4FM/Mu+NdwRFZb7RhTf4RFY+5qgyOvA7+AVE4O4bA9/C4KR02/0
 0EqjLVD9EWI/NX7lJj7uAc+KJHAoXbdR3PfvMVC67sXjiTus2XEOBbCrkv2L6OXCF7fo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovf1j-0008O7-Ag for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 13:34:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=yDHmBSEgkzHUv2gownf19Jhq8mrsJwKM8BvJyC4LAfc=; b=sdexSol373aDIoZYVm50g1mAs6
 aJY8XhMvTMO8KSOIDwmNgKwGEgH0w6Ak5Yrw4oBG4u4obtfWg/zSvSWkdwFp3TS3bPb562j2dfIPd
 ce3mMQMB77TLFTiRA7cs8aWKL6OHsuHNUVcRp56PqevhmQmKpCG8aHIgoyuJPDTwDoVOVHAqz6loq
 i3ZmCkDXHl+in5r6BBH+OQdTRmfPYoesej0pIr3vFMGep63UbsJaKb0iBytCu+Iuv7MdrHkznzNDY
 Iad4mckZcOiKZ6CVj0CmaOc6uqOfrcHVJ+X/SxgbYT8sywsMWllL8N/rw7WoAvkj5L/iFBx7KTrg/
 /8G/V2uWL5sTT03Hi/EJ1u03MA9uB2eNEakeRt9O1JD753VAL54rfLGTer13062VoKu1NVUtpvGMU
 RBq+9SQjbQt3xHPt95/jfXrlbFBBdu6KT9Xe8ZTXdJYJ1StcbVf0sjD6vv2IAEWTX4iYUCdBHyMWL
 kYxGf/vkXj/ltDmU5BrJqqHtq92WCKgbff1j2wINVJazN5mi140ha9HuSD+8NqjrrKZWMU8fhFV3T
 rzDr42aBGYaofBUW9UP5edYZvHQFLmzp7qmPwYC1pmntXsjtUJmDKA6kFku2/ZSAzH05EJRnjv088
 3l8hlE7m1qy7+MuLpZ83zsfeSkvb0HQBOef56U0Js=;
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 GUO Zihua <guozihua@huawei.com>
Date: Thu, 17 Nov 2022 14:33:28 +0100
Message-ID: <3918617.6eBe0Ihrjo@silver>
In-Reply-To: <20221117091159.31533-1-guozihua@huawei.com>
References: <20221117091159.31533-1-guozihua@huawei.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thursday, November 17,
 2022 10:11:56 AM CET GUO Zihua wrote:
 > This patchset fixes the write overflow issue in p9_read_work. As well as
 > some follow up cleanups. > > BUG: KASAN: slab-out-of-bounds [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ovf1j-0008O7-Ag
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thursday, November 17, 2022 10:11:56 AM CET GUO Zihua wrote:
> This patchset fixes the write overflow issue in p9_read_work. As well as
> some follow up cleanups.
> 
> BUG: KASAN: slab-out-of-bounds in _copy_to_iter+0xd35/0x1190
> Write of size 4043 at addr ffff888008724eb1 by task kworker/1:1/24
> 
> CPU: 1 PID: 24 Comm: kworker/1:1 Not tainted 6.1.0-rc5-00002-g1adf73218daa-dirty #223
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
> Workqueue: events p9_read_work
> Call Trace:
>  <TASK>
>  dump_stack_lvl+0x4c/0x64
>  print_report+0x178/0x4b0
>  kasan_report+0xae/0x130
>  kasan_check_range+0x179/0x1e0
>  memcpy+0x38/0x60
>  _copy_to_iter+0xd35/0x1190
>  copy_page_to_iter+0x1d5/0xb00
>  pipe_read+0x3a1/0xd90
>  __kernel_read+0x2a5/0x760
>  kernel_read+0x47/0x60
>  p9_read_work+0x463/0x780
>  process_one_work+0x91d/0x1300
>  worker_thread+0x8c/0x1210
>  kthread+0x280/0x330
>  ret_from_fork+0x22/0x30
>  </TASK>
> 
> GUO Zihua (3):
>   9p: Fix write overflow in p9_read_work
>   9p: Remove redundent checks for message size against msize.
>   9p: Use P9_HDRSZ for header size

For entire series:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

I agree with Dominique that patch 1 and 2 should be merged.

>  net/9p/trans_fd.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> ---
> 
> v2:
>   Addition log for debugging similar issues, as well as cleanups according to
>   Dominique's comment.
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
