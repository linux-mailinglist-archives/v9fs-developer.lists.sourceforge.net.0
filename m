Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 646F040F716
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Sep 2021 14:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kuLyzecx/pCvCgnubchorJwA+rt+CM3ZT8uOPAEzhdM=; b=Z3iT7nWY8iO/MkoCYZCUIvLjP
	9R1neAo2B/11TaaTMhuOn/cOHr09PuPD65yi6Jcqmmg2uwpQzP+FZBUD93QQ4lbzvAEtPyi6aaV8J
	3qeuk19HXKohECiQyg+GzPh86YRXKmgv2VJngOqELLvb6VTJ8ktOpEFkUiQ0XAuClPNW8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mRCcA-0003Ie-66; Fri, 17 Sep 2021 12:05:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <linux_oss@crudebyte.com>) id 1mRCc8-0003IV-NJ
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hN7PXduh+4F9HCcwImkhXok2Qq7HXWLR5dTfGzrGPic=; b=fcVPsqz5u8rQKyYOEucwF9x6M1
 ODTstxzFUom4JmCUJHzMHMdV/VxsoVBMye9Tddfmn1gejiomAId2Br1ONT+TIRy5FsFqeCuKRDYuU
 CZ1EsjjzCKObvRCfci2AbScbMssLg7YcU4UBfqAArf0L+u7brYv/lEBHTXthW+Gf9a+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hN7PXduh+4F9HCcwImkhXok2Qq7HXWLR5dTfGzrGPic=; b=FZGExRodNG9yyW9d/gunO1eJfk
 nU8dphjxNn9lND7UqrVIFzYXgdHl5vxCYAzut+SuW7QdFmrqSudlSsewwaKu7/lX/FFFKOwVl13qe
 deuZPoqN/HCqrn4qZklUvB7/lEZdVmMOMvEBRdkr+xHeNoMIO4EoAHmxwlCDeCm8y9Wo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRCc7-00Dl00-SF
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=hN7PXduh+4F9HCcwImkhXok2Qq7HXWLR5dTfGzrGPic=; b=oVnW+udNM9sIU2SCDBSDw6wzV8
 9tGH4VZa+ofwuYMl/zl7RymYxYT3hvoY91w0Wd8rdYrho4hkO65lqeurgG5ZQMnaHeJVeG7MtpE2d
 Wme3ZZENQvQEdqE+pp+MOC4/wDsMizai5QJJ0Hje+/41j/pMSZHLtuVscGXgrT7Dc46g3PysrhGHY
 +cRf8qX5HztCLbN+3wiCe9mVUd3xj02aoZnfXkLj7SfpRL9S2WS2evJMhaDmTItZ5CtsOY++z7MSY
 P3nSYD9Z5IeUZb95VF7Ys691uwTVVt7ZROt/wz2OLcMqA+Rp71i3h8xjEnQ7sovQkpWyR2CXL8MyO
 PDDK59atOsXRyquRnTCJR6LbOTaey64n/MMD/d69JdrBfF961gqUMcCgmqtmRUwwLWukAOpZiyDXh
 8AmPSkBsbipY78c8BCvWUppVKNYcdpYCNGH1Z2TIjgkl8fxEZtClmpZtIbxq73qK4qPm9XAH+w3gu
 2P/gIFyXacED12bprXGO0rRZ8fqDqRJPeueNQ8/J8/4LuJt9iffNEb16K0cxoACz5T4SRTt5uRl7D
 a0bgPAxsFarI8ZT+dwU4sHzbyeTmOvNXKKHaqsNrey13Fw9uXk5DNZ/BHTgDlTxuBNXrCa0byrjeN
 24QFvY9T1ayEDrpju46bqwzA+EoUsEQ5IJ0VQcK1M=;
To: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 17 Sep 2021 14:04:50 +0200
Message-ID: <2915494.F4Y4y7BOdD@silver>
In-Reply-To: <20210916190908.19824be5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
 <20210916190908.19824be5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 17. September 2021 04:09:08 CEST Jakub Kicinski
 wrote: > On Thu, 16 Sep 2021 20:26:08 +0200 Christian Schoenebeck wrote:
 > > This is an initial draft for getting rid of the current 500k 'm [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mRCc7-00Dl00-SF
Subject: Re: [V9fs-developer] [PATCH 0/7] net/9p: remove msize limit in
 virtio transport
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
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 17. September 2021 04:09:08 CEST Jakub Kicinski wrote:
> On Thu, 16 Sep 2021 20:26:08 +0200 Christian Schoenebeck wrote:
> > This is an initial draft for getting rid of the current 500k 'msize'
> > limitation in the 9p virtio transport, which is currently a bottleneck for
> > performance of Linux 9p mounts.
> > 
> > This is a follow-up of the following series and discussion:
> > https://lore.kernel.org/all/28bb651ae0349a7d57e8ddc92c1bd5e62924a912.16307
> > 70829.git.linux_oss@crudebyte.com/T/#eb647d0c013616cee3eb8ba9d87da7d8b1f47
> > 6f37
> > 
> > Known limitation: With this series applied I can run
> > 
> >   QEMU host <-> 9P virtio <-> Linux guest
> > 
> > with up to 3 MB msize. If I try to run it with 4 MB it seems to hit some
> > 
> > limitation on QEMU side:
> >   qemu-system-x86_64: virtio: too many write descriptors in indirect table
> > 
> > I haven't looked into this issue yet.
> > 
> > Testing and feedback appreciated!
> 
> nit - please run ./scripts/kernel-doc -none on files you're changing.
> There seems to be a handful of warnings like this added by the series:
> 
> net/9p/trans_virtio.c:155: warning: This comment starts with '/**', but
> isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Sure, I'll take care about that in v2. Thanks!

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
