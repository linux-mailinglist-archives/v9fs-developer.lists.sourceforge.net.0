Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0FB693FF6
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 09:49:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRUWr-0007I9-Jt;
	Mon, 13 Feb 2023 08:49:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pRUWo-0007I1-36
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 08:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dmKsIQtcDXxB/07EL/dm6XnEvVdKs1xrHfOKvFQd3VA=; b=XUTWxOZTBKjyjKZBbwP+kYJWWM
 a66lxlHhVd+CRwjSKmQZv8Vok0MauSjRUf+hJ1GrUY4xwOK0+0k8xI15hbxXVmUDPeo5cTNtYTFzY
 vG4y7Xub2mzPqCidXeeHaDuARpGzDrrF+wOpE5W2rY2DM9gNVJreqqateil+3YqIS6x0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dmKsIQtcDXxB/07EL/dm6XnEvVdKs1xrHfOKvFQd3VA=; b=PTkjdORQp1iU3BuKNQwXU7TiAy
 sHq9dU50JWjzLu92LMV4VJGq7PO6FF8rFc8fQr/asbhQf626kK1OP8IgVEhDNiCs/q9lIzE4p1iOC
 tI8M5d6Mphf4J3uHAAoo1PJJ+RndfDRakEIFH2sn/YfytOVvnXGHyPwyKuaeP2m42Kgk=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRUWg-002bHe-Si for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 08:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=dmKsIQtcDXxB/07EL/dm6XnEvVdKs1xrHfOKvFQd3VA=; b=ccNM44+AmZJbEZaSzeH3uyXFUr
 U4j8o+L0+5vt4HW6TiqrDBnEbRvclis95p8ITy/5vP2kennhqyJ7iw/PR90gPH8BaMVrvhZnlHW9c
 n/59e902LZHvsP+huuh92QcwoSNGCb06yIG9QDhTslOpvnXkwALHByNzrIbxVb0b5/0Y5J+2knu4S
 csOWb8zJal30vv95QvZlhgrUX/Cll8pA5gq9hsPpDojG1ZSO22zzlB1xNE8tAzUmf2XQbDQc6jUbA
 Gmq+PloqBtD7ba6tJ4vvENbopsUn0f30eBnO5PvalXt2CM2YeIc8G2joUwqmnVMZJHfUYqr2yOjrF
 3/bcewPPDoVoVFZaVzd6VrgPE2G8LmWzoi2npiimkNwvGsRdAIiE963t0krnBAsCEm9oak+/k+XSH
 7cJ4DM0/5MZ5NgvdcRdgqc9FxWa29tNVWuZ621ywL+Pnq8u/RsB6B1nnVMdgDgLalCq7zUVzQWApI
 n8xdggjxsZ6c7rdvr4vC7hq5ey2Hc9eh3KYYCmZfyT8+Yp0WhLNVnv1TgA4WYv+aEIiceUuQDcmKS
 uFdm80//7eb2LjxKgS4vQ69v8IT4+tLwo7+TH4dGiVEMTJzDtD3MSRxzZyL0Aa+PYgvkfQQ1yPa0R
 lEmqfx6G3rtr+IdjXGcrcp488qc1enJyI4wN4vNz4=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 13 Feb 2023 09:49:21 +0100
Message-ID: <7353605.ZQh82CZjP3@silver>
In-Reply-To: <CAFkjPTn=6+X1=b4sfAd8LrZ2xuJF_4hsDbUmFZtifpROTTtB9g@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <CAFkjPTkqHs091FeePjZsPS8eNQoPY+HJiW1nS7KTDgEEue9XFQ@mail.gmail.com>
 <CAFkjPTn=6+X1=b4sfAd8LrZ2xuJF_4hsDbUmFZtifpROTTtB9g@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, February 13,
 2023 2:01:22 AM CET Eric Van Hensbergen
 wrote: > (sorry - changes are in the for-next branch, need to do some merging
 > into my v9fs-devel branch) > > On Sun, Feb 12, 2023 at 7 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pRUWg-002bHe-Si
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, February 13, 2023 2:01:22 AM CET Eric Van Hensbergen wrote:
> (sorry - changes are in the for-next branch, need to do some merging
> into my v9fs-devel branch)
> 
> On Sun, Feb 12, 2023 at 7:00 PM Eric Van Hensbergen <ericvh@gmail.com> wrote:
> >
> > Okay, after much thrashing about, I think I figured out what was going
> > wrong -- seems filemap_write_and_wait didn't quite do what I thought
> > it does when the superblock isn't marked as synchronous (which it used
> > to be if caches weren't enabled).  In any case, I replaced the
> > filemap_write_and_wait writeback flushes with something a bit heavier
> > weight and it seemed to get rid of the problem for my test cases.  I
> > will be doing some more testing, but if you get a chance see if it
> > gets rid of your problems as well.

I will definitely test it out! Are you going to post a v4? Otherwise just drop
me a note once it is ready to grab from which of your repo branches. Thanks!

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
