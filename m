Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F2F6015E4
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Oct 2022 20:03:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1okUSq-0004Z1-JZ;
	Mon, 17 Oct 2022 18:03:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1okUSo-0004Yt-A2
 for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Oct 2022 18:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FU3Btm3EGBwXY4LS7OhQ2d8cTy/b/4HQKovRbcKBjos=; b=aqJC/JkdTwaTRGTz1N93AjpX4U
 UuwRwnTf6SV4f6AsnOaYbySIsh4J+t9HNe6oTNqKv8T1WLNubLoVHg383ZjWvmvKk2O7FyU5qttAo
 641T1+VmV+Ph/gk436tDa5lMzf0qAPb5oea/8RWsLQuQWHLy796NH4gX/pIJ6majBIuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FU3Btm3EGBwXY4LS7OhQ2d8cTy/b/4HQKovRbcKBjos=; b=ZCSntJ+Y79FuMG0dc9k9f4/7FY
 MyKTb1BM+N80nPRA6/ND1YDlgbgjkC3/97axSBhGfTe6edKCzKbLKXAhPNKO67Vb8mzWs05m4ZxM5
 WsJSxk2EEduCQdg+aZFZaErlDMj0r5twgQBLmHpz6V2XP1YU7yacfxkaLh3OTth3c1Qc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1okUSj-0001mS-Ic for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Oct 2022 18:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=FU3Btm3EGBwXY4LS7OhQ2d8cTy/b/4HQKovRbcKBjos=; b=YSx/KHgYLgMvLP92fQqt+LbqTm
 oqJ27ciBM3x8dNSImEPv5MwHeucHHzZZe7/+jmm0N1XwRvo1WGd7UadkAKUl2GHLHWACgps45uxkB
 NcOse+D8Zoz0Fuz+EfvKX+cno4JILAqGZ62QebfEkIyf+O5spjYCCaYGX9aqCd1p/znDN2Blfd1Tv
 SoRK94PsA31EzF6d9pWdnkePt8rAXi7OQVF6uEBNlD4OBdVdknSqHOosA/R1jD/LcRcBIIKtkPGc8
 0mOstPbsyC1TNSEtWqyrsHVa4lZP1GZbop3aBW0o6o4cZpOpQnurDKjgDM5NZXSv6U937D6GC8L8O
 7nal5D+PuliyNChsjus11wi+Yh/EZxqDHaZD3JDQXBNC9UL/Bc/lTPUsWyEePPg5Qvw+WZRVHy9Nb
 z2VHF+nib+ZYXZWujt4jjDReaPrrC3TF0LyzoumgcZbx0eTzqEBtW0pNzWiZHJ8Z6/6cQQz2iAyMt
 W1DczxcPrWz3HvPRGmdVHTu8CAGW5+GA1hXQ/MPtNebBXjMtMv76t2S9oXwShlb4bUci313YjKafz
 e/YrkqHNXaxXSRjnnJKVEBElnIY88BXfLuP03KZIdlQHrmmNZoUUXyazvJbMw1nHU4SEbXvvn1awb
 62as9NgYYlckuc68u4ruBqlGIua/uN9yjO3Ywj17I=;
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Mon, 17 Oct 2022 20:03:28 +0200
Message-ID: <4858768.YlS1rbApJJ@silver>
In-Reply-To: <Y02Kz2xuntFrKXhV@nvidia.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <3f51590535dc96ed0a165b8218c57639cfa5c36c.1657920926.git.linux_oss@crudebyte.com>
 <Y02Kz2xuntFrKXhV@nvidia.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, October 17, 2022 7:03:11 PM CEST Jason Gunthorpe
 wrote: > On Fri, Jul 15, 2022 at 11:33:56PM +0200, Christian Schoenebeck
 wrote: > > So far 'msize' was simply used for all 9p message types, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1okUSj-0001mS-Ic
Subject: Re: [V9fs-developer] [PATCH v6 11/11] net/9p: allocate appropriate
 reduced message buffers
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Nikolay Kichukov <nikolay@oldum.net>,
 Stefano Stabellini <stefano.stabellini@xilinx.com>,
 Leon Romanovsky <leonro@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, October 17, 2022 7:03:11 PM CEST Jason Gunthorpe wrote:
> On Fri, Jul 15, 2022 at 11:33:56PM +0200, Christian Schoenebeck wrote:
> > So far 'msize' was simply used for all 9p message types, which is far
> > too much and slowed down performance tremendously with large values
> > for user configurable 'msize' option.
> > 
> > Let's stop this waste by using the new p9_msg_buf_size() function for
> > allocating more appropriate, smaller buffers according to what is
> > actually sent over the wire.
> > 
> > Only exception: RDMA transport is currently excluded from this message
> > size optimization - for its response buffers that is - as RDMA transport
> > would not cope with it, due to its response buffers being pulled from a
> > shared pool. [1]
> > 
> > Link: https://lore.kernel.org/all/Ys3jjg52EIyITPua@codewreck.org/ [1]
> > Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> > ---
> > 
> >  net/9p/client.c | 42 +++++++++++++++++++++++++++++++++++-------
> >  1 file changed, 35 insertions(+), 7 deletions(-)
> 
> It took me a while to sort out, but for any others - this patch is
> incompatible with qemu 5.0. It starts working again after this qemu
> patch:
> 
> commit cf45183b718f02b1369e18c795dc51bc1821245d
> Author: Stefano Stabellini <stefano.stabellini@xilinx.com>
> Date:   Thu May 21 12:26:25 2020 -0700
> 
>     Revert "9p: init_in_iov_from_pdu can truncate the size"
> 
>     This reverts commit 16724a173049ac29c7b5ade741da93a0f46edff7.
>     It causes https://bugs.launchpad.net/bugs/1877688.
> 
>     Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
>     Reviewed-by: Christian Schoenebeck <qemu_oss@crudebyte.com>
>     Message-Id: <20200521192627.15259-1-sstabellini@kernel.org>
>     Signed-off-by: Greg Kurz <groug@kaod.org>
> 
> It causes something like this:
> 
> # modprobe ib_cm
> qemu-system-x86_64: VirtFS reply type 117 needs 17 bytes, buffer has 17,
> less than minimum

9p server in QEMU 5.0 was broken by mentioned, reverted QEMU patch, and it was 
already fixed in stable release 5.0.1.

It is not that recent kernel patch is breaking behaviour, but it triggers that 
(short-lived) QEMU bug more reliably, as 9p client is now using smaller 
messages more often. But even without this kernel patch, you would still get a 
QEMU hang with short I/O. So it is not a good idea to continue using that 
particular, old QEMU version, please update at least to QEMU 5.0.1.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
