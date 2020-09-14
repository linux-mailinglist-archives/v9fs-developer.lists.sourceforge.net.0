Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 153D9268F80
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 17:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3d3X1sLybfKAzsCcuM+Y9lomAQ7xkiQ8PzrPUm7JVho=; b=OAYtVFqY15iUCVLH3W/HaIcIi
	aLAy4ZmzcLdbmSb++ksrHuEl0s0YKDxTU9z9hqa8QyeRkkj1iAmb+KFmxEqfpkBgJ5zB7vTwC99Uw
	UiCch8TPojb83enhIiEo7faJlynzO7/pFcTebFNrObkb2nMeDVUNTltfhtjT8/hudzW4U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHqGY-0007cF-81; Mon, 14 Sep 2020 15:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1kHqGX-0007c4-8E
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IiQzWNzedauPyLVA9z0iBW2QLEA08tfWMzr6ARLoZVE=; b=YpRL8kfAjtB47UlYpX/YJ3Ay3h
 J+peqHV0+ySV5mRyoFZULD7MRlyuoF/yyx0AKVRd47I9ZOeIRLmY0TylUBIZ7T+z/aazQMi+j/0A0
 soygJ5wDa1WRomIGxaonG7PtKylXr1tIQ5kVIbFB8LnWgW3djnTFQ1dxhq8az+4u72V4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IiQzWNzedauPyLVA9z0iBW2QLEA08tfWMzr6ARLoZVE=; b=TQU0UjwQA4dukmDPpM0RDdjkZI
 6/z6UwO7vxB7RHCcGiFhsdSzU96ybznE+Z4A5RpHZbkRxEbXrxDvTWkUz8r56DZhfqEL+3OSXudY6
 GtbJHxyfuat9ScqkgG07G5pFpOEUYv0pKD4cYMf8NqUKOexgFtq/N6Qsmd2yxgJJglGo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHqGR-008YFu-Np
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=IiQzWNzedauPyLVA9z0iBW2QLEA08tfWMzr6ARLoZVE=; b=A0G3RgALAwLHAmd65ENtiXIOSX
 v1OiuZ6rUFL2gTm+ku2xG07l+3U/1YCn1FrIYsJ3J8hDAgHTmeFzmcH2ydR7iojrt9/x3gh0jacjm
 8NWiQ77JDB/Wszwd8MaauHBL8AuvsZROohRBVhrjy37WOiDwu6fqxIkfhK3aL6rGqIMt7ypTUFoiK
 7GQ9MxQYIeuc/43bUchyXLBnAksuso2WpeU0viQkDXbUI4ML1/4LhZfK9LZqtLX1P90tynmM2nIlz
 gjGGRb0mnJnk+DmpMXOE/agQCkQd7GpbiUP5fCwYL+g61o/s1HC/014bgqx8mAguACXzkyiAmjvWz
 UeDN0Lgb2v7iQ+7fCeA6pZV5up65iUXM/EUCq/uktZgL3X13a1GqBEDEQ4vz6iBkS3cazN5NtswnR
 +DhhNa5d253RppT1/sU7dAJ0eo5QqcpV6spCbz9hrGnDo2lClefn6i41oE6/YFkBgeeZliy0rMwyK
 zgmC6o1V2SU7QgT/wL2Tr/0wcZjJRu7HahWOedcbiDlu4xfcNLFmkvqwFYbSAYpQHitS99scsO25t
 7Ejgcn5c378kpx42qkxwPjgQbbF6rUuMrVm+/FSgkDHs92hEgjPH04hpbynK/cR1EP5t+vPW9bzZR
 P7RpXvrP1TYZ6UlEoAD4tFdRYCogoSfsKSi/KnR6c=;
To: Greg Kurz <groug@kaod.org>
Date: Mon, 14 Sep 2020 17:19:20 +0200
Message-ID: <2037087.W39pGsgtbe@silver>
In-Reply-To: <20200914144325.7928dbd3@bahia.lan>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <2828347.d8MXItvaOC@silver> <20200914144325.7928dbd3@bahia.lan>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nongnu.org]
X-Headers-End: 1kHqGR-008YFu-Np
Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
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
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 14. September 2020 14:43:25 CEST Greg Kurz wrote:
> > So yes, looks like this also requires changes to the 9pfs 'local' fs
> > driver on QEMU side:
> > https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.html
> > 
> > Eric, Greg, would there be an easy way to establish QEMU test cases
> > running
> > the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases for
> > QEMU which can only use the 'synth' driver, which is not helpful for such
> > kind of issues.
> 
> I guess it's possible to introduce new qtests that start QEMU with
> -fsdev local instead of -fsdev synth... I haven't looked in a while
> though, so I won't comment on "easy way" ;-)

Makes sense, and I considered that approach as well.

The question is the following: is there a QEMU policy about test cases that 
create/write/read/delete *real* files? I.e. should those test files be written 
to a certain location, and are there measures of sandboxing required?

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
