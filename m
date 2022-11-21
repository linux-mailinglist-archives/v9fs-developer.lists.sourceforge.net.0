Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2B963255C
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 15:16:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox7bA-00021f-Ge;
	Mon, 21 Nov 2022 14:16:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ox7b8-00021O-Uf
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 14:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RzwUXYL+lOes2ybdcf0NZZVm/N58p9fAtL62cIEmTQ8=; b=B27Le4jBJ3xFF/rtBDuhNbwcEo
 rNArfV+lr5COMQUzru/yHKvGC7EZDx+34LwqRk+Xa+DvEaxb954Z9SLgTee8N88AELbo2LgEPszE5
 X2vXZ81HpnhW0h/JDkEZ73e9rwzTlHmhM6+VWzgNH2qB55Zgr+HRadsRwdv9irSKUeSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RzwUXYL+lOes2ybdcf0NZZVm/N58p9fAtL62cIEmTQ8=; b=ZBreVEnDfem817YTQ8tiuFn+TX
 oF+ivSYcaK2l/F+K94LgAl4MtVoVW2BlHEYlDhREIgQ34HIEEG3HhqInS9yF2/+AyYVTNez9RSHPh
 lyOdNjTwzteqcoy6hi2Xdf7G/FzS5+S0wqBhX+bqgkv65ny8cH91KYmSMA1cH8IneNOc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ox7b4-007AI9-OW for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 14:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=RzwUXYL+lOes2ybdcf0NZZVm/N58p9fAtL62cIEmTQ8=; b=LrQQfp2vf+LInWD7Pq23o3xJGr
 DUEtxldzGHAomYP2XolcLqhKbKSnWpTJJlP9m28pm3MlR1hX1kM7yhn2xAFZSea4MP7FJ8UqUop5E
 w5OZHh2vOuH/2PE8QwURiSh1gVZWysiN3bm8ta6I/Xnv7sEQZsRrOTCdA/jDu1C/Wkq6rUAiy/6Ol
 OAvSAxIj0pEetsQ92u1JjNdfWAZ+fkLCrcUUfcLk6VUq9J2jXoVUQa01jrziXw/Z+r8ylSOR8JMHS
 CzskN+efWyyjFT9Nsd/LaN9zKzvGGe4SRW1Hdj5sOgp7oHcoTkI2IJuhxksOuHZIh/E2KfyXKdxGJ
 0wJsNNE1VComS4uJlfk2VaZQlZN7Gsjl9T467w5lE7caRW5Qe8qieoZ+B1hWwNnhGndlDXE+jMICf
 PNbgZM8HRBnL7MaTgOdAqeS5HzoXvZ9N4SaXIrMuLTD0fl9c0FWGQJ9Vf/As64zgJvBQE3n8d4VYM
 c3158o6e92/M2V89Xkhi5tNUt7W/GFNc/qGWWu4WMTHtuoyFkq+cXgjCZSIKkjtA2g5Cm6xRfEQQA
 E473z7aYo/k/mI/R624PSVseVf6KnYhNm05hDUARAPFBghvGjyVVJDWt9zAriVM0OAZgzYvc5K9mP
 N7Q8W+dbcZ9fhupbI6AEyj7UI+PNLlILKPNh5HjB0=;
To: Stefano Stabellini <sstabellini@kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 21 Nov 2022 15:16:10 +0100
Message-ID: <8926859.ZlztnY0qrB@silver>
In-Reply-To: <Y3hADWgV9JeajmfF@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
 <alpine.DEB.2.22.394.2211181713420.1049131@ubuntu-linux-20-04-desktop>
 <Y3hADWgV9JeajmfF@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, November 19,
 2022 3:31:41 AM CET Dominique Martinet
 wrote: [...] > > I made this change and tried the two patches together.
 Unfortunately
 I > > get the following error as soon as I try to [...] 
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
X-Headers-End: 1ox7b4-007AI9-OW
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, November 19, 2022 3:31:41 AM CET Dominique Martinet wrote:
[...]
> > I made this change and tried the two patches together. Unfortunately I
> > get the following error as soon as I try to write a file:
> > 
> > /bin/sh: can't create /mnt/file: Input/output error
> > 
> > 
> > Next I reverted the second patch and only kept this patch. With that, it
> > worked as usual. It looks like the second patch is the problem. I have
> > not investigated further.
> 
> Thanks -- it's now obvious I shouldn't send patches without testing
> before bedtime...
> I could reproduce easily with virtio as well, this one was silly as well
> (>= instead of >). . . With another problem when zc requests get
> involved, as we don't actually allocate more than 4k for the rpc itself.
> 
> If I adjust it to also check with the zc 'inlen' as follow it appears to
> work:
> https://github.com/martinetd/linux/commit/162015a0dac40eccc9e8311a5eb031596ad35e82
> But that inlen isn't actually precise, and trans_virtio (the only
> transport implementing zc rpc) actually takes some liberty with the
> actual sg size to better fit hardwre, so that doesn't really make
> sense either and we probably should just trust trans_virtio at this
> point?
> 
> This isn't obvious, so I'll just drop this patch for now.
> Checking witih msize isn't any good but it can wait till we sort it out
> as transports now all already check this one way or another; I'd like to
> get the actual fixes out first.
> 
> (Christian, if you have time to look at it and take over I'd appreciate
> it, but there's no hurry.)

OK, I'll look at this.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
