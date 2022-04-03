Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3A04F0902
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Apr 2022 13:30:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nayR6-0007ZG-8R; Sun, 03 Apr 2022 11:30:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nayQz-0007YN-TR
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 11:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AdOvAXTsIN9zhwjVlvwewFQq0Hm2uVNJaTJFxYUIOw8=; b=By92zvKmiPQvm15o0KkCmHd9ji
 u0Xra2niZhpYcKjEBrNpoMNbqs6ZjcrCixhTqxXuhBBWt4ymnjBmGJ+oUF2XjbcNQim00mDrvnWRY
 bglqC8fCG22ukxrRd7nDPSDpkQKqQyb/TpzSTITb64UcVojZtBLa06ZyvxtD/pEDfyG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AdOvAXTsIN9zhwjVlvwewFQq0Hm2uVNJaTJFxYUIOw8=; b=UOiHIYsSVNkKgUfp+mRj0ZUuuu
 Dgwoev1fp1+992CGuoPrCP0b/zV5AfcFlFnB8FtW5MK+KFpLtJ99kX9hSuL15ykRSTltbURZwl2Kq
 7NUausBcawwUIvJvW6VXLwHdEZYbeMWv57ySGUGKGgZcidKGwCPR6lgd5XD4SyaMURqE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nayQs-003ssn-OP
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Apr 2022 11:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=AdOvAXTsIN9zhwjVlvwewFQq0Hm2uVNJaTJFxYUIOw8=; b=Cr93xOjuMMGKyzwFH69SA1+IiC
 skkoC+TmV+WOGRgw6lQ8whkai/u5HSYsQ2GnKUtozkZtvh4DrTByFu9h5f4bpaqRiJGHWUSP/8i2h
 NKnXVTjbiD+d1GEBIgoXNQHH02VI/7t9U9EpmlSExmjni3GPsiyWKTqDwyA7A5S4JQ28jO/+UPc2m
 Qc7+APn8sNE/Zjp2WZjGjVmuabSle53xp4/t7dMMtLAs/P7wKFppWmqbnECT5oN/l5wE7QRVXwEoH
 08sVPNp9axgt69tZIJuYF0pqC73C1B5kadQutqfkJpHIZTQ4RHzJpEna/5YfRN91GxT+9ckeRyxoM
 dP1MjufQQNyynmgKm3BUy4z4hz4wLCadRKyxjF+XVRvZfZyF4UQiGDeUYJrFZ1uRlrSDcMAqh7IpE
 TD3ANVoiDw2ethAOAE/AyTY9KEhjIb4aOcAFvh6gOggGbVUO9SCHQwwMXFtE53QEEy+Eh8YWNU8pm
 W1+kx6yory++qZLZO5OyMlfWTQPF+O0GO0+CtE0UePq9JNuydyx+jpR/8UF5tt22oJG3Sma+je5Jl
 DbtSoKnNISwhoGTap7q8yfwPaQfdF0dfpMGyd4lHg0Jr02oOFyvQE0K9fFQmCx/FC5kRIkPrTJCMv
 SLcWr2EP0qdigHR9v0J7qUhiAeyagaaUd2S1TXTeQ=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 03 Apr 2022 13:29:53 +0200
Message-ID: <1953222.pKi1t3aLRd@silver>
In-Reply-To: <YkhYMFf63qnEhDd0@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <8c305df4646b65218978fc6474aa0f5f29b216a0.1640870037.git.linux_oss@crudebyte.com>
 <YkhYMFf63qnEhDd0@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 2. April 2022 16:05:36 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Thu, Dec 30, 2021 at 02:23:18PM +0100:
 > > So far 'msize' was simply used for all 9p message types, w [...] 
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
X-Headers-End: 1nayQs-003ssn-OP
Subject: Re: [V9fs-developer] [PATCH v4 12/12] net/9p: allocate appropriate
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 2. April 2022 16:05:36 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Thu, Dec 30, 2021 at 02:23:18PM +0100:
> > So far 'msize' was simply used for all 9p message types, which is far
> > too much and slowed down performance tremendously with large values
> > for user configurable 'msize' option.
> > 
> > Let's stop this waste by using the new p9_msg_buf_size() function for
> > allocating more appropriate, smaller buffers according to what is
> > actually sent over the wire.
> 
> By the way, thinking of protocols earlier made me realize this won't
> work on RDMA transport...
> 
> unlike virtio/tcp/xen, RDMA doesn't "mailbox" messages: there's a pool
> of posted buffers, and once a message has been received it looks for the
> header in the received message and associates it with the matching
> request, but there's no guarantee a small message will use a small
> buffer...
> 
> This is also going to need some thought, perhaps just copying small
> buffers and recycling the buffer if a large one was used? but there
> might be a window with no buffer available and I'm not sure what'd
> happen, and don't have any RDMA hardware available to test this right
> now so this will be fun.
> 
> 
> I'm not shooting this down (it's definitely interesting), but we might
> need to make it optional until someone with RDMA hardware can validate a
> solution.

So maybe I should just exclude the 9p RDMA transport from this 9p message size 
reduction change in v5 until somebody had a chance to test this change with 
RDMA.

Which makes me wonder, what is that exact hardware, hypervisor, OS that 
supports 9p & RDMA?

On the long-term I can imagine to add RDMA transport support on QEMU 9p side. 
There is already RDMA code in QEMU, however it is only used for migration by 
QEMU so far I think.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
