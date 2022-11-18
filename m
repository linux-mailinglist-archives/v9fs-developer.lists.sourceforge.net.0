Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F062EE0C
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 08:01:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovvNb-0001qZ-LV;
	Fri, 18 Nov 2022 07:01:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ovvNA-0001qO-P4
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 07:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A1UVBsOVPw67xRYnFBpe4rf5zDWclcTyExIeSFPDtWs=; b=OVXEKLZ6Xh8LA05c4TGU6EvCyK
 BzXGV9z1O2hHROSH4uDYAN+3/nMRgK2fCY1f0e+Nd7H3vvnxO1NRUNwA40UwKpKfn32iAcx8/bTbQ
 ZzuKnzBFH5xamubA27xDe5omtZZYg7/E3fa+xC4XmoJs2chsnBIhFTc8R4Ha7sAEJhBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A1UVBsOVPw67xRYnFBpe4rf5zDWclcTyExIeSFPDtWs=; b=SPI+zx1FDyMk9rmquHQdp05Eac
 +ZnSCsIy9GU6Zn+CNP+wGYRrRGdCHVfS68qvD/aIbpIYY6BzZLWwEQ/D2WLX7ABrt2PyKB6XWjytA
 BsKHbYmKYodClOewGGPFQlCPdrValpYP0VGnp1SfJl78bxJzO8LlcvfXSqz2htRDY4R8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovvN6-0004Vl-9i for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 07:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668754861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A1UVBsOVPw67xRYnFBpe4rf5zDWclcTyExIeSFPDtWs=;
 b=XhtDYqovGc2jIeWU5deYCJw8Ew32CtCiC3m660iHDH4r8p6kpoI0f0+4tsbEb9GsWXtpSl
 F7eIxEDw6I8fdbSGkSdjBtxNvENcKBMdqhdfQVSQbUyqTI5h9LDFykYvbeLjWF0COSaW7x
 0CNabsn4UUQwpbXZPMUbTsTxLai/xTA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-k_snK5VINPap4V1eT5omIw-1; Fri, 18 Nov 2022 02:00:57 -0500
X-MC-Unique: k_snK5VINPap4V1eT5omIw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEB923C0CD55;
 Fri, 18 Nov 2022 07:00:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0FC7D2027062;
 Fri, 18 Nov 2022 07:00:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <54854a71-5856-f80f-d8cb-ab75b826ba5f@huawei.com>
References: <54854a71-5856-f80f-d8cb-ab75b826ba5f@huawei.com>
 <166869954095.3793579.8500020902371015443.stgit@warthog.procyon.org.uk>
To: "zhangpeng (AS)" <zhangpeng362@huawei.com>
MIME-Version: 1.0
Content-ID: <4193089.1668754852.1@warthog.procyon.org.uk>
Date: Fri, 18 Nov 2022 07:00:52 +0000
Message-ID: <4193090.1668754852@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: zhangpeng (AS) <zhangpeng362@huawei.com> wrote: > Thanks for
 your advice. The size needs to be able to hold up to 255 to > handle larger
 keys. After testing, this patch works fine. Can I put you down as a Reviewed-by
 or Tested-by? 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ovvN6-0004Vl-9i
Subject: Re: [V9fs-developer] [PATCH] fscache: fix OOB Read in
 __fscache_acquire_volume
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

zhangpeng (AS) <zhangpeng362@huawei.com> wrote:

> Thanks for your advice. The size needs to be able to hold up to 255 to
> handle larger keys. After testing, this patch works fine.

Can I put you down as a Reviewed-by or Tested-by?

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
